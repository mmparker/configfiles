" Set to not-vi-compatible
set nocompatible

set viminfo+=n$HOME

" Set the colorscheme - desert fo life
colorscheme desert

" Set tab behavior
set expandtab     " Expand tabs into spaces
set tabstop=4     " Four spaces, to be exact
set shiftwidth=4  " Width of auto-ident 

" Fix backspace behavior
set backspace=indent,eol,start

" Other display settings
set ruler       " show the cursor position all the time
set showcmd     " display incomplete commands
set incsearch   " do incremental searching
set colorcolumn=81 "Highlight the 81st column


" Use a blinking upright bar cursor in Insert mode, a blinking block in normal
if &term == 'xterm'
    let &t_SI = "\<Esc>[5 q"
    let &t_EI = "\<Esc>[1 q"
endif

" Vim-R plugin options
syntax enable
filetype plugin on
filetype indent on

" Quiet startup, no save or restoring workspace dialogs
let R_args = ['--sdi', '--no-save', '--no-restore-data', '--quiet']

" No using Vim to display help pages
let R_nvimpager = "no"

" Lines added by the Vim-R-plugin command :RpluginConfig (2014-Apr-29 17:09):
" Use Ctrl+Space to do omnicompletion:
if has("gui_running")
    inoremap <C-Space> <C-x><C-o>
else
    inoremap <Nul> <C-x><C-o>
endif

" Arrow <- hotkey
let R_assign_map = "<M-->"


" Pipe hotkey
inoremap <C-p> <Space>%>% 





" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

" Disable the arrow keys
map <Up> ""
map <Down> ""
map <Left> ""
map <Right> ""



" Favorite macros

" Macro for converting an HTML combobox into a SAS format
" Paste the combobox options into Vim, one option per line, and fire this off
" Developed for TBdb source, no idea if it works anywhere else.  
" And I don't care.
let @f='gg0i€kuproc format;value€ýc€ýb TYPE_NEW_VALUE_NAME_HERE€ýc€ýb:%s/<option value=€ýc€ýb"//g:%s/">/ = "/g:%s/€ýc€ýb<\/option>/"/g:%s/<option selected="selected" value="//g€kb€kb:%s/&lt;//g:%s/&gt;//gGGi;run;'


" Insert text to set stringsAsFactors = FALSE.  
" I do this in every new R file, so may as well make it easier...
let @s="o#€ü Strings ain't factorsoptions(stringsAsFactors = FALSE)q€kb"


" When working on an R-markdown file, insert a code chunk
let @i='i```{r chunkname}```kkkllll'





" vim-plug
call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'jalvesaq/Nvim-R'
call plug#end()




" Load any local overrides
let localvimrc = expand('<sfile>:p:h') . '/local.vimrc'
if filereadable(localvimrc)
    exe 'source' localvimrc
endif
