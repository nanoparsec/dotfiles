set nocompatible                                              " Turn off vi-compatibility, must be the first config to set
filetype off                                                  " required for Vundle to work (See Vundle for details)
" set the runtime path to include Vundle and initialize

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set encoding=utf-8
set timeout timeoutlen=1000 ttimeoutlen=100                   " Fix slow O inserts from Gary Bernhardt
set shell=/bin/sh                                             " some commands seem to have problems with zsh (i.e. RVM)
set cursorline                                                " Highlight the line with the cursor
set hlsearch                                                  " highlight search
set incsearch                                                 " Incremental search, search as you type
set ignorecase smartcase                                      " Ignore case when searching
set ttyfast                                                   " We got us a fast terminal (a.k.a. local machine)
set list listchars=trail:·,tab:>-,nbsp:¬,extends:»,precedes:« " Show invisble chars and tell how to display them
set nobackup                                                  " Don't make a backup before overwriting a file.
set nowritebackup                                             " And again.
set noswapfile                                                " Don't use swapfiles
set hidden                                                    " Handle multiple buffers better.
set laststatus=2                                              " Show the status line all the time


" Colors
syntax enable                                    " Enable syntax highlighting
set t_Co=256                                     " 256 colors
set background=dark                              " Me like it dark
colorscheme pinkiepie                            " And me like it pink

" Clear the search buffer when hitting return
nnoremap <CR> :nohlsearch<cr>
