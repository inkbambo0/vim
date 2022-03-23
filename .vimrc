set nocompatible
filetype plugin indent on
syntax on
set number
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set autoindent

let mapleader=","

inoremap <leader>w <Esc>:w<cr>
nnoremap <leader>w <Esc>:w<cr>

inoremap jj <ESC>

nnoremap <space> viw

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap w= :resize +3<CR>
nnoremap w- :resize -3<CR>
nnoremap w, :vertical resize -3<CR>
nnoremap w. :vertical resize +3<CR>

nnoremap <leader>o o<Esc>
nnoremap <leader>O O<Esc>

nnoremap <leader>t :NERDTreeToggle<CR>
nnoremap <leader>f :NERDTreeFind<CR>

autocmd BufWritePost $MYVIMRC source $MYVIMRC

set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8

set mouse=a
set selection=exclusive
set selectmode=mouse,key

set showmatch   "括号匹配
set pastetoggle=<F2>



set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" ,t: toogle tree
" ,f: focus file
Plugin 'scrooloose/nerdtree'
Plugin 'joshdick/onedark.vim'
Plugin 'vim-airline/vim-airline'

call vundle#end()

set background=dark
colorscheme onedark





