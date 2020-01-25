" vim plugin to create Epitech header
" Assouline Yohann
" 2019

if exists('g:vim_epitech_header_loadded')
    finish
endif
let g:vim_epitech_header_loadded = 1

command! Header call epitech_header#Create_epitech_header()
