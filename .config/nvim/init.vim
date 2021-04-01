set nowrap
set nowrapscan
set number
set tabstop=4
set shiftwidth=4
set expandtab
set wildmode=list:longest

noremap - $

nnoremap tt :tabnext<CR>
nnoremap rr :tabprevious<CR>

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'neoclide/coc.nvim'
Plugin 'tomtom/tcomment_vim'

call vundle#end()
filetype plugin indent on

let g:tcomment_opleader1 = '<C-k>'
