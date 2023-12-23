":::instalacion de plugins:::

call plug#begin('~/AppData/Local/nvim/plugged') 	"directorio donde se van a instalar los plugins

"plugins
Plug 'joshdick/onedark.vim' 		"tema
Plug 'vim-airline/vim-airline'		"diseño de la barra en la cual se muestran los modos, la linea, etc.
Plug 'vim-airline/vim-airline-themes'	"temas para el vim-airline
Plug 'preservim/nerdtree'		"gestor de archivos en forma de arbol.
Plug 'christoomey/vim-tmux-navigator'	"poder navegar entre archivos abiertos
Plug 'jiangmiao/auto-pairs'		"autocompletado de llaves, corchetes, etc.

call plug#end() 			"cerramos el llamado de los plugins

"::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

"CONFIGURACIONES BASICAS 
set number 				"muestra los numeros de cada linea en la parte izquierda 
set relativenumber 			"la distribucion de los numeros en lineas de manera relativa
set mouse=a 				"permite la interaccion con el mouse
"set noshowmode				"me deja de mostrar el modo en el que estamos 'normal, insert, visual, etc'
syntax enable 				"activa el coloreado de sintaxis en algunos tipos de archivos como html, c, c++
set encoding=utf-8 			"permite setear la codificación de archivos para aceptar caracteres especiales
set sw=4 				"la indentación genera 4 espacios
set clipboard=unnamed

		
"configuracion del tema
set termguicolors 			"activa el true color en la terminal
colorscheme onedark 			"activar el tema onedark

"configuracion de vim-airline
let g:airline#extensions#tabline#enabled = 1	"muestra la linea de pestaña en la que estamos buffer
let g:airline#extensions#tabline#formatter = 'unique_tail'	"muestra solo el nombre del archivo que estamos modificando
let g:airline_theme='onedark'	"el tema de airline

"configuracion de nerdtree
"mapeando el abrir y cerrar de nerdtree con nerdtreetoggle vemos los archivos en el arbol y podemos cerrarlo a la vez, map es la C mayuscula representa el
"control y -n la tecla n lo que indica que realizará la siguiente funcion de excribir el comando NERDTreeToggle y CR significa ENTER.
map <C-n> :NERDTreeToggle<CR>

"::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
" Atajos de teclado y snippets

let mapleader = ","

"Navegación por guias

inoremap ,gg <++>
inoremap <leader><leader> <Esc>/<++><Enter>"_c4l
vnoremap <leader><leader> <Esc>/<++><Enter>"_c4l
map <leader><leader> <Esc>/<++><Enter>"_c4l

"Controles generales
inoremap <C-s> <Esc>:w<CR>a
inoremap ;; <Esc>
nnoremap ;; a

"Atajos LaTeX
inoremap ,sc \textsc{}<++><Esc>4hi
inoremap ,ss \section*{}<++><Esc>4hi
inoremap ,uu \usepackage{}<++><Esc>4hi
inoremap ,us \usepackage[]{<++>}<++><Esc>10hi
inoremap ,bf \textbf{}<++><Esc>4hi
inoremap ,ct \citet{}<++><Esc>4hi
inoremap ,mc \multicolumn{}{l}{``<++>''}<++><Esc>17hi
inoremap ,ts \textsuperscript{}<++><Esc>4hi
inoremap ,cp \citep{}<++><Esc>4hi
inoremap ,it \textit{}<++><Esc>4hi
inoremap ,in \include{}<++><Esc>4hi
inoremap ,nn \textsc{neg}
inoremap ,no \noindent
inoremap ,tt \begin{tabular}{<++>}<CR><++><Space>\\<CR><++><Space>\\<CR><++><Space>\\<CR>\end{tabular}<++>
inoremap ,ct \citet{}<++><Esc>4hi
inoremap ,ipa {\setmainfont{Doulos SIL}<Space>}<Esc>1hi
inoremap ,05 \vspace{0.5cm}
inoremap ,1 \vspace{1cm}
inoremap ,03 \vspace{0.3cm}
inoremap yy &<Space>