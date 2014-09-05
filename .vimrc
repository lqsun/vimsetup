set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'autocomplpop'
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}
Plugin 'git://github.com/scrooloose/nerdtree.git'
" Plugin 'git://github.com/Valloric/YouCompleteMe.git'

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
"*************************************************

"format configure
" setup tab
set softtabstop=4 "4 space for tab
set expandtab   "change tab to space
set autoindent
set smartindent
set cindent
"*************************************************
" autocomplpop color
" hi Pmenu     ctermfg=lightgrey ctermbg=brown     guifg=grey60   guibg=brown
" hi PmenuSel  ctermfg=white     ctermbg=darkgrey  guifg=white    guibg=grey40 
hi Pmenu     guifg=#ffffff guibg=#444444 gui=NONE
hi PmenuSel  guifg=#000000 guibg=#ccee88 gui=NONE
hi PmenuSbar guifg=#000000 guibg=#ffffff gui=NONE
hi PmenuThumb guifg=#ffffff guibg=#bbbbbb gui=NONE

" folder code
set fdm=indent

" open/close spell check
set nospell

" show line number and color
set nu

" syntax on
syntax on

" ignore case-sense
set ic

" show command below
set showcmd

" highlight search word
set hlsearch

" setup guioption, a=selected to clipboard
set guioptions=
set guioptions+=a

colorscheme murphy

" hight insert line
autocmd InsertEnter * se cul
autocmd InsertLeave * se nocul
