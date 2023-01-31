call plug#begin()
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'itchyny/lightline.vim'
Plug 'gruvbox-community/gruvbox'
Plug 'arcticicestudio/nord-vim'
Plug 'dracula/vim', { 'as': 'dracula' }
call plug#end()

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

" disable -- INSERT -- messages 
set noshowmode

" display vertical rulers
set cc=80,100

" enable text soft-wrap
set wrap
set linebreak
set nolist

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

" automatically indent files based on file type
filetype plugin indent on

" set indent mode = copy indent from previous line
set autoindent

" Vim will try to use colors that look good on dark background
set background=dark

" enable syntax highlighting
syntax on
filetype on

" colorscheme settings
if has('termguicolors')
	set termguicolors
endif

colorscheme dracula
" colorscheme gruvbox
" colorscheme nord

nnoremap <F2> :Files<CR>
nnoremap <F3> <C-w>w
nnoremap <F4> :term<CR>
nnoremap <F7> :vsplit<CR>
nnoremap <F8> :split<CR>
