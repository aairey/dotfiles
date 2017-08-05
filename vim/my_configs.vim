"                                                  "
" This is my personal config for vim               "
"                                       Andy Airey "

syntax enable

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

" fixes YAML auto-indent
autocmd Filetype yaml setlocal ts=2 sw=2 expandtab

" set different background in gui
if has('gui_running') 
    set background=light
else
    set background=dark
endif

" enable this if you cannot enable a solarized color palette in your terminal
"let g:solarized_termcolors=256
colorscheme default

" Plugin related stuff
let g:gitgutter_enabled=1
let g:ansible_name_highlight = 'b'
let g:ansible_attribute_highlight = "b"
let g:ansible_extra_keywords_highlight = 1

