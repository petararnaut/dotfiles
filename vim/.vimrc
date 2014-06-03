set nocompatible              " be iMproved, required
filetype off 
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'


Plugin 'L9'
"Syntastic options
let g:syntastic_mode_map = { 'mode': 'active',
\ 'active_filetypes': ['javascript', 'python'],
\ 'passive_filetypes': ['html'] }
let g:syntastic_javascript_checkers=['jshint']
let g:syntastic_python_checkers=['pylint']





"NERDTree options
let NERDTreeIgnore = ['\.pyc$']
map <F2> :NERDTreeToggle <CR>


Plugin 'scrooloose/nerdtree'
Plugin 'hdima/python-syntax'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'rodjek/vim-puppet'
Plugin 'scrooloose/syntastic'

call vundle#end()

filetype plugin indent on

