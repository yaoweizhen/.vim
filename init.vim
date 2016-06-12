set tabstop=2
set softtabstop=2
set shiftwidth=2
set textwidth=79
set expandtab
set fileformat=unix

set autoindent
set smartindent
syntax on
filetype plugin indent on

set guifont=Monospace\ 12

execute pathogen#infect()

"set termguicolors
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set background=dark
colorscheme solarized

" CtrlP
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_map = '<F11>'
"let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_custom_ignore = {
      \ 'dir':  '\v[\/]\.(git|hg|svn)$',
      \ 'file': '\v\.(bak|exe|so|dll)$',
      \ }
nnoremap <c-p>p :CtrlP<CR>
nnoremap <c-p>b :CtrlPBuffer<CR>
nnoremap <c-p>m :CtrlPMixed<CR>

" PHP
let g:PHP_vintage_case_default_indent=1

" Drupal
if has("autocmd")
  " Drupal *.module and *.install files.
  augroup module
    autocmd BufRead,BufNewFile *.module set filetype=php
    autocmd BufRead,BufNewFile *.install set filetype=php
    autocmd BufRead,BufNewFile *.test set filetype=php
    autocmd BufRead,BufNewFile *.inc set filetype=php
    autocmd BufRead,BufNewFile *.profile set filetype=php
    autocmd BufRead,BufNewFile *.view set filetype=php
  augroup END
endif

let g:NERDTreeChDirMode=2

