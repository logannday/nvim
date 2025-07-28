vim.g.mapleader = " "
vim.g.maplocalleader = ","

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

-- Keep signcolumn on by default
vim.wo.signcolumn = "yes"

-- Case-insensitive searching UNLESS \C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Set no highlight on search
vim.o.hlsearch = false

--line number stuff
vim.wo.relativenumber = true
vim.wo.number = true

vim.opt.cursorline = false
vim.opt.cursorlineopt = "number"

vim.opt.splitright = true
vim.opt.splitbelow = true

