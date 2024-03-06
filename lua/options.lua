vim.g.mapleader = " "
vim.g.maplocalleader = ","
vim.opt.timeoutlen = 1000
vim.opt.ttimeoutlen = 5
-- vim.opt[guicursor] = ""

-- treesitter folding
vim.opt.foldenable = false
-- vim.o.clipboard = "unnamedplus"

-- File Explorer
vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25

-- Keep signcolumn on by default
vim.wo.signcolumn = "yes"

vim.opt.backspace = "2"
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.autoread = true

LazyFile = { "BufReadPost", "BufWritePost", "BufNewFile" }

-- Case-insensitive searching UNLESS \C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

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

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.shiftround = true
vim.opt.expandtab = true
