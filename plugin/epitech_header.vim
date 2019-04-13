" vim plugin to create Epitech header
" Assouline Yohann
" 2019

function! Header()
    let project_name = input('Enter project name: ')
    let description = input('Enter file description: ')
    let year = system("date \"+%Y\"")

    if project_name == ""
        let project_name = "project name"
    endif
    if description == ""
        let description = "description"
    endif

    call append(0, "/*")
    call append(1, "** EPITECH PROJECT, " . year[0:3])
    call append(2, "** " . project_name)
    call append(3, "** File description:")
    call append(4, "** " . description)
    call append(5, "*/")
endfunction

command Header execute Header()
