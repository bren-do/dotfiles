set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/syntastic'
Plugin 'Shougo/neocomplcache.vim'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-sensible'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-surround'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'majutsushi/tagbar'
Plugin 'pangloss/vim-javascript'

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

syntax enable
set background=dark
" solarized options 
let g:solarized_termtrans = 0
colorscheme solarized

augroup rainbow_parentheses
	au!
	au BufEnter *.clj RainbowParenthesesActivate
	au BufEnter *.clj RainbowParenthesesLoadRound
	au BufEnter *.clj RainbowParenthesesLoadSquare
	au BufEnter *.clj RainbowParenthesesLoadBraces
augroup END

set nu
set ruler
set cursorline
set clipboard+=unnamed
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

nmap <F8> :TagbarToggle<CR>

" NEOCOMPLETE
let g:neocomplcache#enable_at_startup = 1
let g:neocomplcache#enable_auto_select = 0

set tags=~/mytags

:set breakindent
:set wrap
:set linebreak
:set nolist  " list disables linebreak
:set textwidth=0
:set wrapmargin=0
:set formatoptions+=l
