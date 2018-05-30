"-----------------------------------------------
" Plug
"-----------------------------------------------

call plug#begin('~/.local/share/nvim/plugged')
Plug 'dylanaraps/wal.vim'
Plug 'lervag/vimtex'
Plug 'donRaphaco/neotex'
call plug#end()

"-----------------------------------------------
" vim configs
"-----------------------------------------------

filetype on

set number
set relativenumber

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

set ignorecase
set smartcase

set incsearch
set hlsearch
set wrap
set linebreak

let mapleader = ','

filetype indent on

colorscheme wal

"-----------------------------------------------
" Basic Tools
"-----------------------------------------------

inoremap <Tab><Space> <Esc>/<++><Enter>"_c4l
vnoremap <Tab><Space> <Esc>/<++><Enter>"_c4l
map <Tab><Space> <Esc>/<++><Enter>"_c4l
inoremap ;gui <++>
noremap <Space> :noh<Enter>

"-----------------------------------------------
" LateX configs
"-----------------------------------------------

let maplocalleader = ','
let g:vimtex_view_general_viewer = 'evince'

autocmd FileType tex set spell spelllang=en_us

autocmd FileType tex inoremap ;bf   \textbf{}<Esc>T{i
autocmd FileType tex inoremap ;it   \textit{}<Esc>T{i
autocmd FileType tex inoremap ;tt   \texttt{}<Esc>T{i
autocmd FileType tex inoremap ;s    \section*{}<Esc>T{i
autocmd FileType tex inoremap ;ss   \subsection*{}<Esc>T{i
autocmd FileType tex inoremap ;sss  \subsubsection*{}<Esc>T{i
autocmd FileType tex inoremap ;fig  \begin{figure}[h]<Enter>\centering<Enter>\frame{\includegraphics[scale=<++>]{<++>}}<Enter>\caption{<++>}<Enter>\label{<++>}<Enter>\end{figure}<Enter><Esc>6k
autocmd FileType tex inoremap ;eqn  \begin{equation}<Enter>\end{equation}<Enter><Esc>kO
autocmd FileType tex inoremap ;tbl  \begin{center}<Enter>\begin{tabular}{<++>}<Enter>\hline<Enter><++><Enter>\hline<Enter>\end{tabular}<Enter>\end{center}<Esc>{
autocmd FileType tex inoremap ;enum \begin{enumerate}<Enter>\item<Space><Enter>\end{enumerate}<Enter><Esc>2kA

