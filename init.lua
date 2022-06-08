
-----------------------------------------------------------
-- Plugins
-----------------------------------------------------------
-- paq-nvim
-- vim.cmd 'packadd paq-nvim'      -- load package
-- local paq = require('paq-nvim').paq   -- import module with `paq` function
-- paq{'savq/paq-nvim', opt=true}  -- let paq manage itself

require "paq" {
  "savq/paq-nvim";                  -- Let Paq manage itself

  -- add packages
  'sjl/badwolf';                       -- Theme
  'kyazdani42/nvim-web-devicons';      -- Icons
  'nvim-treesitter/nvim-treesitter';   -- Syntax tree
  'nvim-treesitter/nvim-treesitter-textobjects'; -- Additional textobjects for treesitter
  'kyazdani42/nvim-tree.lua';          -- file-explorer
  'ethanholz/nvim-lastplace';          -- Reopen at your last edit position
  'lewis6991/gitsigns.nvim';           -- Show the git modification into the sign bar
  'nvim-lua/lsp-status.nvim';          -- Show LSP informations inside the statusline
  'b3nj5m1n/kommentary';               -- Comments
  'windwp/nvim-autopairs';             -- Autopairs
  'rodjek/vim-puppet';                 -- For Puppet syntax highlighting

  -- File explorer with telescope
  'nvim-lua/popup.nvim';
  'nvim-lua/plenary.nvim';
  'nvim-telescope/telescope.nvim';

  -- Autocomplete
  'neovim/nvim-lspconfig'; -- Collection of configurations for built-in LSP client
  'hrsh7th/cmp-nvim-lsp'; -- LSP source for nvim-cmp
  'saadparwaiz1/cmp_luasnip'; -- Snippets source for nvim-cmp
  'L3MON4D3/LuaSnip'; -- Snippets plugin  
  'hrsh7th/nvim-cmp';


  --[[ 'hrsh7th/cmp-buffer';
  'hrsh7th/cmp-path';
  'hrsh7th/cmp-cmdline'; ]]
  -- 'hrsh7th/nvim-cmp';

  'f-person/git-blame.nvim';

}


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
