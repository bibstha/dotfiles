" Leader
let mapleader = " "

" Get off my lawn
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

" Make it obvious where 120 characters is
set textwidth=120
set colorcolumn=+1

" Numbers
set number               " Display line number on curson line
set relativenumber
set numberwidth=4

" Switch between the last two files (Deprecated?)
nnoremap <leader><Tab> <c-^>

" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

set expandtab           " Insert spaces when TAB is pressed.
set tabstop=2           " Render TABs using this many spaces.
set shiftwidth=2        " Indentation amount for < and > commands.

" Display extra whitespace
set list listchars=tab:»·,trail:·,nbsp:·

" Search
set ignorecase          " Make searching case insensitive
set smartcase           " ... unless the query has capital letters.
set gdefault            " Use 'g' flag by default with :s/foo/bar/.
set magic               " Use 'magic' patterns (extended regular expressions).
nnoremap <leader>h :nohl<CR>

" easy copy and paste in clipboard
noremap <Leader>y "*y
noremap <Leader>p "*p
noremap <Leader>Y "+y
noremap <Leader>P "+p

" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.local/share/nvim/plugged')

" Define bundles via Github repos
Plug 'christoomey/vim-run-interactive'
Plug 'kchmck/vim-coffee-script'
Plug 'pbrisbin/vim-mkdir'
Plug 'scrooloose/syntastic'
Plug 'slim-template/vim-slim'
Plug 'thoughtbot/vim-rspec'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'vim-ruby/vim-ruby'
Plug 'vim-scripts/tComment'
Plug 'fatih/vim-go'

Plug 'altercation/vim-colors-solarized'
Plug 'lambdatoast/elm.vim'
Plug 'hashivim/vim-vagrant'
Plug 'ekalinin/Dockerfile.vim'
Plug 'elixir-lang/vim-elixir'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

if filereadable(expand("~/.config/nvim/bundles.local"))
  source ~/.config/nvim/bundles.local
endif

" Initialize plugin system
call plug#end()

" FZF configuratgion
" nnoremap <C-p> :FZF<CR>
noremap <Leader>pf :FZF<CR>
noremap <Leader>pb :Buffers<CR>

" FZF neovim status line
function! s:fzf_statusline()
  " Override statusline as you like
  highlight fzf1 ctermfg=161 ctermbg=251
  highlight fzf2 ctermfg=23 ctermbg=251
  highlight fzf3 ctermfg=237 ctermbg=251
  setlocal statusline=%#fzf1#\ >\ %#fzf2#fz%#fzf3#f
endfunction

autocmd! User FzfStatusLine call <SID>fzf_statusline()

" Solarized Options
syntax enable
set background=light
colorscheme solarized

noremap <Leader>r :source ~/.config/nvim/init.vim<CR>

""""""""""""""""""""""""""""""""""""""""
" Functions

" Strip trailing whitespace (,ss)
function! StripWhitespace()
  let save_cursor = getpos(".")
  let old_query = getreg('/')
  :%s/\s\+$//e
  call setpos('.', save_cursor)
  call setreg('/', old_query)
endfunction
noremap <leader>ss :call StripWhitespace()<CR>
