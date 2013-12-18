
" Set to not-vi-compatible
set nocompatible

set viminfo+=n$VIM

" Set the colorscheme - desert fo life
colorscheme desert

" Set tab behavior
set expandtab     " Expand tabs into spaces
set tabstop=4     " Four spaces, to be exact
set shiftwidth=4  " Width of auto-ident 

set backspace=indent,eol,start

set ruler       " show the cursor position all the time
set showcmd     " display incomplete commands
set incsearch   " do incremental searching

" Options that let the Vim-R plugin work
syntax enable
filetype plugin on
filetype indent on

" Options that I like for Vim-R
" Quiet startup, no save or restoring workspace dialogs
let vimrplugin_r_args = "--sdi --no-save --no-restore-data --quiet"
" No using Vim to display help pages
let vimrplugin_vimpager = "no"


" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
syntax on
set hlsearch

" Disable the arrow keys
map <Up> ""
map <Down> ""
map <Left> ""
map <Right> ""



" Favorite macros

" Insert text to set stringsAsFactors = FALSE.  
" I do this in every new R file, so may as well make it easier...
let @s="o#ü Strings ain't factorsoptions(stringsAsFactors = FALSE)qkb"


" When working on an R-markdown file, insert a code chunk
let @i='i```{r chunkname}```kkkllll'

