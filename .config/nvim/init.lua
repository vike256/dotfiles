vim.pack.add({
  { src = 'https://github.com/nvim-mini/mini.nvim', version = 'stable' },
  { src = 'https://github.com/lewis6991/gitsigns.nvim', version = 'release' },
})
require('mini.pairs').setup()

-- Enable line numbers
vim.o.number = true

-- Disable line wrapping
vim.o.wrap = false

-- Adjust the width of the tab character
vim.o.tabstop = 4
vim.o.shiftwidth = 4

-- Ignore case when the search pattern is all lowercase
vim.o.smartcase = true
vim.o.ignorecase = true

-- Clear search highlights after submit
vim.o.hlsearch = false

-- Reserve a space in the gutter for signs. Some plugins use this to show icons.
vim.o.signcolumn = 'yes'

vim.cmd.colorscheme("lunaperche")

-- Use system clipboard
--vim.o.clipboard = 'unnamedplus'

-- vim.g.mapleader = vim.keycode('<Space>')

