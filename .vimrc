" Init settings

set hidden

set number
" set autoindent
" set smartindent
" set smarttab
set softtabstop=4
set tabstop=4
set shiftwidth=4
set expandtab

syntax on

set shell=/bin/bash

" Vundle setup

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize

set rtp+=~/.vim/bundle/Vundle.vim

" alternatively, pass a path where Vundle should install plugins

call vundle#begin('~/.vim/pluged')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Vim latex
Plugin 'vim-latex/vim-latex'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo

Plugin 'tpope/vim-fugitive'

" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub

Plugin 'git://git.wincent.com/command-t.git'

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.

Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.

Plugin 'ascenator/L9', {'name': 'newL9'}

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align

Plugin 'junegunn/vim-easy-align'

" Any valid git URL is allowed

Plugin 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plugin commands can be written in a single line using | separators

Plugin 'honza/vim-snippets'

" On-demand loading

Plugin 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plugin 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-default branch

Plugin 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)

Plugin 'fatih/vim-go', { 'tag': '*' }

" Plugin options

Plugin 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook

Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Ayu theme

Plugin 'ayu-theme/ayu-vim' " or other package manager

" Tmux navigator

Plugin 'christoomey/vim-tmux-navigator'

" Vimux

Plugin 'preservim/vimux'

" Autoformat

" Plugin 'vim-autoformat/vim-autoformat'

" All of your Plugins must be added before the following line
call vundle#end()            " required

filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Vim-Plug setup

call plug#begin('~/.vim/plugged')
" Make sure you use single quotes

call plug#end()

" Themes

" Ayu 

"set termguicolors     " enable true colors support
"let ayucolor="light"  " for light version of theme
"let ayucolor="mirage" " for mirage version of theme
"let ayucolor="dark"   " for dark version of theme
"colorscheme ayu

" Delek
" colorscheme delek

" Dark blue
" colorscheme darkblue 

" Vim-Tmux mode

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
map <Leader>vp :VimuxPromptCommand<CR>
map <Leader>vl :VimuxRunLastCommand<CR>
map <Leader>vi :VimuxInspectRunner<CR>
map <leader>vz :VimuxZoomRunner<CR>

set splitbelow
set splitright

"	"Max out the height of the current split
"       ctrl + w _
"
"       "Max out the width of the current split
"       ctrl + w |
"
"       "Normalize all split sizes, which is very handy when resizing terminal
"       ctrl + w =
"
"       "Swap top/bottom or left/right split
"       " ctrl + w r
"
"       "Break out current window into a new tabview
"       " ctrl + w t
"
"       "Close every window in the current tabview but the current one
"       " ctrl + w o
"

" Vim Easy Align
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" Vim python support
let g:python3_host_prog="/usr/bin/python3"

"Vim autoformat
" noremap <F3> :Autoformat<CR>
