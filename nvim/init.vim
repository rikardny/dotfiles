set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

set nu
set relativenumber
set nohlsearch
set nowrap

set ignorecase
set smartcase

set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile

set incsearch
set scrolloff=8

"set signcolumn=yes
"set colorcolumn=80

" PLUGINS

call plug#begin("~/.vim/plugged")
    Plug 'nvim-lua/plenary.nvim'
    Plug 'preservim/nerdtree'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
"    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'vim-airline/vim-airline'

    Plug 'tpope/vim-commentary'
    Plug 'jiangmiao/auto-pairs'

    Plug 'gruvbox-community/gruvbox'
    Plug 'psliwka/vim-smoothie'
call plug#end()

colorscheme gruvbox

" G/gg smooth
let g:smoothie_experimental_mappings = v:true


fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

augroup RIKARDNY
    autocmd!
    autocmd BufWritePre * :call TrimWhitespace()
augroup END

let mapleader = " "

nnoremap <C-p> :GFiles<CR>
nnoremap <leader>p :Files<CR>

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

nnoremap <leader>q :wincmd q<CR>
nnoremap <leader>t :set splitright <CR>: vnew <CR>

nnoremap <leader>0 :NERDTreeToggle<CR>

inoremap jk <Esc>
inoremap kj <Esc>
