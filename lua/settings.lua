-----------------------------------------------------------
-- Neovim settings
-----------------------------------------------------------

-- This file can be loaded by calling `require('module_name')` from your
-- init.lua
-----------------------------------------------------------
-- Neovim API aliases
-----------------------------------------------------------

local cmd = vim.cmd  -- to execute Vim commands e.g. cmd('pwd')
local g = vim.g      -- global variables
local o = vim.o      -- global options
local w = vim.w      -- windows-scoped options
local b = vim.b      -- buffer-scoped options


-----------------------------------------------------------
-- Tests
-----------------------------------------------------------
o.wrap = false -- Do not wrap lines


-----------------------------------------------------------
-- General
-----------------------------------------------------------
o.mouse='a' -- Enable the mouse support
o.clipboard = 'unnamedplus' -- copy/paste to system clipboard
b.swapfile = false -- Do not allow the creation of file ~.swap~
o.whichwrap='h,l'   -- Make h and l wrap around the start and the end of lines
o.list = true -- Show some invisible characters
b.noswapfile = true
g.noswapfile = true

o.undofile = true --Save undo history
o.shortmess = 'a' 
g.noswapfile = true

-- UI
o.syntax='enable'       -- Activate the syntax highlight
vim.wo.number = true         -- Print the line number
o.showmatch = true      -- Show briefly the matching bracket if on screen
o.cursorline = true     -- Color the cursor line
o.sidescrolloff = 8     -- Columns of context
b.scrolloff = 3         -- Lines of context

-- Searching
o.hlsearch = true      -- highlight search match
o.incsearch = true
o.ignorecase = true    -- Ignore case
o.smartcase = true     -- Do not ignore case with capitals

-- Status line
o.wildmode = 'list:longest,full'  -- Command-line completion mode
o.ruler = true      -- Show the line and column number inside the status line 

-- remove whitespace on save
-- cmd([[au BufWritePre * :%s/\s\+$//e]])

-----------------------------------------------------------
-- Tab, indent
-----------------------------------------------------------
b.linebreak = true
o.tabstop = 2           -- Number of spaces tabs count for
o.shiftwidth = 2        -- Size of an indent
o.softtabstop = 2       -- Number of space a <Tab> count during editing
o.expandtab = true      -- Convert tabs in spaces in insert mode
o.smartindent = true    -- autoindent new lines


-----------------------------------------------------------
-- Memory, CPU
-----------------------------------------------------------
o.hidden = true         -- enable background buffers
o.history = 100         -- remember n lines in history
o.lazyredraw = true     -- faster scrolling
b.synmaxcol = 240       -- max column for syntax highlight


-----------------------------------------------------------
-- Colorscheme
-----------------------------------------------------------
o.termguicolors = true          -- enable 24-bit RGB colors
cmd([[colorscheme badwolf]])    -- set colorscheme


-----------------------------------------------------------
-- Autocompletion
-----------------------------------------------------------
o.completeopt = 'menuone,noselect' -- completion options


---- Highlight on yank
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})
