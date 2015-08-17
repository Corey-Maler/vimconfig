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


set runtimepath=~/.vim,~/.vim/bundle/Vundle.vim,~/.vim/bundle/vim-fugitive,~/.vim/bundle/L9,~/.vim/bundle/command-t,~/.vim/bundle/plugin,~/.vim/bundle/sparkup/vim/,~/.vim/bundle/vim-airline,~/.vim/bundle/vim-stylus,~/.vim/bundle/vim-slim,~/.vim/bundle/vim-interestingwords,~/.vim/bundle/vim-eslint-compiler,/usr/share/vim/vimfiles,/usr/share/vim/vim73,/usr/share/vim/vimfiles/after,~/.vim/after,~/.vim/bundle/Vundle.vim,~/.vim/bundle/Vundle.vim/after,~/.vim/bundle/vim-fugitive/after,~/.vim/bundle/L9/after,~/.vim/bundle/command-t/after,~/.vim/bundle/plugin/after,~/.vim/bundle/sparkup/vim//after,~/.vim/bundle/vim-airline/after,~/.vim/bundle/vim-stylus/after,~/.vim/bundle/vim-slim/after,~/.vim/bundle/vim-interestingwords/after,~/.vim/bundle/vim-eslint-compiler/after
set shiftwidth=2
set tabstop=2
set window=0
" vim: set ft=vim :

syntax enable
set number
set cursorline

:autocmd CursorMoved * exe printf('match IncSearch /\V\<%s\>/', escape(expand('<cword>'), '/\'))
