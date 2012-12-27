" standard python library tags
set tags+=$USERPROFILE/vim_local/tags/python.ctags

" tabs & indentation
set expandtab
set smarttab
set autoindent
set textwidth=79
set softtabstop=4
set shiftwidth=4
set tabstop=4

" syntax options
let python_highlight_all = 1

" use :make to compile
set makeprg=python\ -c\ \"import\ py_compile,sys;\ sys.stderr=sys.stdout;\ py_compile.compile(r'%')\"
"set efm=%C\ %.%#,%A\ \ File\ \"%f\"\\,\ line\ %l%.%#,%Z%[%^\ ]%\\@=%m

" debugging
" map <F8> <ESC>:py SetBreakpoint()<CR>
" map <S-F8> <ESC>:%s/import pdb\n//g<CR>:%s/\s*pdb.set_trace() # breakpoint\n//g<CR>`.
" map <C-F5> <ESC>:!%<CR>
" map <F9> <ESC>:py RemoveBreakpoints()<CR>
