;#SiMco 2019 - renan.m
;Script com finalidade de criar repasses no Tasy Delphi
;Vers�o: 0.1

;------configura��es
#NoEnv  ; Recomendado para performance e compatibilidade com vers�es do autohotkey futuras
SetWorkingDir %A_ScriptDir%  ; Garante um diret�rio inicial consistente.(???)
SetKeyDelay, 100
;----------

p:: ;------pausa o script, para emerg�ncias
    pause
return

; �nicio do bloco de Repasses
s:: 
SetBatchLines, 100 ; milisegundos entre cada execu��o
;----------

;-----vari�veis
loop 382 {
    Send, !{e}
    Send {enter}
}
ExitApp