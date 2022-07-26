set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz
set autoindent
set expandtab
set number
set tabstop=2
set shiftwidth=2
set laststatus=2

let mapleader = "\<Space>"
let maplocalleader = "\<Space>"
let g:nord_cursor_line_number_background = 1
let g:lightline = {
  \ 'colorscheme': 'nord',
  \ }

nnoremap ff :Prettier<CR>
nnoremap <leader><leader> :NERDTreeToggle<CR>

call plug#begin()
  " languages
  Plug 'pangloss/vim-javascript'
  Plug 'maxmellon/vim-jsx-pretty'
  " utils
  Plug 'prettier/vim-prettier'
  Plug 'preservim/nerdtree'
  Plug 'itchyny/lightline.vim'
  " themes
  Plug 'morhetz/gruvbox'
  Plug 'nanotech/jellybeans.vim'
  Plug 'sjl/badwolf'
  Plug 'altercation/vim-colors-solarized'
  Plug 'arcticicestudio/nord-vim'
call plug#end()

colorscheme nord
