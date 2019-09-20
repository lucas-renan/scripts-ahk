;#SiMco 2019 - renan.m
;Script com finalidade de criar repasses no Tasy Delphi
;Versão: 0.1

;------configurações
#NoEnv  ; Recomendado para performance e compatibilidade com versões do autohotkey futuras
SetWorkingDir %A_ScriptDir%  ; Garante um diretório inicial consistente.(???)
SetKeyDelay, 200
;----------

p:: ;------pausa o script, para emergências
    pause
return

; ínicio do bloco de Repasses
s:: 
SetBatchLines, 100 ; milisegundos entre cada execução
;----------

;-----variáveis
i := 1
CodProcd := ["0", "94010123", "45020094", "94010145", "45010021", "45050016", "94010166", "45020095", "45030155", "94010124", "45050172", "45050015", "94010125", "54050139", "54050081", "45030073", "45030103", "45050155"]
Cred := ["0", "117", "61", "155", "72", "126", "72", "78", "82", "122", "83", "107,5", "118,5", "173", "165,5", "73", "169,5", "167,5"]
Debi := ["0", "102", "55", "140", "65", "110", "65", "70", "70", "110", "75", "97", "108", "155", "151", "65", "153", "152"]
;-------------
Loop % CodProcd.Length(){
    i += 1
    Inicio:
        Send {Space}
        Send, !{n}
        Loop 9 {
            Send {Tab}
        }
        Send {Down}
        Send {P}
        Send {A}
        Send {R}
        Send {T}
        Loop 4 {
            Send {Down}
        }
        Send {Tab}
        Loop 4 {
            Send {Down}
        }
        Loop 15 {
            Send {Tab}
        }
        Send {Enter}
        Send {Tab}
        Send {Down}
        ;-----cod_procd
            Send % CodProcd[i]
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
        ;-----------cred
            Send % Cred[i]
        ;----------------
        
        Send {Tab}
        Send, !{s}
        ;--------//// ACABA AQUI O CRÉDITO
        Send {F6}
        Loop, 6 {
            Send {Tab}
        }
        Send {Esc}
        Send {Tab}
        Send {Esc}
        Send, !{s} ;///ACABA AQUI O CARTAO SIM
        Send {F6}
        Loop, 6 {
            Send {Tab}
        }
        Send {Down}
        Send {P}
        Send {A}
        Send {R}
        Send {T}
        Loop, 4 {
            Send {Down}
        }
        Send {Tab}
        Loop, 5 {
            Send {Down}
        }
        ;Loop, 23 {
        ;    Send {Tab} ;;; POR AQUI
        ;}
        Loop, 15 {
            Send {Tab} ;;; POR AQUI
        }
        ;//////
        Send {Enter}
        Send {Tab}
        Send {Down}
        ;-----cod_procd
            Send % CodProcd[i]
        ;-----------
        Send {Enter}
        Send {Enter}
        ;//////////
        Loop, 8 {
            Send {Tab}
        }
        Send {Enter}
        Send {Down}
        Loop, 10 {
            Send {BackSpace}
        }
        ;------------debi
            Send % Debi[i]
        ;-------------------
        Send {Tab}
        Send, !{s}
        Send, !{g}
        Loop, 10 {
        Send {PgDn}
        }
    }
ExitApp