;#SiMco 2019 - renan.m
;Script com finalidade de criar repasses no Tasy Delphi
;Versão: 0.1

;------configurações
#NoEnv  ; Recomendado para performance e compatibilidade com versões do autohotkey futuras
SetWorkingDir %A_ScriptDir%  ; Garante um diretório inicial consistente.(???)

p::
    pause
return

s:: ; comando para ínicio do script
SetBatchLines, 2000 ; 500 milisegundos entre cada execução
;----------
/*
MsgBox, 4,, Would you like to continue? (press Yes or No)
IfMsgBox Yes
    MsgBox You pressed Yes.
else
    MsgBox You pressed No.
*/
;-------variáveis
;i := 0 ; contador de linhas
;j := 0
;cod_procd := 1 ; váriavél de código de procedimento
;cred := 1 ; variável de valor em reais opção crédito, cartão sim etc
;deb := 1 ; variável de valor em reais opção débito
;---------

;https://autohotkey.com/board/topic/49749-getting-variable-to-display-in-message-box/
/*
Gui, Add, ListBox, vCodProcd, 122|66|66|77|95|135|111|118|125|167|201|141|107|120,5|161|258,5|227|255|320|202,5|15,5|13,5|12|131,5|177,5|94,5|202,5|331|165|314|222|189,5|165|129,5|118,5|410,5|285,5|200,5|80,5|205,5|161|151|200|208|115,5|206|96|118,5|219
Gui, Add, Button, default, Submit 
Gui, Add, Button, default, Cancel 
Gui, Show,w420 h145, Código do Produto
return 

ButtonSubmit: 
	Gui, Submit ; what sinkfaze said
	;MsgBox, Value Is: %CodProcd%
    Send {Down}
    Send %CodProcd% 
ButtonCancel: 
	ExitApp

;------------------------------------------------
*/

/*
ArrayCount := 0
Loop, Read, cred2.txt   ; This loop retrieves each line from the file, one at a time.
{
    ArrayCount += 1  ; Keep track of how many items are in the array.
    Array%ArrayCount% := A_LoopReadLine  ; Store this line in the next array element.
}
;-----Send % "" . Array%i%
loop 4{
    Send % "" . Array%i%
    Send {Enter}
    i += 1
    
}

Loop, Read, cred.txt-\|
    {
        ArrayCred%j% := A_LoopReadLine
        j += 1
    }
Send % "" . ArrayCred%i%

ExitApp
*/

;Pause::Pause  ; Assign the toggle-pause function to the "pause" key...
;p::Pause  ; ... or assign it to Win+p or some other hotkey.
/*
t(){
    Sleep, 2000
    MsgBox, 4, , Continuar?, 10  ; 5-second timeout.
    IfMsgBox, No
        ExitApp
    IfMsgBox, Timeout
        Return ;
}
    ;-----cod_procd
        Gui, Add, ListBox, vCodProcd, 54010012|42020141|56020032|94010180|94010165|94010155|94010189|94010138|94010139|94010140|94010142|94010143|94010144|94010122|42030030|54080126|94010156|42030048|94010126|54140013|94010009|94010008|94010007|42030286|42030287|42030072|94010128|94010127|54010098|42030250|54010187|94010185|42030161|94010187|94010129|94010131|94010130|54110041|94010167|94010133|94010136|94010135|42030219|94010137|94010134|94010141|49030230|54019991|94010152
        Gui, Add, Button, default, Submit 
        Gui, Add, Button, default, Cancel 
        Gui, Show,w420 h145, Código do Produto
        return 
        ButtonSubmit: 
            Gui, Submit ; 
            Send %CodProcd% 
        ButtonCancel: 
            ExitApp
    ;-----------
    
;------------
i := 30
CodProcd := ["54010012", "42020141", "56020032", "94010180", "94010165", "94010155", "94010189", "94010138", "94010139", "94010140", "94010142", "94010143", "94010144", "94010122", "42030030", "54080126", "94010156", "42030048", "94010126", "54140013", "94010009", "94010008", "94010007", "42030286", "42030287", "42030072", "94010128", "94010127", "54010098", "42030250", "54010187", "94010185", "42030161", "94010187", "94010129", "94010131", "94010130", "54110041", "94010167", "94010133", "94010136", "94010135", "42030219", "94010137", "94010134", "94010141", "49030230", "54019991", "94010152"]
Loop % CodProcd.Length() {
    Send % CodProcd[i]
    Send {Enter}
    i += 1
}
*/
i := 1
CodProcd := ["54010012", "42020141", "56020032", "94010180", "94010165", "94010155", "94010189", "94010138", "94010139", "94010140", "94010142", "94010143", "94010144", "94010122", "42030030", "54080126", "94010156", "42030048", "94010126", "54140013", "94010009", "94010008", "94010007", "42030286", "42030287", "42030072", "94010128", "94010127", "54010098", "42030250", "54010187", "94010185", "42030161", "94010187", "94010129", "94010131", "94010130", "54110041", "94010167", "94010133", "94010136", "94010135", "42030219", "94010137", "94010134", "94010141", "49030230", "54019991", "94010152"]
Loop % CodProcd.Count() {
    Send % CodProcd[i]
    Send {Enter}
    i += 1
}
;Send % CodProcd.Count()
;Send % CodProcd.Length()
ExitApp