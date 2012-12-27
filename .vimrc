set nocompatible

" GUI options; remove toolbar
set guioptions-=T

" Font
set gfn=Consolas:h10
set background=dark
if has("unix")
	colorscheme desert256
else
	colorscheme ps_color3
endif

" Statusline
set laststatus=2
set statusline=%<%f\                " show relative path to file
set statusline+=%m%r\               " show modified/readonly
set statusline+=%y[%{&ff}]          " show filetype/fileformat
set statusline+=%{\"[\".(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\",bom\":\"\").\"]\ \"}                  " show file encoding
set statusline+=%=%-14.(%l,%c%V%)\  " show line,column,virtual column
set statusline+=%P                  " show percentage of file

" Lines of history to remember
set history=300

" Enable filetype plugins
filetype plugin on
filetype indent on

" Enable syntax highlighting
syntax enable

" Disable backups and swap
set nobackup
set swapfile
set nowb

" Show the cursor position
set ruler

" Searching
set ignorecase
set incsearch
set hlsearch

" Enable the mouse
set mouse=a

" Indenting
set autoindent
set smartindent
set noexpandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4

" Braces matching
set showmatch
set matchtime=3

" Text-editing
set backspace=start,indent,eol

" Key mapping
nmap <C-p> :put<CR>==

" Buffer
set hidden

" MiniBufExplorer settings
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1
let g:miniBufExplMapWindowNavArrows = 1

" file specific
" sql
let g:sql_type_default = "sqlserver" 
let g:dbext_default_profile_tpwork = 'type=SQLSRV:integratedlogin=1:host=tpcruncher01:dbname=tats_live:srvname=tpcruncher01'
let g:dbext_default_profile_tphome = 'type=SQLSRV:user=tars_readonly:passwd=wRugus9a:host=tpcruncher01:dbname=tats_live:srvname=tpcruncher01'
