;#SiMco 2019 - renan.m
;Script com finalidade de criar repasses no Tasy Delphi
;Versão: 0.1

;------configurações
#NoEnv  ; Recomendado para performance e compatibilidade com versões do autohotkey futuras
SetWorkingDir %A_ScriptDir%  ; Garante um diretório inicial consistente.(???)
SetKeyDelay, 100
;----------

p:: ;------pausa o script, para emergências
    pause
return

; ínicio do bloco de Repasses
s:: 
SetBatchLines, 100 ; milisegundos entre cada execução
;----------

;-----variáveis
loop 382 {
    Send, !{e}
    Send {enter}
}
ExitApp