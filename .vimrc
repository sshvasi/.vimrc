filetype plugin indent on      " Enabling filetype support provides filetype-specific indenting,
syntax on                      " syntax highlighting, omni-completion and other useful settings.
runtime macros/matchit.vim     " `matchit.vim` is built-in plugin.     
                               " Hit `%` on `if` to jump to `else`.
set autoindent                 " Minimal automatic indenting for any filetype.
set expandtab                  " Convert tabs to space characters.
set tabstop=2                  " Set tab width to 2 columns.
set shiftwidth=2               " Set indentention width to 2 columns.
set backspace=indent,eol,start " Intuitive backspace behavior.
set hidden                     " Possibility to have more than one unsaved buffers.
set incsearch                  " Incremental search, hit `<CR>` to stop.
set number                     " Show line numbers in the left margin.
set nowrap                     " Don't wrap lines that are longer than the terminal width.
set ruler                      " Show the current line number at the bottom-right
                               " of the screen.
set cursorline                 " Highlight current line.
set laststatus=2               " Always show the status line.
set signcolumn=yes             " Always draw the signcolumn.
set wildmenu                   " Great command-line completion, use `<Tab>` to move
                               " around and `<CR>` to validate.
set clipboard=unnamedplus      " Set system clipboard for yank.
set ignorecase                 " Ignore case during search.
set incsearch                  " While searching though a file incrementally highlight
                               " matching characters as you type.
set hlsearch                   " Use highlighting when doing a search.
set smartcase                  " Override the ignorecase option if searching for capital letters.
                               " This will allow you to search specifically for capital letters.
set mouse=a                    " Use mouse for selection.
set nobackup                   " Disable swap files creation.
set nowritebackup              "
set nowb                       "
set noswapfile                 "
set noerrorbells               " No sounds on errors.
set t_vb=                      "
set tm=500                     "
set timeoutlen=1000            " Mapping delays.
set ttimeoutlen=1              " Key code delays.
set ttyfast                    " Slow scrolling.
" Russian keyboard.
set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz

colorscheme codedark

let mapleader = "\<space>"
let maplocalleader = "\<space>"

let g:lightline = {'colorscheme': 'codedark'}
let g:codedark_conservative=1

nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

nnoremap <c-w> <c-w>w
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l

nnoremap <leader>ff :Prettier<cr>
nnoremap <leader><leader> :NERDTreeToggle<cr>
nnoremap <leader>hh :nohlsearch<cr>

" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

call plug#begin()
  " Languages.
  Plug 'pangloss/vim-javascript'
  Plug 'maxmellon/vim-jsx-pretty'
  " Utils.
  Plug 'preservim/nerdtree'
  Plug 'airblade/vim-gitgutter'
  Plug 'prettier/vim-prettier'
  " UI.
  Plug 'itchyny/lightline.vim'
  Plug 'tomasiser/vim-code-dark'
call plug#end()
