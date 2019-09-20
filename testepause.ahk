#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SetWorkingDir %A_ScriptDir%  ; Garante um diretório inicial consistente.(???)
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
SetKeyDelay, 50
q::
CodProcd := ["54010012", "42020141", "56020032", "94010180", "94010165", "94010155", "94010189", "94010138", "94010139", "94010140", "94010142", "94010143", "94010144", "94010122", "42030030", "54080126", "94010156", "42030048", "94010126", "54140013", "94010009", "94010008", "94010007", "42030286", "42030287", "42030072", "94010128", "94010127", "54010098", "42030250", "54010187", "94010185", "42030161", "94010187", "94010129", "94010131", "94010130", "54110041", "94010167", "94010133", "94010136", "94010135", "42030219", "94010137", "94010134", "94010141", "49030230", "54019991", "94010152"]
Loop, 10 {
    i += 1
    Send ryryryr
    ;Send {End}
    ;Send {Home}
    ;Send {Tab}
    Send % CodProcd[i]
    Send {Enter}
    ;i += 1
}
ExitApp