" Vim Custom Syntax highlight file for
" 4chan stores
"
" Highlights quotes ">..." as comments
"
"
" ~/.vim/syntax/4c.vim
" :set syn=4c


syn region quote start=">" end="\n"

hi def link quote Comment
