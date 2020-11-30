set hidden
set number
set vb t_vb=
set ts=2 sts=2 sw=2 expandtab
syntax on
command! Status echo "All systems are go!"

if has("autocmd")
  filetype plugin indent on
endif

call plug#begin()
Plug 'JuliaEditorSupport/julia-vim'
Plug 'lervag/vimtex'
call plug#end()

