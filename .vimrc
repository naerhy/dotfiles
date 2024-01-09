" vim 9.0

" vim plugins (github.com/junegunn/vim-plug)
call plug#begin()
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'itchyny/lightline.vim'
call plug#end()

let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.8 } }
let g:fzf_vim = {}
let g:fzf_vim.preview_window = []

" use vim settings rather than vi settings
" kinda redundant as it is already off if a .vimrc exists
set nocompatible

" enable sane backspace behavior
set backspace=indent,eol,start

" disable swap files creation
set noswapfile

" set update time
set updatetime=1000

" faster update for lightline status plugin
set ttimeout ttimeoutlen=50

" show lines number
set number

" keep at least 5 lines above/below cursor
set scrolloff=5

" always show status line
set laststatus=2

" disable -- INSERT -- messages at bottom
set noshowmode

" highlight search results
set hlsearch

" ignore case when searching
set ignorecase
" ignore case only if search is all lowercase
set smartcase

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

" set colorscheme
colorscheme habamax

" set leader key
let mapleader = ','

" custom key mappings
nmap <tab> <C-w>w
nmap <Leader>f :Files<CR>
nmap <Leader>b :Buffers<CR>
nmap <F7> <C-w>v
nmap <F8> <C-w>s
nmap \ :nohl<CR>
