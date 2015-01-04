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
Plugin 'trusktr/seti.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'marijnh/tern_for_vim'
call vundle#end()            " required
filetype plugin indent on    " required



" ====================================================
" CONFIGURATION SETTINGS
" ====================================================
" enable syntax highlighting
syntax enable

" set the color scheme
colorscheme seti

" enabled javascript checkers
let g:syntastic_javascript_checkers = ['jshint', 'jscs']

" enabled php checkers
let g:syntastic_php_checkers = ['php', 'phpcs', 'phpmd', 'phplint']

" enabled json checkers
let g:syntastic_json_checkers = ['jsonlint']

" enabled handlebars checkers
let g:syntastic_handlebars_checkers = ['handlebars']

" enabled css checkers
let g:syntastic_css_checkers = ['csslint']
let g:syntastic_less_checkers = ['lessc', 'less-lint']

" enabled html checkers
let g:syntastic_html_checkers = ['w3', 'validator']

" allow syntastic to aggregate all errors from checkers
let g:syntastic_aggregate_errors = 1

" set airline to use powerline fonts
let g:airline_powerline_fonts = 1

let g:airline#extensions#tabline#enabled = 1

" not sure what this does...
let g:rehash256 = 1

" enable smart indenting
" set smartindent

let mapleader = ","

" set number of spaces per tab
set tabstop=4

" number of spaces to use for tab characters
set shiftwidth=4

" turn tabs to spaces
set expandtab

" enable line numbers
set number

" enable cursor line highlighting
set cursorline

" enable spell checking
set spell spelllang=en_us

" enable status bar for all files (not just split)
set laststatus=2

" disable highlighting of search results
set nohls

" convert tabs to spaces
set expandtab

" highlight tailing whitespace
set list listchars=tab:\ \ ,trail:·

" utf encoding
set encoding=utf-8

" disable splitting panes when buffer is dirty
set hidden

" set spell check highlighting
hi clear SpellBad
hi SpellBad cterm=underline

" treat all numerals as decimal, even if they are padded with 0's
" set nrformats

" disable creation of backup files
set nobackup
set nowritebackup
set noswapfile

" ignore case when searching
set ignorecase
set smartcase

" warn if we are going to destroy a buffer
set autoread

" disable start screen
set shortmess+=I

" jump to search match... useful
set incsearch

" enable backspace in insert mode
set backspace=indent,eol,start

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

nmap <leader>m :NERDTreeToggle<CR>
nmap <leader>b :Gblame<CR>
nmap <leader>l :bn<CR>

" map capital versions of w and q
:command WQ wq
:command Wq wq
:command W w
:command Q q
