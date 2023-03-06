vim.o.expandtab = true
vim.o.tabstop = 4
vim.o.softtabstop = 4

vim.g.mapleader = " " 
vim.o.number = true
vim.o.relativenumber = true

vim.o.shiftwidth = 4
vim.o.smartindent = true

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup()

-- OR setup with some options
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

require "plugins"

