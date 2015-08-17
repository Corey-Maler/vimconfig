set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'benekastah/neomake'
Plugin 'scrooloose/syntastic'
Plugin 'bling/vim-airline'
Plugin 'wavded/vim-stylus'
Plugin 'slim-template/vim-slim'
Plugin 'vasconcelloslf/vim-interestingwords'
Plugin 'tpope/vim-fugitive'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

nnoremap <silent>   :call InterestingWords('n')
nnoremap <silent> N :call WordNavigation(0)
nnoremap <silent> \K :call UncolorAllWords()
vnoremap <silent> \k :call InterestingWords('v')
nnoremap <silent> \k :call InterestingWords('n')
nnoremap <silent> \b :CommandTBuffer
nnoremap <silent> \t :CommandT
let s:cpo_save=&cpo
set cpo&vim
nmap gx <Plug>NetrwBrowseX
nnoremap <silent> n :call WordNavigation(1)
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cWORD>"),0)
let &cpo=s:cpo_save
unlet s:cpo_save
set background=dark
set backspace=2
set expandtab
set fileencodings=ucs-bom,utf-8,default,latin1
set helplang=ru
set laststatus=2
set modelines=0

set shiftwidth=2
set tabstop=2
set window=0
" vim: set ft=vim :

syntax enable
set number
set cursorline

"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

"let g:syntastic_javascript_checkers = ['eslint']

autocmd! BufReadPost * Neomake
autocmd! BufWritePost * Neomake
let g:neomake_javascipt_enabled_makers = ['eslint']

:autocmd CursorMoved * exe printf('match IncSearch /\V\<%s\>/', escape(expand('<cword>'), '/\'))
