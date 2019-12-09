function! epitech_header#Check_epitech_header()
    let line = getline(2)

    if stridx(line, "EPITECH PROJECT,") != -1 " There is already a header
        return
    endif
    call epitech_header#Create_epitech_header()
endfunction

function!  epitech_header#Create_epitech_header()
    if !exists('g:vim_project_ProjectName ')
        let project_name = "project_name"
    else
        let project_name = g:vim_project_ProjectName
    endif
    let year = system("date \"+%Y\"")
    let extension = expand('%:e')
    let file_name = expand('%:t:r')
    let comment_tab = ["/*", "** ", "*/"]

    if file_name ==# "makefile" || file_name ==# "Makefile" || extension ==# "py" || extension ==# "rb"
        let comment_tab[0] = "##"
        let comment_tab[1] = "## "
        let comment_tab[2] = "##"
    endif

    call append(0, "". comment_tab[0])
    call append(1, comment_tab[1] . "EPITECH PROJECT, " . year[0:3])
    call append(2, comment_tab[1] . "" . project_name)
    call append(3, comment_tab[1] . "File description:")
    call append(4, comment_tab[1] . "" . file_name)
    call append(5, "" . comment_tab[2])
    call append(6, "")
endfunction
