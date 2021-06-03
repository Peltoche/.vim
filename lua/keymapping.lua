-----------------------------------------------------------
-- Keymapping
-----------------------------------------------------------

-- This file can be loaded by calling `require('module_name')` from your
-- init.lua

local map = vim.api.nvim_set_keymap

-- Press kk to exit
map('i', 'kk', '<Esc>', {noremap = true})

-- Autocomplete with Tab
map('i', '<Tab>', 'v:lua.tab_complete()', {expr = true})
map('s', '<Tab>', 'v:lua.tab_complete()', {expr = true})
map('i', '<S-Tab>', 'v:lua.s_tab_complete()', {expr = true})
map('s', '<S-Tab>', 'v:lua.s_tab_complete()', {expr = true})

-- Don't use arrow keys
map('', '<up>', '<nop>', {noremap = true})
map('', '<down>', '<nop>', {noremap = true})
map('', '<left>', '<nop>', {noremap = true})
map('', '<right>', '<nop>', {noremap = true})

-- Fast quiting
map('n', '<leader>q', ':q<cr>', {noremap = true})
map('n', '<leader>Q', ':q!<cr>', {noremap = true})

-- Fast Esc
map('i', 'ghh', '<Esc>', {noremap = true})
map('v', 'ghh', '<Esc>', {noremap = true})

-- Fast saving
map('n', '<leader>w', ':w<cr>', {noremap = true, silent = true})

-- Quick shifting in visual mod
map('v', '>', '>gv', {noremap = true, silent = true})
map('v', '<', '<gv', {noremap = true, silent = true})

-- Split
map('n', '<leader>vs', ':vsplit<cr>', {noremap = true, silent = true})
map('n', '<leader>hs', ':split<cr>', {noremap = true, silent = true})

-- Indent the all file
map('n', '<leader>=', 'ggVG=', {noremap = true, silent = true})

--Remap for dealing with word wrap
map('n', 'k', "v:count == 0 ? 'gk' : 'k'", { noremap=true, expr = true, silent = true})
map('n', 'j', "v:count == 0 ? 'gj' : 'j'", {noremap= true, expr = true, silent = true})

-- Move around splits using <leader> + {h,j,k,l}
map('n', '<leader>h', '<C-w>h', {noremap = true, silent = true})
map('n', '<leader>j', '<C-w>j', {noremap = true, silent = true})
map('n', '<leader>k', '<C-w>k', {noremap = true, silent = true})
map('n', '<leader>l', '<C-w>l', {noremap = true, silent = true})

-- Clear search highlighting
map('n', '//', ':nohlsearch<CR>:echo \'Search highlight cleared\'<CR>', {noremap = true, silent = true})


-- telescop shortcuts

map('n', '<leader>F', '<cmd>lua require(\'telescope.builtin\').live_grep()<cr>', { noremap = true })
map('n', '<leader>f', '<cmd>lua require(\'telescope.builtin\').find_files()<cr>', { noremap = true })

-- nvim-tree shortcuts
map('n', '<leader>-', ':NvimTreeToggle<CR>', {noremap = true, silent = true})
map('n', '<leader>_', ':NvimTreeRefresh<CR>', {noremap = true, silent = true})
