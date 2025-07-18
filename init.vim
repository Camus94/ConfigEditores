let mapleader = " " 

call plug#begin()

Plug 'joshdick/onedark.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'hkupty/iron.nvim'
Plug 'neovim/nvim-lspconfig'           " Configurador LSP
Plug 'hrsh7th/nvim-cmp'                " Autocompletado
Plug 'hrsh7th/cmp-nvim-lsp'            " Conexión cmp ↔ LSP
Plug 'hrsh7th/cmp-buffer'              " Sugerencias del buffer actual
Plug 'hrsh7th/cmp-path'                " Autocompletado de rutas
Plug 'hrsh7th/cmp-cmdline'             " Completado en línea de comandos
Plug 'L3MON4D3/LuaSnip'                " Snippets (requerido por cmp)
Plug 'saadparwaiz1/cmp_luasnip'        " Integración cmp ↔ LuaSnip

call plug#end()

"""" CONFIGURACIONES BASICAS

set number
set relativenumber
set mouse=a
syntax enable
set encoding=utf-8
set sw=4
set clipboard=unnamed

"""""CONFIGURACION DEL TEMA
set termguicolors
colorscheme onedark

"""IRONVIM"""
lua require("iron_config")
lua require("completion_config")

""""configuracion de vim-airline
"let g:airline#extensions#tabline#enabled = 1	"muestra la linea de pestaña en la que estamos buffer
let g:airline#extensions#tabline#formatter = 'unique_tail'	
let g:airline_theme='onedark'

""""configuracion de nerdtree
"mapeando el abrir y cerrar de nerdtree con nerdtreetoggle vemos los archivos en el arbol y podemos cerrarlo a la vez, map es la C mayuscula representa el
"control y -n la tecla n lo que indica que realizará la siguiente funcion de excribir el comando NERDTreeToggle y CR significa ENTER.
map <C-n> :NERDTreeToggle<CR>

""""Navegación por guias
inoremap ,gg <++>
inoremap ,, <Esc>/<++><Enter>"_c4l
vnoremap ,, <Esc>/<++><Enter>"_c4l
map ,, <Esc>/<++><Enter>"_c4l

"Controles generales
inoremap <C-s> <Esc>:w<CR>a
inoremap ;; <Esc>
"nnoremap ;; a

"Atajos LaTeX
inoremap ,lsc \textsc{}<++><Esc>4hi
inoremap ,lss \section*{}<++><Esc>4hi
inoremap ,luu \usepackage{}<++><Esc>4hi
inoremap ,lus \usepackage[]{<++>}<++><Esc>10hi
inoremap ,lbf \textbf{}<++><Esc>4hi
inoremap ,lct \citet{}<++><Esc>4hi
inoremap ,lmc \multicolumn{}{l}{``<++>''}<++><Esc>17hi
inoremap ,lts \textsuperscript{}<++><Esc>4hi
inoremap ,lcp \citep{}<++><Esc>4hi
inoremap ,lit \textit{}<++><Esc>4hi
inoremap ,lin \include{}<++><Esc>4hi
inoremap ,lnn \textsc{neg}
inoremap ,lno \noindent
inoremap ,ltt \begin{tabular}{<++>}<CR><++><Space>\\<CR><++><Space>\\<CR><++><Space>\\<CR>\end{tabular}<++>
inoremap ,lct \citet{}<++><Esc>4hi
inoremap ,lipa {\setmainfont{Doulos SIL}<Space>}<Esc>1hi
inoremap ,l05 \vspace{0.5cm}
inoremap ,l1 \vspace{1cm}
inoremap ,l03 \vspace{0.3cm}
inoremap ,yy &<Space>

"Atajos R
inoremap ,rr <Space><-<Space>
inoremap ,rs seq(,<space><++>)<++><Esc>10hi
inoremap <C-CR> <Esc>:lua require("iron.core").send_line()<CR>a<CR>
