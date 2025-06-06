-- Window navigation
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")


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

-- next greatest remap ever : asbjornHaland
-- space y to yank to system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Exit terminal ergonomically
vim.keymap.set("t", "<esc>", "<C-\\><C-n>")

-- add vertical jumps to the jump list
vim.api.nvim_set_keymap(
  'n',
  'j',
  [[v:count > 1 ? "m'" .. v:count .. "j" : 'j']],
  { expr = true, noremap = true }
)

vim.api.nvim_set_keymap(
  'n',
  'k',
  [[v:count > 1 ? "m'" .. v:count .. "k" : 'k']],
  { expr = true, noremap = true }
)

