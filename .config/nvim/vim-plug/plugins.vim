call plug#begin('~/.config/nvim/autoload/plugged')
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} " langage support
    Plug 'daschw/leaf.nvim' " theme
    Plug 'jiangmiao/auto-pairs' " delimiter/autopair
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.2' }
call plug#end()
