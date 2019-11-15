" vim plugin to create Epitech header
" Assouline Yohann
" 2019

function! Header()

    let project_name = input('Enter project name: ')
    let description = input('Enter file description: ')
    let year = system("date \"+%Y\"")
    let extension = expand('%:e')
    let file_name = expand('%:t:r')
    let comment_tab = ["/*", "** ", "*/"]

    if project_name == ""
        let project_name = "project name"
    endif

    if description == ""
        let description = "description"
    endif

    if file_name == "makefile" || file_name == "Makefile" || extension == "py" || extension == "rb"
        let comment_tab[0] = "##"
        let comment_tab[1] = "## "
        let comment_tab[2] = "##"
    endif

    call append(0, "". comment_tab[0])
    call append(1, comment_tab[1] . "EPITECH PROJECT, " . year[0:3])
    call append(2, comment_tab[1] . "" . project_name)
    call append(3, comment_tab[1] . "File description:")
    call append(4, comment_tab[1] . "" . description)
    call append(5, "" . comment_tab[2])

endfunction

command! Header execute Header()
