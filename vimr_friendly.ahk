; Capslock is the new Escape
Capslock::Esc

; On Win-A, move the open R file (in Vim) to the top left corner of the screen
; Send the Vim-R trigger for opening a new R session
; Reposition R alongside Vim
; Need to make this resolution-independent somehow...
#a::
SetTitleMatchMode RegEx
SysGet, Mon1, MonitorWorkArea, 1
WinWait, .*\.R.*GVIM.*, , 10
WinMove, 0, 0
WinMove, , , 0, 0, DEFAULT, %Mon1Bottom%
Send \rf
WinWait R Console
WinMove, , , 660, 0, 720, %Mon1Bottom%
WinActivate, .*\.r.*GVIM.*, , 10
return
