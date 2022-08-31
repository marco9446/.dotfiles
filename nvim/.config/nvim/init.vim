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
call plug#end()


" --- Colors
set background=dark
colorscheme tokyonight
