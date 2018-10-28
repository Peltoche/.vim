call plug#begin('~/.config/nvim/plugged')

" Utils
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'junegunn/gv.vim'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdcommenter'


Plug 'zchee/deoplete-go', { 'do': 'make'}

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'

" Create automatically the closing pair
Plug 'jiangmiao/auto-pairs'

" UI
Plug 'tpope/vim-eunuch'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle'    }
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'majutsushi/tagbar'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Languages

"" Rust
Plug 'rust-lang/rust.vim'
let g:rustfmt_autosave = 1

"" Puppet
Plug 'rodjek/vim-puppet'
autocmd FileType puppet setlocal ts=4 sts=4 sw=4 expandtab

"" Clojure
"Plug 'venantius/vim-cljfmt', { 'for': 'clojure' }
"Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
"Plug 'guns/vim-sexp', { 'for': 'clojure' }
"Plug 'tpope/vim-sexp-mappings-for-regular-people', { 'for': 'clojure' }
"Plug 'neovim/node-host'
"Plug 'snoe/nvim-parinfer.js' ", { 'for': 'clojure' }
"

Plug 'elmcast/elm-vim'

"" Elixir
"Plug 'elixir-lang/vim-elixir'
"Plug 'archSeer/elixir.nvim'

"" Go
Plug 'nsf/gocode', { 'rtp': 'vim', 'do': '~/.config/nvim/plugged/gocode/nvim/symlink.sh' }
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"Plug 'nsf/gocode', {'rtp': 'nvim/'}


"" Git
Plug 'junegunn/gv.vim'"

"" Ruby
"Plug 'tpope/vim-bundler'
"Plug 'tpope/vim-rails'
"Plug 'slim-template/vim-slim'
"Plug 'vim-ruby/vim-ruby'

"" Javascript
"Plug 'kchmck/vim-coffee-script'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
"Plug 'jelera/vim-javascript-syntax', {'autoload':{'filetypes':['javascript']}}

"" Swift
"Plug 'keith/swift.vim'

"" Markdown
Plug 'tpope/vim-markdown'
"Plug 'junegunn/vim-xmark', { 'do': 'make' } " OSX only

"" Syntax
Plug 'vim-syntastic/syntastic'

"" HTML && CSS
Plug 'groenewege/vim-less'
"Plug 'slim-template/vim-slim'


"" Infra as code
"Plug 'fatih/vim-hclfmt', { 'do': 'go get github.com/fatih/hclfmt' }

" Colors
Plug 'altercation/vim-colors-solarized'
Plug 'sjl/badwolf'
Plug 'morhetz/gruvbox'
Plug 'nanotech/jellybeans.vim'
Plug 'endel/vim-github-colorscheme'
Plug 'romainl/Apprentice'
Plug 'zenorocha/dracula-theme', {'rtp': 'vim/'}
Plug 'antlypls/vim-colors-codeschool'
Plug 'w0ng/vim-hybrid'
Plug 'chriskempson/base16-vim'
Plug 'gosukiwi/vim-atom-dark'
Plug 'AlessandroYorba/Sierra'
Plug 'mhartington/oceanic-next'
Plug 'joshdick/onedark.vim'
Plug 'kristijanhusak/vim-hybrid-material'
Plug 'cbracken/vim-monochrome'

" Icons
Plug 'ryanoasis/vim-devicons'

call plug#end()
