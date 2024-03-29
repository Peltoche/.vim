-----------------------------------------------------------
-- Telescope configuration file
-----------------------------------------------------------


local actions = require('telescope.actions')
local telescope = require('telescope')
telescope.setup{
  defaults = {
    mappings = {
      i = {
        ["<esc>"] = actions.close
      },
    },
  }
}

-- telescop shortcuts

vim.api.nvim_set_keymap('n', '<leader>F', [[<cmd>lua require('telescope.builtin').live_grep()<cr>]], { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>f', [[<cmd>lua require('telescope.builtin').find_files()<cr>]], { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>gc', [[<cmd>lua require('telescope.builtin').git_commits()<cr>]], { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>fb', [[<cmd>lua require('telescope.builtin').buffers()<cr>]], { noremap = true, silent = true})
