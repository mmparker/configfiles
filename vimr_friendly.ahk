; Capslock is the new Escape
Capslock::Esc

; On Win-A, move the open R file (in Vim) to the top left corner of the screen
; Send the Vim-R trigger for opening a new R session
; Reposition R alongside Vim
; Need to make this resolution-independent somehow...
#a::
SetTitleMatchMode RegEx
WinWait, .*\.r.*GVIM.*, , 10
WinMove, 0, 0
WinMove, , , 0, 0, DEFAULT, 930
Send \rf
WinWait R Console
WinMove, , , 669, 0, 611, 930
WinActivate, .*\.r.*GVIM.*, , 10
return
