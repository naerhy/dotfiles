" vim 0.8.2+

" vim plugins (github.com/junegunn/vim-plug)
call plug#begin()
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'itchyny/lightline.vim'
Plug 'vim/colorschemes'
call plug#end()

" fzf.vim settings
let g:fzf_layout = {'window': {'width': 0.8, 'height': 0.8}}

" apply c++ syntax to .tpp files
au BufRead,BufNewFile *.tpp setlocal filetype=cpp

" use vim settings rather than vi settings
" kinda redundant as it is already off if a .vimrc exists
set nocompatible

" enable sane backspace behavior
set backspace=indent,eol,start

" disable creating swap files
set noswapfile

" set update time
set updatetime=1000

" faster update for lightline status plugin
set ttimeout ttimeoutlen=50

" display lines number
set number

" keep at least 5 lines above/below cursor
set scrolloff=5

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

" how many columns a tab counts for
set tabstop=4
" control how many columns the cursor moves when pressing tab in insert mode
set softtabstop=4
" specify by how many columns text is indented with automatic indentation
set shiftwidth=4
" pressing tab doesn't insert space characters
set noexpandtab

" when splitting, open the new window below/right of the current one
set splitbelow
set splitright

" disable line wrapping
set nowrap

" enable filetypes configuration
" shorthand: filetype plugin indent on
filetype on
filetype plugin on
filetype indent on

" new lines inherit the indentation of previous lines
set autoindent

" Vim will try to use colors that look good on dark background
set background=dark

" enable syntax highlighting
syntax on

" set custom colorscheme
colorscheme quiet

" set leader key
let mapleader = ","

" custom key mappings
" F1 = :help
nmap <F1> :e.<CR>
nmap <Leader>f :Files<CR>
nmap <Leader>b :Buffers<CR>
nmap <F2> <C-w>w
tmap <F2> <C-w>w
nmap <F7> <C-w>v
nmap <F8> <C-w>s
nmap <Leader>t :terminal<CR>
