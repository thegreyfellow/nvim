source ~/.config/nvim/plugins.vim

" config
syntax on
filetype plugin indent on
set autoread
set hidden
set nobackup
set number rnu
set nowritebackup
set relativenumber
set smarttab
set cindent
set tabstop=2
set shiftwidth=2
set expandtab
set shortmess+=c
set updatetime=300
set gdefault
set inccommand=split
set splitbelow
set splitright
set cursorline
set timeoutlen=1000 ttimeoutlen=0
set fileformats=unix,dos,mac
set showcmd
set noshowmode
set hlsearch
set sidescroll=6 
set confirm
set autowriteall
set t_Co=256

" session management
let g:session_directory = "~/.config/nvim/session"
let g:session_autoload = "no"
let g:session_autosave = "no"
let g:session_command_aliases = 1

" Theme
color dracula
hi Normal guibg=NONE ctermbg=NONE

" highlight current cursor line
hi CursorLine   cterm=NONE ctermbg=8 ctermfg=NONE

" jump to last position
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='minimalist'
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
let g:airline_skip_empty_sections = 1

" map
let mapleader = " "

nnoremap <A-l> :bn<CR>
nnoremap <A-h> :bp<CR>
nnoremap <A-q> :bd<CR>

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <silent> <Leader>l :nohlsearch<CR><C-L>

" fzf
nnoremap <C-P> :Files<CR>
nnoremap <C-F> :Ag<CR>

" coc maps
command! -nargs=0 Prettier :CocCommand prettier.formatFile

nnoremap <C-I> :CocCommand prettier.formatFile<CR>

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <C-space> coc#refresh()

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" NerdTree
let NERDTreeShowHidden=1
autocmd StdinReadPre * let s:std_in=1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd BufEnter * if bufname('#') =~# "^NERD_tree_" && winnr('$') > 1 | b# | endif

