set nocompatible              " be iMproved, required
filetype off                  " required



" ====================================================
" VUNDLE PACKAGES
" ====================================================
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'
Plugin 'pangloss/vim-javascript'
Plugin 'groenewege/vim-less'
Plugin 'tomasr/molokai'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-surround'
Plugin 'othree/html5.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'jiangmiao/auto-pairs'
call vundle#end()            " required
filetype plugin indent on    " required



" ====================================================
" CONFIGURATION SETTINGS
" ====================================================
syntax enable
colorscheme molokai
let g:syntastic_javascript_checkers = ['jshint', 'jscs']
let g:syntastic_php_checkers = ['php', 'phpcs', 'phpmd']
let g:syntastic_json_checkers = ['jsonlint']
let g:syntastic_handlebars_checkers = ['handlebars']
let g:syntastic_css_checkers = ['csslint']
let g:syntastic_html_checkers = ['w3', 'validator']
let g:syntastic_aggregate_errors = 1
let g:airline_powerline_fonts = 1
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
let g:rehash256 = 1
set number
set cursorline
set spell spelllang=en_us
set laststatus=2
set nohls

" convert tabs to spaces
set expandtab

" highlight tailing whitespace
set list listchars=tab:\ \ ,trail:·

" utf encoding
set encoding=utf-8


" ====================================================
" KEY MAPPINGS
" ====================================================
no <up> ddkP
no <down> ddp
no <left> <Nop>
no <right> <Nop>
ino <up> <Nop>
ino <down> <Nop>
ino <left> <Nop>
ino <right> <Nop>

" auto center find commands 
nmap G Gzz
nmap n nzz
nmap N Nzz
nmap } }zz
nmap { {zz
nmap j jzz
nmap k kzz
