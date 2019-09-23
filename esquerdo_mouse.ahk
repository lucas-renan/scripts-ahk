#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SetWorkingDir %A_ScriptDir%  ; Garante um diretório inicial consistente.(???)
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
SetKeyDelay, 50
s::
MouseClick, left, , , 100 ; clica com o esquerdo do mouse n vezes na posição que ele estiver
ExitApp
