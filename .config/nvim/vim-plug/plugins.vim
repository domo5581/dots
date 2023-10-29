call plug#begin()
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} " langage support
    Plug 'rebelot/kanagawa.nvim' " theme
    Plug 'jiangmiao/auto-pairs' " delimiter/autopair
	Plug 'nvim-tree/nvim-web-devicons'
	Plug 'akinsho/bufferline.nvim', { 'tag': '*' }
	Plug 'nvim-lualine/lualine.nvim'
call plug#end()
