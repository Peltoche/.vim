-----------------------------------------------------------
-- Neovim LSP configuration file
-----------------------------------------------------------

local nvim_lsp = require('lspconfig')
local cmd = vim.cmd
local g = vim.g

-- plugin: nvim-lspconfig
--- For language server setup see: https://github.com/neovim/nvim-lspconfig

require'lspconfig'.eslint.setup{}
require'lspconfig'.jsonls.setup{}

-- Go -> gopls
-- https://github.com/neovim/nvim-lspconfig/blob/master/CONFIG.md#gopls
require('lspconfig').gopls.setup{
	cmd = {"gopls", "serve"},
	settings = {
		gopls = {
			expandWorkspaceToModule = false,
			directoryFilters = {"-vendor"},
			memoryMode = "DegradeClosed",

			-- Test
			experimentalPostfixCompletions = true,
			analyses = {
				unusedparams = true,
				shadow = true,
			},
			staticcheck = true
		},
	},
}

-- HTML, CSS, JavaScript --> vscode-html-languageserver
--- https://github.com/neovim/nvim-lspconfig/blob/master/CONFIG.md#html
nvim_lsp.html.setup {
	capabilities = capabilities,
}


-----------------------------------------------------------
-- Configure the shortcuts
-----------------------------------------------------------
-- Use an on_attach function to only map the following keys 
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
	local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
	local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end


	-- Enable completion triggered by <c-x><c-o>
	buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')


	-- Mappings.
	local opts = { noremap=true, silent=true }

	-- See `:help vim.lsp.*` for documentation on any of the below functions
	buf_set_keymap('n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
	buf_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
	buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
	buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
	buf_set_keymap('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
	buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
	buf_set_keymap('n', '<leader>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
	buf_set_keymap('n', '<leader>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
	buf_set_keymap('n', '<leader>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
	buf_set_keymap('n', '<leader>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
	buf_set_keymap('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
	buf_set_keymap('n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
	buf_set_keymap('n', '<leader>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
	buf_set_keymap('n', '<leader><leader>k', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
	buf_set_keymap('n', '<leader><leader>j', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
	-- buf_set_keymap('n', '<space>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
	buf_set_keymap("n", "<leader>=", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)

end

-- Use a loop to conveniently call 'setup' on multiple servers and
-- map buffer local keybindings when the language server attaches
-- local servers = { "gopls", "rust_analyzer", "bashls", "pyright", "clangd", "eslint"}
local servers = { "gopls", "rust_analyzer", "bashls", "pyright", "clangd"}
for _, lsp in ipairs(servers) do
	nvim_lsp[lsp].setup { 
		on_attach = on_attach,
		flags = {
			debounce_text_changes = 150,
		}
	}
end


-----------------------------------------------------------
-- Helper for the go imports
-----------------------------------------------------------
function goimports(timeout_ms)
	local context = { source = { organizeImports = true } }
	vim.validate { context = { context, "t", true } }

	local params = vim.lsp.util.make_range_params()
	params.context = context

	-- See the implementation of the textDocument/codeAction callback
	-- (lua/vim/lsp/handler.lua) for how to do this properly.
	local result = vim.lsp.buf_request_sync(0, "textDocument/codeAction", params, timeout_ms)
	if not result or next(result) == nil then return end
	local actions = result[1].result
	if not actions then return end
	local action = actions[1]

	-- textDocument/codeAction can return either Command[] or CodeAction[]. If it
	-- is a CodeAction, it can have either an edit, a command or both. Edits
	-- should be executed first.
	if action.edit or type(action.command) == "table" then
		if action.edit then
			vim.lsp.util.apply_workspace_edit(action.edit)
		end
		if type(action.command) == "table" then
			vim.lsp.buf.execute_command(action.command)
		end
	else
		vim.lsp.buf.execute_command(action)
	end
end



-- let g:lsp_format_sync_timeout = 1000
--[[ autocmd! BufWritePre *.rs,*.go call execute('LspDocumentFormatSync')
autocmd! BufWritePre *.rs,*.go call execute('goimports(1000)') ]]

-----------------------------------------------------------
-- Configure the auto run
-----------------------------------------------------------
-- augroups don't have an interface yet
cmd('au BufWritePre *.go lua goimports(1000)')
cmd('au BufWritePre *.go lua vim.lsp.buf.formatting_sync()')
