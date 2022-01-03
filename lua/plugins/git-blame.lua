-----------------------------------------------------------
-- git-blame configuration file
-----------------------------------------------------------
--

vim.g.gitblame_enabled = false

vim.api.nvim_set_keymap('n', '<leader><leader>gb', ':GitBlameToggle<CR>', {noremap = true, silent = true})
