-- complete minimal nvim config for competitive coding

-- vim commands
vim.wo.number = true
vim.cmd("syntax on")
vim.opt.clipboard = 'unnamedplus'
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.bo.expandtab = true

-- c++ compile + run and automatic template
vim.cmd[[ map <F9> :w<CR>:term g++ % -o %:r && ./%:r<CR> ]]
vim.cmd("autocmd BufNewFile *.cpp 0r ~/.config/nvim/skeleton.cpp")

-- plugins & colorscheme (using vim-plug)
vim.cmd("source $HOME/.config/nvim/vim-plug/plugins.vim")

require("leaf").setup({
    underlineStyle = "undercurl",
    commentStyle = "italic",
    functionStyle = "NONE",
    keywordStyle = "italic",
    statementStyle = "bold",
    typeStyle = "NONE",
    variablebuiltinStyle = "italic",
    transparent = false,
    colors = { darkest = '#000000' },
    overrides = {},
    theme = "dark", -- default, based on vim.o.background, alternatives: "light", "dark"
    contrast = "high", -- default, alternatives: "medium", "high"
})

vim.cmd("colorscheme leaf")

