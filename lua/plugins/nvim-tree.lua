-----------------------------------------------------------
-- Nvim-tree configuration file
-----------------------------------------------------------

-- This file can be loaded by calling `require('module_name')` from your
-- `init.lua`

local g = vim.g

g.nvim_tree_hide_dotfiles = 1          -- 0 by default, this option hides files and folders starting with a dot `.`
g.nvim_tree_gitignore = 1              -- 0 by default
g.nvim_tree_auto_open = 1              -- 0 by default, opens the tree when typing `vim $DIR` or `vim`
g.nvim_tree_auto_close = 1             -- 0 by default, closes the tree when it's the last window
g.nvim_tree_auto_open = 1              -- 0 by default, opens the tree when typing `vim $DIR` or `vim`
g.nvim_tree_highlight_opened_files = 1 -- 0 by default, will enable folder and file icon highlight for opened files/directories.
