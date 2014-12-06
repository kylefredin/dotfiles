set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
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
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'jiangmiao/auto-pairs'






" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
syntax enable
colorscheme molokai
let g:syntastic_javascript_checkers = ['jshint']
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
let g:rehash256 = 1
set number
set cursorline
set spell spelllang=en_us
set laststatus=2 "tells airline to always display, instead of only when there is a split
set nohls



" removes the arrow keys for normal and insert modes... hardcore man!
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
