" Features
set nocompatible
set background=dark

" dein.vim settings {{{
" install dir {{{
let s:dein_dir = expand('~/.cache/dein')
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
" }}}

" dein installation check {{{
if &runtimepath !~# '/dein.vim'
  if !isdirectory(s:dein_repo_dir)
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
  endif
  execute 'set runtimepath^=' . s:dein_repo_dir
endif
" }}}

" begin dein settings {{{
if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  " .toml file
  let s:rc_dir = expand('~/.vim')
  if !isdirectory(s:rc_dir)
    call mkdir(s:rc_dir, 'p')
  endif
  let s:toml = s:rc_dir . '/dein.toml'
  let s:lazy = s:rc_dir . '/lazy.toml'

  " read toml and cache
  call dein#load_toml(s:toml, {'lazy': 0})
  "call dein#load_toml(s:lazy, {'lazy': 1})

  " end dein settings
  call dein#end()
  call dein#save_state()
endif
" }}}

" plugin installation check {{{
if dein#check_install()
  call dein#install()
endif
" }}}

" plugin remove check {{{
let s:removed_plugins = dein#check_clean()
if len(s:removed_plugins) > 0
  call map(s:removed_plugins, "delete(v:val, 'rf')")
  call dein#recache_runtimepath()
endif
" }}}

filetype plugin indent on
syntax enable

" Must have options
set hidden
set showcmd
set hlsearch
set backspace=indent,eol,start
if !dein#check_install(['lightline.vim'])
  set laststatus=2
  set noshowmode
endif

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

