;#SiMco 2019 - renan.m
;Script com finalidade de criar repasses no Tasy Delphi
;Versão: 0.1

;------configurações
#NoEnv  ; Recomendado para performance e compatibilidade com versões do autohotkey futuras
SetWorkingDir %A_ScriptDir%  ; Garante um diretório inicial consistente.(???)
SetKeyDelay, 80
;----------

p:: ;------pausa o script, para emergências
    pause
return

; ínicio do bloco de Repasses
s:: 
SetBatchLines, 80 ; milisegundos entre cada execução
;----------

;-----variáveis
num_linha := 1
CodMedico := 736139


;-------------
;Loop % CodProcd.Length(){
Loop 44{
    ;----ler o arquivo de txt com os codigos 
textfile1 := "codigos.txt"

Loop, Read, %textfile1%
{
	;A_LoopReadLine
	If (A_Index = num_linha) {
		line_contents1 := A_LoopReadLine
		Break
	}
}
;----------

;---- ler o arquivo de txt com os valores
textfile2 := "valores.txt"

Loop, Read, %textfile2%
{
	;A_LoopReadLine
	If (A_Index = num_linha) {
		line_contents2 := A_LoopReadLine
		Break
	}
}
;----------

    num_linha += 1
    Inicio:
        Send, !{n}
        Loop 18 {
            Send {Esc}
            Send {Tab}
            ;Send {Esc}
        }
        Sleep, 2
        Send %CodMedico%
        Sleep, 2
        Loop 7 {
            Send {Tab}
        }
        Send {Enter}
        Send {Tab}
        Send {Down}
        ;-----codigo procedimento
            Sleep, 2
            Send %line_contents1%
            Sleep, 2
        ;-----------
        Send {Enter}
        Send {Enter}
        Loop, 8 {
            Send {Tab}
        }
        Send {Down}
        Loop, 10 {
            Send {BackSpace}
        }
        ;-----------valor
            Sleep, 2
            Send %line_contents2%
            Sleep, 2
        ;----------------
        
        Send {Tab}
        Send, !{s}
        Send, !{g}
    }
ExitApp