set number    "Sets number on the left
set relativenumber  "Sets relative numbers
set autoindent   "Sets auto indent
filetype indent on  "Sets auto indent depending on file type
syntax on  "Colorizes the syntax

" Map a key to run Betty style checker
map <F2> :!betty %<CR>

" Initialzing plug
call plug#begin('~/.vim/plugged')
Plug 'csexton/trailertrash.vim'
call plug#end()

" Map a key to run TrailerTrash
nnoremap <F4> :TrailerTrim<CR>

" Map F3 to select entire buffer and reformat
nnoremap <F3> :%norm! ggVG=<CR>

" Compile via vim
function! Compile()
  let source_filename = expand('%')
  let number = matchstr(source_filename, '\d\+')
  let test_filename =  number . '-main.c'
  let output_filename = substitute(source_filename, '\.c$', '', '')
  let command = 'gcc -Wall -pedantic -Werror -Wextra -std=gnu89 _putchar.c ' . source_filename . ' ' . test_filename . ' -o ' . output_filename
  execute '!'.command
endfunction

command! -nargs=0 Compile :call Compile()

nnoremap <F5> :Compile<CR>
