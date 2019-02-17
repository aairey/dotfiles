"                                                  "
" This is my personal config for vim               "
"                                       Andy Airey "

syntax enable

" line number configuration, switch between insert and normal mode
set number relativenumber
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

" Highlight searches, while typing
set hlsearch
set incsearch

" Show vim commands as they are typed in
set showcmd

" Open windows below and to the right (more natural)
set splitbelow
set splitright

" Keymaps
"

" Easier window navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Colors / Look-and-Feel
"

" set different background in gui
if has('gui_running') 
    set background=light
else
    set background=dark
endif

" enable this if you cannot enable a solarized color palette in your terminal
"let g:solarized_termcolors=256
" enable solarized scheme, only needed when terminal is not using solarized by
" itself
"colorscheme solarized

" Enable powerline
python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup
set laststatus=2 "always enable statusline

" Plugins
"

" Enable GitGutter
let g:gitgutter_enabled=1
" Ansible settings
au BufRead,BufNewFile */playbooks/*.yml set filetype=yaml.ansible
let g:ansible_name_highlight = 'b'
let g:ansible_attribute_highlight = "b"
let g:ansible_extra_keywords_highlight = 1
" Close dropdown when word is completed
let g:ycm_autoclose_preview_window_after_completion=1

" Allow YCM to use UltiSnips with Enter
let g:UltiSnipsExpandTrigger = "<nop>"
let g:ulti_expand_or_jump_res = 0
function ExpandSnippetOrCarriageReturn()
    let snippet = UltiSnips#ExpandSnippetOrJump()
    if g:ulti_expand_or_jump_res > 0
        return snippet
    else
        return "\<CR>"
    endif
endfunction
inoremap <expr> <CR> pumvisible() ? "<C-R>=ExpandSnippetOrCarriageReturn()<CR>" : "\<CR>"

" Special cases
"

" fixes YAML auto-indent
autocmd Filetype yaml setlocal ts=2 sw=2 expandtab

" Set correct filetype for Jenkinsfiles
au BufReadPost Jenkinsfile set syntax=groovy
au BufReadPost Jenkinsfile set filetype=groovy

" Rainbow brackets for Jenkinsfiles
command Rainbow :so ~/.vim/colors/RainbowBrackets.vim
autocmd FileType Jenkinsfile Rainbow


