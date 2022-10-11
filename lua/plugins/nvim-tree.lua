-----------------------------------------------------------
-- Nvim-tree configuration file
-----------------------------------------------------------

-- This file can be loaded by calling `require('module_name')` from your
-- `init.lua`

local g = vim.g

-- g.nvim_tree_= 1 -- 0 by default, will enable folder and file icon highlight for opened files/directories.

require('nvim-tree').setup{
      disable_netrw       = true,
      hijack_netrw        = true,
      open_on_setup       = true,
      open_on_tab = true,
      ignore_ft_on_setup  = {},
      -- sync_root_with_cwd = true,
      renderer = {
        highlight_opened_files = "true",
      },
      git = { 
        ignore = true,
      },
      open_on_tab         = false,
      hijack_cursor       = false,
      update_cwd          = false,
      -- lsp_diagnostics     = true,
      update_focused_file = {
        enable      = false,
        update_cwd  = false,
        ignore_list = {}
      },
--     diagnostics = {
--             enable = true,
--     },
      filters = {
	      dotfiles = true,
      },
      system_open = {
        cmd  = nil,
        args = {}
      },
      view = {
        width = 30,
        height = 30,
        side = 'left',
        mappings = {
          custom_only = false,
          list = {}
        }
      }
}

vim.api.nvim_create_autocmd("BufEnter", {
  nested = true,
  callback = function()
    if #vim.api.nvim_list_wins() == 1 and vim.api.nvim_buf_get_name(0):match("NvimTree_") ~= nil then
      vim.cmd "quit"
    end
  end
})
