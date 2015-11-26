set nocompatible                                              " Turn off vi-compatibility, must be the first config to set
filetype off                                                  " required for Vundle to work (See Vundle for details)
" set the runtime path to include Vundle and initialize

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
" Emoji: Emojis. For Vim. Awesome.
Plugin 'junegunn/vim-emoji'
" Syntastic: Really great Syntax checker
Plugin 'scrooloose/syntastic'
" Nerdtree: A tree explorer plugin
Plugin 'scrooloose/nerdtree'
" Polyglot: A collection of language packs, loaded on demand
Plugin 'sheerun/vim-polyglot'
" Commentary: Minimalistic commenting plugin
Plugin 'tpope/vim-commentary'
" Rainbow: Keep your sanity in a jungle of parentheses
Plugin 'luochen1990/rainbow'
let g:rainbow_active = 1
let g:rainbow_conf = {
   \   'guifgs': ['#005fff', '#00ffaf', '#00ff5f', '#d700ff'],
   \   'ctermfgs': ['200', '093', '051', '048'],
   \   'operators': '_,_',
   \   'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
   \   'separately': {
   \       '*': {},
   \       'tex': {
   \           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
   \       },
   \       'lisp': {
   \           'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
   \       },
   \       'vim': {
   \           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
   \       },
   \       'html': {
   \           'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
   \       },
   \       'css': 0,
   \   }
   \}
" Ctrlp: Full path fuzzy finder
Plugin 'kien/ctrlp.vim'

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
set nobackup                                                  " Don't make a backup before overwriting a file.
set nowritebackup                                             " And again.
set noswapfile                                                " Don't use swapfiles
set hidden                                                    " Handle multiple buffers better.
set laststatus=2                                              " Show the status line all the time
set expandtab                                                 " Use Soft-Tabs
set tabstop=2 softtabstop=2 shiftwidth=2                      " Use two spaces for tabs, soft-tabs and when shifting
set nowrap                                                    " Deactivate Wrapping
set spell spelllang=en_us                                     " Activate spell checking and set American as default
set list listchars=tab:›\ ,trail:‹                            " Show invisible characters: Tabs & trailing whitespace
set backspace=2
set number


" Colors
syntax enable                                    " Enable syntax highlighting
set t_Co=256                                     " 256 colors
set background=dark                              " Me like it dark
" colorscheme pinkiepie                            " And me like it pink

" Switch spell checking language (from moonglum)
command! British :set spelllang=en_gb
command! American :set spelllang=en_us
command! German :set spelllang=de

" Also run a Syntax Check when the file is opened
let g:syntastic_check_on_open=1

" Configure syntastic with sweet cats made by moonglum :)
if emoji#available()
	" Terminal Vim for example
	" Cats
	let g:syntastic_error_symbol=emoji#for('scream_cat')
	let g:syntastic_warning_symbol=emoji#for('crying_cat_face')
else
	" GUI MacVim for example
	let g:syntastic_error_symbol='✗'
	let g:syntastic_warning_symbol='⚠'
end

" Wrap in Git Commit Messages
autocmd FileType gitcommit set tw=72 formatoptions+=t

" Clear the search buffer when hitting return
nnoremap <CR> :nohlsearch<cr>
