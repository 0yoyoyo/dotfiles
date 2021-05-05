set number
set nowrap
set nowrapscan
set expandtab
set tabstop=4
set shiftwidth=4
set wildmode=list:longest
set splitbelow
set splitright

nnoremap - $
nnoremap tt :tabnext<CR>
nnoremap rr :tabprevious<CR>
nnoremap ;; :s/$/;/ \| noh<CR>

tnoremap <Esc> <C-\><C-n>
autocmd TermOpen * set nonumber | startinsert
autocmd WinEnter * if &buftype ==# 'terminal' | startinsert | endif
autocmd TermClose term://* call nvim_input('<CR>')

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

""" For Vundle
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'neoclide/coc.nvim'
Plugin 'tomtom/tcomment_vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
"""

let g:tcomment_opleader1 = '<C-k>'
