call plug#begin()

Plug 'tpope/vim-commentary'
Plug 'tpope/vim-sensible'
Plug 'haya14busa/incsearch.vim'

call plug#end()

map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)

set relativenumber
set number
set ignorecase
set smartcase
set signcolumn=yes

