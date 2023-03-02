" require vim 0.9+

" vim plugins (github.com/junegunn/vim-plug)
call plug#begin()
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'itchyny/lightline.vim'
call plug#end()

" fzf layout config
let g:fzf_layout = {'window': {'width': 0.8, 'height': 0.8}}

" apply c++ syntax to .tpp files
au BufRead,BufNewFile *.tpp setlocal filetype=cpp
au BufRead,BufNewFile *.psc set filetype=psc

" prevent some weird keyboard bugs
set nocompatible

" enable backspace key to delete
set backspace=indent,eol,start

" disable creating swap files
set noswapfile

" set update time
set updatetime=1000

" faster update for lightline status plugin
set ttimeout ttimeoutlen=50

" display lines number
set number

" toggle status line visibility
set laststatus=2

" disable -- INSERT -- messages at bottom
set noshowmode

" ignore case when searching
set ignorecase

" display vertical rulers
set cc=80,100

" display cursorline
set cursorline

" use UTF-8 encoding
set encoding=UTF-8

" enable mouse
set mouse=a

" number of columns when using tab
set tabstop=4

" width for autoindents
set shiftwidth=4

" disable line wrapping
set nowrap

" automatically indent files based on file type
filetype plugin indent on

" set indent mode = copy indent from previous line
set autoindent

" Vim will try to use colors that look good on dark background
set background=dark

" enable syntax highlighting
syntax on
filetype on

" custom key mappings
nmap <F2> :Files<CR>
nmap <F3> <C-w>w
tmap <F3> <C-w>w
nmap <F4> :terminal<CR>
nmap <F7> :vsplit<CR>
nmap <F8> :split<CR>
