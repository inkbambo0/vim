" 设置行号
set number
" 主题
" colorscheme hybrid
" 高亮
syntax on
" F2 进入粘贴模式
set pastetoggle=<F2>
" 高亮搜索
set hlsearch
" 设置折叠方式
set foldmethod=indent


" 保存
let mapleader=","
inoremap <leader>w <Esc>:w<cr>

" 进入 normal 模式
inoremap jj <Esc>

" 窗口移动
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
