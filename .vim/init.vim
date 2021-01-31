"vi
set nocompatible
"识别文件格式
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
set completeopt=longest,menu 
"vim使用鼠标
set mouse=a

"编码
set encoding=utf-8

"某些插件引起的配色不正确
let &t_ut=''

"缩进距离
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2


let mapleader=" "	"将leader键改成空格
syntax on  "语法高亮
set number	"标记行号 
set cursorline	"当前行横线	
set wrap
set showcmd
set wildmenu	"命令补全
set hlsearch	"查找高亮
exec "nohlsearch"
set incsearch	"边输入边高亮
set ignorecase	"忽略大小写搜索
set smartcase 	"智能大小写搜索



"noremap = nzz
"noremap - Nzz
map W :w<CR>
map Q :q<CR>
"加速上下左右
noremap H 5h
noremap L 5l
noremap J 5j
noremap K 5k
"分屏
map sh :set splitright<CR>:vsplit<CR>
map sl :set nosplitright<CR>:vsplit<CR>
map sj :set nosplitbelow<CR>:split<CR>
map sk :set splitbelow<CR>:split<CR>
"
"分屏之后打开新文件的操作为:e path
"各屏之间移动
"
map <LEADER>h <C-w>h
map <LEADER>l <C-w>l
map <LEADER>j <C-w>j
map <LEADER>k <C-w>k

"分屏大小
map <up> :res +5<CR>
map <down> :res -5<CR>
map <left> :vertical resize-5<CR>
map <right> :vertical resize+5<CR>

"垂直分屏和水平分屏

"打开新标签页 tabe
map fh :tabe<CR>
"移动标签页
map fj :-tabnext<CR>
map fk :+tabnext<CR>


"快捷键取消搜索高亮
noremap <LEADER><CR> :nohlsearch<CR>


"插件安装
call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
" File navigation
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'

" Taglist
Plug 'majutsushi/tagbar', { 'on': 'TagbarOpenAutoClose' }

" Error checking
Plug 'w0rp/ale'

" Auto Complete
Plug 'ycm-core/YouCompleteMe'
" Undo Tree
Plug 'mbbill/undotree/'

" Other visual enhancement
Plug 'nathanaelkane/vim-indent-guides'
Plug 'itchyny/vim-cursorword'

" Git
Plug 'rhysd/conflict-marker.vim'
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'
Plug 'gisphm/vim-gitignore', { 'for': ['gitignore', 'vim-plug'] }

" HTML, CSS, JavaScript, PHP, JSON, etc.
Plug 'elzr/vim-json'
Plug 'hail2u/vim-css3-syntax'
Plug 'spf13/PIV', { 'for' :['php', 'vim-plug'] }
Plug 'gko/vim-coloresque', { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] }
Plug 'pangloss/vim-javascript', { 'for' :['javascript', 'vim-plug'] }
Plug 'mattn/emmet-vim'

" Python
Plug 'vim-scripts/indentpython.vim'

" Markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install_sync() }, 'for' :['markdown', 'vim-plug'] }
Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle' }
"Plug 'vimwiki/vimwiki'

" Bookmarks
Plug 'kshenoy/vim-signature'

" Other useful utilities
Plug 'terryma/vim-multiple-cursors'
Plug 'junegunn/goyo.vim' " distraction free writing mode
Plug 'tpope/vim-surround' " type ysks' to wrap the word with '' or type cs'` to change 'word' to `word`
Plug 'godlygeek/tabular' " type ;Tabularize /= to align the =
Plug 'gcmt/wildfire.vim' " in Visual mode, type i' to select all text in '', or type i) i] i} ip
Plug 'scrooloose/nerdcommenter' " in <space>cc to comment a line

" Dependencies
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'kana/vim-textobj-user'
Plug 'fadein/vim-FIGlet'
"结束安装
call plug#end()


