set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/powerline',{'rtp': 'powerline/bindings/vim/'}

call vundle#end()
filetype plugin indent on
" Configuration file for vim
set modelines=0		" CVE-2007-2438

" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible	" Use Vim defaults instead of 100% vi compatibility
set backspace=2		" more powerful backspacing

" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup nobackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup nobackup
set tabstop=4
set foldmethod=indent
set foldlevel=99
au BufNewFile, BufRead *.py
						\set tabstop=4
						\set softtabstop=4
						\set shiftwidth=4
						\set textwidth=79
						\set expandtab
						\set autoindent
						\set fileformat=unix
let python_highlight_all=1
syntax on
"Enable folding with the spacebar
nnoremap <space> za
let g:SimpylFold_docstring_preview=1
set tabstop=4
if has('gui_runing')
		set background=bark
		colorscheme solarized
endif
set encoding=utf-8
