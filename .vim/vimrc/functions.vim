"============== Custom Functions ===============

function! CompileFile()
    write
    "Set this variable to compile as different name"
    if exists("g:compileName")
        execute "!~/MydotFiles/InfinyCompiler.sh % -n" g:compileName
    else
        !~/MydotFiles/InfinyCompiler.sh % 
    endif
endfunction

function! VimuxCurrentSelection(mode)
    
    if a:mode == "n"
        normal! "xyy
        let l:currentSelection = getreg('x')
        normal j
    elseif a:mode == "v"
        normal! "xy
        let l:startLine = line("'<")
        let l:endLine   = line("'>")
        let l:lines = getline(l:startLine, l:endLine)
        let l:currentSelection = joint(l:lines)
        " execute "normal!" l:nSkipLines "j"
    endif

    :call VimuxSendText(l:currentSelection)

endfunction 
