" Features
set nocompatible
set background=dark
filetype plugin indent on
syntax enable

" Must have options
set hidden
set showcmd
set hlsearch
set backspace=indent,eol,start

" Usability options
set ignorecase
set smartcase
set autoindent
set nostartofline
set ruler
set confirm
set visualbell
set t_vb=
set number

" Indentation options
set tabstop=4
set softtabstop=-1
set shiftwidth=0
set shiftround
set expandtab

augroup fileTypeIndent
    autocmd!
    autocmd BufNewFile,BufRead *.js   setlocal tabstop=2 softtabstop=-1 shiftwidth=0
    autocmd BufNewFile,BufRead *.ts   setlocal tabstop=2 softtabstop=-1 shiftwidth=0
    autocmd BufNewFile,BufRead *.html setlocal tabstop=2 softtabstop=-1 shiftwidth=0
    autocmd BufNewFile,BufRead *.vue  setlocal tabstop=2 softtabstop=-1 shiftwidth=0
augroup END


" To install vim-plug run following command on your shell
"
" | curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
" |    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"
" and then run ':PlugInstall' on vim

call plug#begin()
Plug 'itchyny/lightline.vim'
"Plug 'cocopon/iceberg.vim'
Plug 'sainnhe/edge'
Plug 'cohama/lexima.vim'
Plug 'mattn/emmet-vim'
Plug 'pangloss/vim-javascript'
Plug 'posva/vim-vue'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
call plug#end()

let g:lightline = {'colorscheme': 'edge'}
set laststatus=2
set noshowmode
colorscheme edge

