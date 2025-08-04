vim.g.mapleader = " "
vim.g.maplocalleader = ","

vim.o.tabstop = 4
vim.o.shiftwidth = 4

-- Keep signcolumn on by default
vim.wo.signcolumn = "yes"

-- Case-insensitive searching UNLESS \C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Set no highlight on search
vim.o.hlsearch = false

--line number stuff
vim.wo.number = true
vim.wo.relativenumber = true

vim.o.splitright = true
vim.o.splitbelow = true

vim.o.winborder = "rounded"
