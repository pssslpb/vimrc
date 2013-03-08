" -- pathogen --
execute pathogen#infect()

syntax enable
syntax on
filetype plugin indent on

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
nmap <leader>tt :TagbarToggle<cr>

" -- Syntastic --
let g:syntastic_check_on_open=1

" -- NERDTree --
nmap <leader>tr :NERDTreeToggle<cr> 
set autochdir
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
let g:Powerline_stl_path_style = 'relative'
