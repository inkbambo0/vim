" 设置行号
set number

set clipboard=unnamed

" 高亮
syntax on

" F2 进入粘贴模式
set pastetoggle=<F2>

" 高亮搜索
set hlsearch

" 设置折叠方式
set foldmethod=indent

" vim 乱码
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8

" 保存
let mapleader=","
inoremap <leader>w <Esc>:w<cr>
nnoremap <leader>w <Esc>:w<cr>

" 进入 normal 模式
inoremap jj <Esc>

" buffer 切换
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> [a :bnext<CR>

" 窗口移动
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" 空格选中整个单词
nnoremap <space> viw

" 直接换行
nnoremap <leader>o o<Esc>
nnoremap <leader>O O<Esc>

call plug#begin('~/.vim/plugged')

" Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

Plug 'mhinz/vim-startify'

" 美化下面信息栏
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" 缩进线
Plug 'Yggdroot/indentLine'

" tree
" ,t: toogle tree
" ,f: focus file
Plug 'preservim/nerdtree'

" 模糊搜索文件 ctrl + p
Plug 'ctrlpvim/ctrlp.vim'

" ss 模糊搜索两个字符定位
Plug 'easymotion/vim-easymotion'

" 搜索
" :Files [path]: 展示当前目录下文件
" :Ag: 搜索当前文件单词，未配置
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" 搜索替换
" :Far [word1] [word2] [path/filename]
" :Fardo: 确定删除
Plug 'brooth/far.vim'

" 未配置 tagbar 浏览代码 -> idea ctrl + f12
Plug 'majutsushi/tagbar'

" 高亮
" ,k: 高亮选中
" ,K: 取消所有选中
Plug 'lfv89/vim-interestingwords'

" git
" :Gblame 查看每行代码编写人
" :Gdiff
" :Gstatus
Plug 'tpope/vim-fugitive'

" 显示 git 中文件变更
Plug 'airblade/vim-gitgutter'

" git commit
" :GV
Plug 'junegunn/gv.vim'

" console
"Plug 'preservim/vimux'

" 主题
Plug 'rakr/vim-one'

call plug#end()

let g:airline_theme='one'
" 主题
set background=dark
colorscheme one


" tree 操作
nnoremap <leader>t :NERDTreeToggle<cr>
nnoremap <leader>f :NERDTreeFind<cr>

" 模糊搜索
let g:ctrlp_map = '<c-p>'

" 窗口调整
nnoremap w= :resize +3<CR>
nnoremap w- :resize -3<CR>
nnoremap w, :vertical resize -3<CR>
nnoremap w. :vertical resize +3<CR>

" 两个字符模糊搜索
nmap ss <Plug>(easymotion-s2)

" tagbar
nmap <F8> :TagbarToggle<CR>

" git add/modify/delete files 标记刷新时间
set updatetime=100 " 100 ms




