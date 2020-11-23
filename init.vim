" Configuración inicial 

set number " Para el número de cada línea
set title " Muestra el titulo del archivo actual
set cursorline " Resalta la línea actual 
set colorcolumn=120 " Muestra la columna limite a 120 carácteres
set smartcase " No ignorar mayúsculas si la palbra a buscar contiene mayúsculas
" set mouse=a "Permite la integración del mouse (seleccionar texto, mover el cursor)
set spelllang=en,es " Corregir palabras usando diccionarios en inglés y español
set showcmd " Para ver el comando que estamos ejecutando
set encoding=utf-8 " Formato de codificación 
set showmatch " Resalta la apertura de parentesis 
set sw=4 " Si pulsamos tab, se efectuan 4 espacios
syntax enable " para resaltar la sintaxis 
set autoindent " Si aplicamos tabulación y saltamos de línea con Enter, se conserva la tabulación 
set ruler " Para determinar la posición del cursor, fila-columna 

" Directorio de plugins
call plug#begin('~/.local/share/nvim/plugged')

" Aquí irán los plugins a instalar

Plug 'joshdick/onedark.vim' " Tema one dark inspirado en atom 
" PARA MOSTRAR LOS DIRECTORIOS EN ARBOL
Plug 'scrooloose/nerdtree' " Para poder ver la rama de archivos en el que estoy trabajando
Plug 'xuyuanp/nerdtree-git-plugin'
" AQUI TERMINA LO DE LOS DIRECTORIOS EN ARBOL
Plug 'Yggdroot/indentLine' " Para tener una línea que me marque el indentado
Plug 'iCyMind/NeoSolarized' " Tema neozolarized

" El siguiente plug pertenece a la barra de estado.
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'  " Temas para airline
" Aquí termina la barra de estado


" PLUG PARA LA BÚSQEDA INCREMENTAL
Plug 'haya14busa/incsearch.vim'
" Aquí termina plug para búsqueda incremental

call plug#end()

" Luego de esta línea puedes agregar tus configuraciones y mappings
set termguicolors  " Activa true colors en la terminal
set background=dark  " Fondo del tema: dark/light
"colorscheme NeoSolarized  " Activa tema NeoSolarized
"colorscheme onedark  " Activa tema onedark
"colorscheme zellner " Nombre del tema 
"set background="dark" " fondo del tema 

nnoremap <C-s> :w<CR> " Atajo para guardar haciendo uso de Ctrl+s

"DTreeChDirMode = 2  " Cambia el directorio actual al nodo padre actual

" CORRESPONDE AL PLUG NERDTREE
" Abrir/cerrar NERDTree con F2
map <F2> :NERDTreeToggle<CR> " Abrir/Cerrar NERDTree con F2

" No mostrar en ciertos tipos de buffers y archivos
let g:indentLine_fileTypeExclude = ['text', 'sh', 'help', 'terminal']
let g:indentLine_bufNameExclude = ['NERD_tree.*', 'term:.*']
" AQUÍ TERMINA NERDTREE


" Maps requeridos PARA BÚSQUEDA INCREMENTAL
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
" Quitar resaltado luego de buscar
let g:incsearch#auto_nohlsearch = 1
" AQUÍ TERMINA MAPS PARA BÚSQUEDA INCREMENTAL



" ESTO PERTENECE A LA BARRA DE ESTADO
let g:airline#extensions#tabline#enabled = 1  " Mostrar buffers abiertos (como pestañas)
let g:airline#extensions#tabline#fnamemod = ':t'  " Mostrar sólo el nombre del archivo

" Cargar fuente Powerline y símbolos (ver nota)
let g:airline_powerline_fonts = 1

set noshowmode  " No mostrar el modo actual (ya lo muestra la barra de estado)
" AQUI TERMINA LA BARRA DE ESTADO 
