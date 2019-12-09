" vim plugin to create Epitech header
" Assouline Yohann
" 2019

if exists('g:vim_epitech_header_loadded')
    finish
endif
let g:vim_epitech_header_loadded = 1

if exists('g:is_epitech_project') && g:is_epitech_project == 1
    autocmd BufReadPost,BufNewFile *.c,*.h,*.py,Makefile,*.cpp,*.hpp
                \ call epitech_header#Check_epitech_header()
endif

command! Header call epitech_header#Create_epitech_header()
