-----------------------------------------------------------
-- Nvim-tree configuration file
-----------------------------------------------------------

-- This file can be loaded by calling `require('module_name')` from your
-- `init.lua`

local g = vim.g

g.nvim_tree_highlight_opened_files = 1 -- 0 by default, will enable folder and file icon highlight for opened files/directories.

require('nvim-tree').setup{
      disable_netrw       = true,
      hijack_netrw        = true,
      open_on_setup       = true,
      ignore_ft_on_setup  = {},
      update_to_buf_dir   = {
        enable = true,
        auto_open = true,
      },
      git = {
	ignore = 1,
      },
      auto_close          = true,
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
        auto_resize = true,
        mappings = {
          custom_only = false,
          list = {}
        }
      }
}
