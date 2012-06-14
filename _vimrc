" Set to not-vi-compatible
set nocompatible

" Make Vim behave more like Windows (I probably don't actually want this)
source $VIMRUNTIME/mswin.vim

" Some additional Windows-specific items for the mouse (!)
behave mswin

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




" MyDiff function (not sure what this is)
set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let eq = ''
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      let cmd = '""' . $VIMRUNTIME . '\diff"'
      let eq = '"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction


" Load any local overrides
let localvimrc = expand('<sfile>:p:h') . '/local.vimrc'
if filereadable(localvimrc)
    exe 'source' localvimrc
endif
