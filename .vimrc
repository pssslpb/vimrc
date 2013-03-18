" -- pathogen --
execute pathogen#infect()

syntax enable
syntax on
filetype plugin indent on

" -- mapleader --
let mapleader = ","

imap <C-s> <esc>:w<cr>
nmap <C-s> <esc>:w<cr>
nmap <C-esc> :q<cr>

" -- colorscheme --
colorscheme evening

" -- tab --
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab

set nu
set hlsearch

" -- YouCompleteMe --
let g:ycm_key_invoke_completion = '<C-w>'
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'

" -- Syntastic --
let g:syntastic_check_on_open=1

" -- NERDTree --
nmap <leader>tr :NERDTreeToggle<cr> 
"set autochdir
let NERDTreeChDirMode=1
let NERDChristmasTree=1
let NERDTreeShowBookmarks=1
" move tabs to the end for new, single buffers (exclude splits)
autocmd BufNew * if winnr('$') == 1 | tabmove99 | endif

" -- copy and paste --
vmap <A-c> "+y
nmap <A-v> "+p

" -- PowerLine --
set nocompatible
set laststatus=2
"let g:Powerline_stl_path_style = 'relative'
let g:Powerline_colorscheme = 'solarized256'

" -- Tagbar --
nmap <leader>tt :TagbarToggle<cr>
map <C-H> <C-W>h
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-L> <C-W>l
map <C-TAB> <C-W>w

" -- voom --
nmap <leader>v :VoomToggle<cr>
let g:voom_tree_placement = "right"

nmap [1 <esc>$a{{{1<esc>
nmap [2 <esc>$a{{{2<esc>
nmap [3 <esc>$a{{{3<esc>
nmap [4 <esc>$a{{{4<esc>
nmap [5 <esc>$a{{{5<esc>
    
imap [1 <esc>$a{{{1
imap [2 <esc>$a{{{2
imap [3 <esc>$a{{{3
imap [4 <esc>$a{{{4
imap [5 <esc>$a{{{5

" -- snipMate --
" auto load txt syntax file
au BufRead,BufNewFile *.txt set filetype=txt
au BufRead,BufNewFile CMakeLists.txt set filetype=cmake
au BufRead,BufNewFile *.cmake  set filetype=cmake
au BufRead,BufNewFile *.cm  set filetype=cmake
