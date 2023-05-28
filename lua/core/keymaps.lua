vim.opt.cursorline=true
vim.opt.cursorlineopt="number"

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.opt.timeoutlen=1000
vim.opt.ttimeoutlen=5

vim.opt.backspace = '2'
vim.opt.showcmd=true
vim.opt.laststatus=2
vim.opt.autowrite = true
--vim.opt.cursorline = true
vim.opt.autoread = true
--undo tree 
vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle)

--line number stuff
vim.wo.relativenumber = true
vim.wo.number = true

vim.opt.cursorline=true
vim.opt.cursorlineopt="number"

vim.opt.splitright=true
vim.opt.splitbelow=true

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
vim.opt.expandtab = true
--scroll faster
vim.keymap.set("n", "<C-e>", "<C-e><C-e>")
vim.keymap.set("n", "<C-y>", "<C-y><C-y>")
--quitting with C-q
vim.keymap.set("n", "<C-q>", ":quit!<CR>")
vim.keymap.set("n", "<C-s>", ":write<CR>")
--primagen keymaps
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
--increment
vim.keymap.set({'n','v'}, '<C-i>', '<C-a>')

--J to add below line to current line with space
vim.keymap.set("n", "J", "mzJ`z")
--keeps cursor in place while C-U or C-D
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- greatest rem  ap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
-- space y to yank to system clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
