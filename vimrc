set tabstop=4
set shiftwidth=4 " sw - number of spaces for tab
set expandtab " et - replace tab with spaces
set smartindent " sta - allow to delete spaces as tabs
set title " reflect file name in window title
set ruler " show current line and column in status bar
set laststatus=2 " make status bar always visible
set paste
set pastetoggle=<F2>
syntax on " syntax higlighting

" specific behavior for different file types
autocmd BufEnter *.haml set ai sw=2 ts=2 sta et fo=croql
autocmd BufEnter *.rb set ai sw=2 ts=2 sta et fo=croql
autocmd BufEnter *.erb set ai sw=2 ts=2 sta et fo=croql
autocmd BufEnter *.js set ai sw=2 ts=2 sta et fo=croql
autocmd BufEnter *.html set ai sw=2 ts=2 sta et fo=croql

