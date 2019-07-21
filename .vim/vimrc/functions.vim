"============== Custom Functions ===============

function CompileFile()
    write
    "Set this variable to compile as different name"
    if exists("g:compileName")
        execute "!~/MydotFiles/InfinyCompiler.sh % -n" g:compileName
    else
        !~/MydotFiles/InfinyCompiler.sh % 
    endif
endfunction

"Save cursor position to jump back" 
function SavePos()
    let g:row =  line(".")
    let g:col  =  col(".") - 1
endfunction

"Enable/Disable spell check"
function SpellCheck()
    if &{spell}
        set nospell 
    else
        set spell
    endif
endfunction

