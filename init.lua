
-----------------------------------------------------------
-- Plugins
-----------------------------------------------------------
-- paq-nvim
vim.cmd 'packadd paq-nvim'      -- load package
local paq = require('paq-nvim').paq   -- import module with `paq` function
paq{'savq/paq-nvim', opt=true}  -- let paq manage itself


-- add packages
paq 'sjl/badwolf'                       -- Theme
paq 'kyazdani42/nvim-web-devicons'      -- Icons
paq 'hrsh7th/nvim-compe'                -- Autocomplete
paq {'nvim-treesitter/nvim-treesitter'} -- Syntax tree
paq 'kyazdani42/nvim-tree.lua'          -- file-explorer
paq 'ethanholz/nvim-lastplace'          -- Reopen at your last edit position

-- Langae server
paq 'neovim/nvim-lspconfig'
paq 'kabouzeid/nvim-lspinstall'

-- File explorer with telescope
paq 'nvim-lua/popup.nvim'
paq 'nvim-lua/plenary.nvim'
paq 'nvim-telescope/telescope.nvim'

-- Autocomplete
paq 'shougo/deoplete-lsp'
paq 'shougo/deoplete.nvim'
-- g['deoplete#enable_at_startup'] = 1  -- enable deoplete at startup


-----------------------------------------------------------
-- Import Lua modules
-----------------------------------------------------------
require('settings')         -- settings
require('keymapping')       -- keymapping

require('plugins/nvim-lspconfig')
require('plugins/nvim-compe')
require('plugins/nvim-tree')
require('plugins/nvim-lastplace')
