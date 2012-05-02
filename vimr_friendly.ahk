; IMPORTANT INFO ABOUT GETTING STARTED: Lines that start with a
; semicolon, such as this one, are comments.  They are not executed.

; This script has a special filename and path because it is automatically
; launched when you run the program directly.  Also, any text file whose
; name ends in .ahk is associated with the program, which means that it
; can be launched simply by double-clicking it.  You can have as many .ahk
; files as you want, located in any folder.  You can also run more than
; one ahk file simultaneously and each will get its own tray icon.

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
return

; Note: From now on whenever you run AutoHotkey directly, this script
; will be loaded.  So feel free to customize it to suit your needs.

; Please read the QUICK-START TUTORIAL near the top of the help file.
; It explains how to perform common automation tasks such as sending
; keystrokes and mouse clicks.  It also explains more about hotkeys.

