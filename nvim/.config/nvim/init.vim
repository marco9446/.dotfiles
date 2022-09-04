" --- General

set tabstop=4 
set softtabstop=4
set termguicolors
set shiftwidth=4
set expandtab  " use spaces instead of tab
set smartindent
set number
set numberwidth=1
set relativenumber
set signcolumn=yes
set noswapfile
set nobackup
set undodir=~/.config/nvim/undodir
set undofile
set incsearch
set nohlsearch
set ignorecase
set smartcase
set nowrap
set splitbelow
set splitright
set hidden
set scrolloff=999
set noshowmode
set updatetime=250 
set encoding=UTF-8
set mouse=a
set cursorline
set showmatch
set hlsearch

" --- Plugins

call plug#begin('~/.config/nvim/plugged')

Plug 'nvim-lualine/lualine.nvim'                    " Status line
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }  " Color scheme
Plug 'lewis6991/gitsigns.nvim'
Plug 'preservim/nerdcommenter'
" nvim-tree
Plug 'kyazdani42/nvim-web-devicons' " optional, for file icons
Plug 'kyazdani42/nvim-tree.lua'

call plug#end()

lua require('pluginCustomization')

" --- Colors
set background=dark
colorscheme tokyonight

" --- Mapping
let mapleader = "\\"

if has('win32')
  nmap <C-/> <leader>c<Space>
  vmap <C-/> <leader>c<Space>
else
  nmap <C-_> <leader>c<Space>
  vmap <C-_> <leader>c<Space>
endif

nmap <silent> <C-b> :NvimTreeToggle<CR> 
imap <silent> <C-b> <ESC>:NvimTreeToggle<CR>
nmap <C-h> <C-w>h
nmap <C-l> <C-w>l

nmap <silent> <leader>q :q<CR>
nmap <silent> <leader>w :w<CR>

nmap <S-DOWN> yyp
nnoremap <silent><A-j> :m .+1<CR>==
nnoremap <silent><A-DOWN> :m .+1<CR>==
nnoremap <silent><A-k> :m .-2<CR>==
nnoremap <silent><A-UP> :m .-2<CR>==
inoremap <silent><A-j> <Esc>:m .+1<CR>==gi
inoremap <silent><A-k> <Esc>:m .-2<CR>==gi
vnoremap <silent><A-j> :m '>+1<CR>gv=gv
vnoremap <silent><A-k> :m '<-2<CR>gv=gv
