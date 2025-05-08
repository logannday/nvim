-- quicker commenting of lines
vim.keymap.set("n", "<leader>c", "Vgcc")

-- Map <F8> to compile and run current file
vim.api.nvim_set_keymap("n", "<F8>", ":!gcc % && ./a.out<CR>", { noremap = true, silent = true })

-- Netrw
-- vim.keymap.set("n", "-", ":Explore<CR>")

-- Window navigation
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

--Switch to most recently open buffer with tab
vim.keymap.set("n", "<tab>", "<C-^>");

--Zen Mode
vim.keymap.set("n", "<leader>z", ":ZenMode<CR>")

-- Open todos
-- vim.keymap.set("n", "<leader>t", ":e ~/.todos.md<CR>")

--scroll faster
vim.keymap.set("n", "<C-e>", "<C-e><C-e>")
vim.keymap.set("n", "<C-y>", "<C-y><C-y>")

--quitting with C-q
vim.keymap.set("n", "<C-q>", ":q<CR>")

--primagen keymaps
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

--increment
vim.keymap.set({ "n", "v" }, "<C-i>", "<C-i>")

--J to add below line to current line with space
vim.keymap.set("n", "J", "mzJ`z")

--keeps cursor in place while C-U or C-D
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- greatest rem  ap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- MAKE
vim.keymap.set("n", "<leader>mr", ":w<CR>:make run<CR>")

-- next greatest remap ever : asbjornHaland
-- space y to yank to system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Edit obsidian
vim.keymap.set("n", "<leader>oo", ":e /Users/loganday/Library/Mobile Documents/iCloud~md~obsidian/Documents/Notes<CR>")

-- Exit terminal ergonomically
vim.keymap.set("t", "<esc>", "<C-\\><C-n>")
