" --- General

set termguicolors
set tabstop=4 
set softtabstop=4
set shiftwidth=4
set expandtab
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



" --- Plugins

call plug#begin('~/.config/nvim/plugged')

Plug 'nvim-lualine/lualine.nvim'                    " Status line
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }  " Color scheme
Plug 'lewis6991/gitsigns.nvim'
Plug 'preservim/nerdcommenter'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

lua require('pluginCustomization')

" --- Colors
set background=dark
colorscheme tokyonight

" --- Mapping
if has('win32')
  nmap <C-/> <leader>c<Space>
  vmap <C-/> <leader>c<Space>
else
  nmap <C-_> <leader>c<Space>
  vmap <C-_> <leader>c<Space>
endif



