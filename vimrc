set tabstop=4
set shiftwidth=4 " sw - number of spaces for tab
set expandtab " et - replace tab with spaces
set smartindent " sta - allow to delete spaces as tabs
set title " reflect file name in window title
set paste
set ruler " show current line and column in status bar
set viminfo='20,\"50 " remember last edits
set history=50 " keep command line history
set laststatus=2 " make status bar always visible
set pastetoggle=<F5>
syntax on " syntax higlighting

" specific behavior for different file types
autocmd BufEnter *.haml set ai sw=2 ts=2 sta et fo=croql
autocmd BufEnter *.rb set ai sw=2 ts=2 sta et fo=croql
autocmd BufEnter *.erb set ai sw=2 ts=2 sta et fo=croql
autocmd BufEnter *.js set ai sw=2 ts=2 sta et fo=croql
autocmd BufEnter *.html set ai sw=2 ts=2 sta et fo=croql
autocmd BufEnter *.coffee set ai sw=2 ts=2 sta et fo=croql
autocmd BufEnter *.yml set ai sw=2 ts=2 sta et fo=croql
autocmd BufEnter *.json set ai sw=4 ts=4 sta et fo=croql
au BufRead,BufNewFile *.json set filetype=json
autocmd BufEnter *.php set ai sw=4 ts=4 sta et fo=croql

" restore cursor position
autocmd BufReadPost *
\ if line("'\"") > 0 && line ("'\"") <= line("$") |
\   exe "normal! g'\"" |
\ endi
