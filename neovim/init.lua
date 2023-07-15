vim.g.mapleader = " "
vim.o.number = true

vim.o.relativenumber = true
vim.o.expandtab = true
vim.o.tabstop = 4

vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.smartindent = true

vim.g.clipboard = "unnamedplus"

-- Lua
vim.cmd.colorscheme 'midnight'

require "plugins"


-- Hacer el fondo menos transparente (90%)
vim.cmd('highlight Normal guibg=#000000E6 ctermbg=NONE')
vim.cmd('highlight NonText guibg=#000000E6 ctermbg=NONE')
vim.cmd('highlight LineNr guibg=#000000E6 ctermbg=NONE')
vim.cmd('highlight SignColumn guibg=#000000E6 ctermbg=NONE')
vim.cmd('highlight EndOfBuffer guibg=#000000E6 ctermbg=NONE')


-- Habilitar ajuste de línea automático (word wrap)
vim.wo.wrap = true
vim.o.showbreak = '↳ '

