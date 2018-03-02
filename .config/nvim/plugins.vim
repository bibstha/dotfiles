" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.local/share/nvim/plugged')

" Define bundles via Github repos
Plug 'christoomey/vim-run-interactive'
Plug 'christoomey/vim-tmux-navigator'
Plug 'kchmck/vim-coffee-script'
Plug 'pbrisbin/vim-mkdir'
" Plug 'vim-syntastic/syntastic'
Plug 'w0rp/ale'
Plug 'slim-template/vim-slim'
Plug 'thoughtbot/vim-rspec'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'vim-ruby/vim-ruby'
Plug 'vim-scripts/tComment'
Plug 'fatih/vim-go'
Plug 'moll/vim-bbye'

" Themes
" Plug 'altercation/vim-colors-solarized'
" Plug 'rakr/vim-one'
" Plug 'nlknguyen/papercolor-theme'
Plug 'morhetz/gruvbox'

" Plug 'lambdatoast/elm.vim'
" Plug 'hashivim/vim-vagrant'
" Plug 'ekalinin/Dockerfile.vim'
" Plug 'elixir-lang/vim-elixir'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-easy-align'

Plug 'smit1625/vim-rubyhash'

Plug 'vimwiki/vimwiki'

" Initialize plugin system
call plug#end()
