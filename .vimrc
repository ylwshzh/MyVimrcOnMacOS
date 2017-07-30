set nocompatible
filetype off

set rtp+=~/.vim/vundle.git/ 
 call vundle#rc()

Plugin 'vim-syntastic/syntastic.git'
Plugin 'scrooloose/nerdtree.git'

set ff=unix
syntax on
"set background=dark
"colorscheme solarized
"colorscheme mythos
set nu

set cursorline
set autoindent
set cindent

set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab
set expandtab
set smartindent

set hls
set ignorecase
set foldenable
set foldmethod=manual
set encoding=utf-8
set confirm

""set statusline+=%c,
""set statusline+=%l/%L

map ty :w! ~/.vimxfer<cr>
map tp :r ~/.vimxfer<cr>

set showmatch
set matchtime=5
filetype plugin indent on

inoremap ( ()<Esc>i
inoremap [ []<Esc>i
inoremap " ""<Esc>i
inoremap ' ''<Esc>i
inoremap ` ``<Esc>i
inoremap { {<cr>}<Esc>O

" Syntastic
" let g:syntastic_eslint_exec='/usr/local/bin/eshint'
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='!'
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0
let g:syntastic_enable_highlighting=1
"let g:syntastic_javascript_checkers = ['eslint']
"let g:syntastic_html_checkers=['tidy', 'eslint']
let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_html_checkers=['tidy', 'jshint']
" 修改高亮的背景色, 适应主题
highlight SyntasticErrorSign guifg=white guibg=black

" to see error location list
let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_loc_list_height = 5

" nerdTree"
autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

