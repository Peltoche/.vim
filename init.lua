
-----------------------------------------------------------
-- Plugins
-----------------------------------------------------------

vim.cmd [[packadd packer.nvim]]

require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'


  -- Style
  use 'sjl/badwolf'                       -- Theme
  use 'kyazdani42/nvim-web-devicons'      -- Icons
  use 'rodjek/vim-puppet'                 -- For Puppet syntax highlighting

  -- Utilities
  use 'ethanholz/nvim-lastplace'          -- Reopen at your last edit position
  use 'lewis6991/gitsigns.nvim'           -- Show the git modification into the sign bar
  use 'nvim-lua/lsp-status.nvim'          -- Show LSP informations inside the statusline
  use 'b3nj5m1n/kommentary'               -- Comments
  use 'windwp/nvim-autopairs'             -- Autopairs

  -- Syntax tree
  use 'nvim-treesitter/nvim-treesitter'   -- Syntax tree
  use 'nvim-treesitter/nvim-treesitter-textobjects' -- Additional textobjects for treesitter

  -- File explorer
  use 'kyazdani42/nvim-tree.lua'          -- file-explorer


  -- File explorer with telescope
  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'

  -- Autocomplete
  use 'neovim/nvim-lspconfig' -- Collection of configurations for built-in LSP client
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
  use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
  use 'L3MON4D3/LuaSnip' -- Snippets plugin  

  use 'kosayoda/nvim-lightbulb'
  use 'antoinemadec/FixCursorHold.nvim'

  use 'f-person/git-blame.nvim'
end)

-----------------------------------------------------------
-- Import Lua modules
-----------------------------------------------------------
require('settings')         -- settings
require('keymapping')       -- keymapping

require('plugins/gitsigns')
require('plugins/kommentary')
require('plugins/nvim-lastplace')
require('plugins/nvim-lspconfig')
require('plugins/nvim-tree')
require('plugins/nvim-autopairs')
require('plugins/nvim-telescope')
require('plugins/git-blame')
