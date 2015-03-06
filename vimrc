set nocompatible                                              " Turn off vi-compatibility, must be the first config to set
filetype off                                                  " required for Vundle to work (See Vundle for details)

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
