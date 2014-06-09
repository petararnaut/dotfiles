set nocompatible              " be iMproved, required
filetype off 
filetype off                  " required




set autoread "auto reload a file when edited externally
set backspace=indent,eol,start "make backspace work as expected
set guitablabel=(%N%M)\ %f "tab label format
set history=50 "command history
set hlsearch "highlight search matches
set incsearch "jump to search match while typing
set nobackup "disable ~backup files
set number "show line numbers
set ruler "show line + column number and % progress through file in status line
set showcmd "show commands as they're typed
set showmatch "highlight matching braces
set spelllang=en_ca "set spelling language to Canadian English
set statusline=%F\ %m%r%h%w\ [%l,%v]\ [%L]\ (%p%%) "status line format
set vb t_vb= "disable visual bell + terminal bell


" File tabbing
au BufRead,BufNewFile *.py,*.pyw,*.sh set expandtab
au BufRead,BufNewFile *.py,*.pyw,*.sh set shiftwidth=4
au BufRead,BufNewFile *.py,*.pyw,*.sh set tabstop=4
au BufRead,BufNewFile *.py,*.pyw,*.sh set softtabstop=4
au BufRead,BufNewFile *.html,*.php,*.js,*.css,*.rb,*.ejs set shiftwidth=2
au BufRead,BufNewFile *.html,*.php,*.js,*.css,*.rb,*.ejs set expandtab
au BufRead,BufNewFile *.html,*.php,*.js,*.css,*.rb,*.ejs set tabstop=2
au BufRead,BufNewFile *.html,*.php,*.js,*.css,*.rb,*.ejs set softtabstop=2
au BufRead,BufNewFile *.haml,*.sass,*.scss set shiftwidth=2
au BufRead,BufNewFile *.haml,*.sass,*.scss set expandtab
au BufRead,BufNewFile *.haml,*.sass,*.scss set tabstop=2
au BufRead,BufNewFile *.haml,*.sass,*.scss set softtabstop=2






map <up> <C-W>k
map <down> <C-W>j
map <left> <C-W>h
map <right> <C-W>l

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
call vundle#begin('~/some/path/here')

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
Plugin 'altercation/vim-colors-solarized'



call vundle#end()


syntax enable
set background=dark
colorscheme solarized


filetype plugin indent on

