"
" ~/.config/nvim/init.vim
"

""""""""""""""""""""""""""""""""""
" Plugins
source ~/.config/nvim/plugins.vim

"""""""""""""""""""""""""""""""""
" Configs

" Make it obvious where 120 characters is
set textwidth=120
set colorcolumn=+1
au BufRead,BufNewFile *.md setlocal textwidth=80

" Numbers
set number               " Display line number on curson line
set relativenumber
set numberwidth=4

set expandtab           " Insert spaces when TAB is pressed.
set tabstop=2           " Render TABs using this many spaces.
set shiftwidth=2        " Indentation amount for < and > commands.

" Display extra whitespace
set list listchars=tab:»·,trail:·,nbsp:·
autocmd FileType go set nolist
autocmd Filetype php setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
autocmd FileType cpp setlocal noexpandtab
" autocmd FileType c setlocal noexpandtab
" autocmd FileType h setlocal noexpandtab

" Search
set ignorecase          " Make searching case insensitive
set smartcase           " ... unless the query has capital letters.
set gdefault            " Use 'g' flag by default with :s/foo/bar/.
set magic               " Use 'magic' patterns (extended regular expressions).

" Theme Options
" set termguicolors
syntax enable
" set background=light
set background=dark
" let g:github_colors_soft = 1
" let g:github_colors_block_diffmark = 0
" colorscheme github
colorscheme gruvbox

"""""""""""""""""""""""""""""""""
" Key bindings
"
" Leader
let mapleader = " "

" Get off my lawn
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

" Switch between the last two files
nnoremap <leader><Tab> <c-^>

" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
noremap <Leader>ts :tab split<CR>

nnoremap <leader>h :nohl<CR>

" easy copy and paste in clipboard
noremap <Leader>y "*y
noremap <Leader>p "*p
noremap <Leader>Y "+y
noremap <Leader>P "+p

" FZF configuratgion
noremap <Leader>pf :FZF<CR>
noremap <Leader>pb :Buffers<CR>

noremap <Leader>efv :e ~/.config/nvim/init.vim<CR>
noremap <Leader>sf :source ~/.config/nvim/init.vim<CR>
noremap <Leader>te :terminal<CR>

nnoremap <Leader>d 0D

nnoremap <silent> <leader>f :Ag <C-r><C-w><CR>
xnoremap <leader>f y :Ag <C-r>"<CR>

" terminal-emulator mode remap, make sure it works in FZF pane
tnoremap <expr> <esc> &filetype == 'fzf' ? "\<esc>" : "\<c-\>\<c-n>"

" check-time for reload
nnoremap <leader>ct :checktime<CR>
" vim-easy-align
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" vim-ruby Assignment indent style "variable"
:let g:ruby_indent_assignment_style = 'variable'

" vim-test Shortcuts
nmap <Leader>tn :TestNearest<CR>
nmap <Leader>tf :TestFile<CR>
nmap <Leader>ts :TestSuite<CR>
nmap <Leader>tl :TestLast<CR>
nmap <Leader>tg :TestVisit<CR>

" vim-test displatch method
" let test#strategy = "neoterm"
" let g:neoterm_default_mod = 'belowright'
let test#strategy = "tslime"
let g:tslime_always_current_session = 1
let g:tslime_always_current_window = 1

" Go to last active tab
au TabLeave * let g:lasttab = tabpagenr()
nnoremap <silent> <leader>l :exe "tabn ".g:lasttab<cr>
vnoremap <silent> <leader>l :exe "tabn ".g:lasttab<cr>

" Switch vimwiki to use markdown
let g:vimwiki_list = [{'path': '~/vimwiki/', 'syntax': 'markdown', 'ext': '.md', 'index': 'Readme'}]

" Add vimwiki in vim-airline wordcount file types
let g:airline#extensions#wordcount#filetypes = '\vasciidoc|help|mail|markdown|org|rst|plaintex|tex|text|vimwiki'


" TagBar
nmap <F8> :TagbarToggle<CR>

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

" FZF neovim status line
function! s:fzf_statusline()
  " Override statusline as you like
  highlight fzf1 ctermfg=161 ctermbg=251
  highlight fzf2 ctermfg=23 ctermbg=251
  highlight fzf3 ctermfg=237 ctermbg=251
  setlocal statusline=%#fzf1#\ >\ %#fzf2#fz%#fzf3#f
endfunction
autocmd! User FzfStatusLine call <SID>fzf_statusline()
