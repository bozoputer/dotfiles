" Do not try to be vi compatible
set nocompatible

" Turn on syntax highlighting
syntax on

" map the keys jk to the Escape key to improve efficiency.
imap jk <Esc> 

" Security
set modelines=0

" Show line numbers
set number

" Blink cursor on error instead of beeping
set visualbell

" Encoding
set encoding=utf-8

" Whitespace
set wrap
set textwidth=79
set tabstop=4

" Blink cursor in Insert mode
set guicursor+=n-v-c:blinkon0

" Change cursor shape in different modes
let &t_SI.="\e[5 q"
let &t_EI.="\e[1 q"

" 
hi MatchParen cterm=underline ctermbg=none ctermfg=none

