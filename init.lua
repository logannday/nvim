vim.g.mapleader = " "
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.wo.signcolumn = "yes"
vim.o.hlsearch = false
vim.wo.number = true
vim.wo.relativenumber = true
vim.o.winborder = "rounded"
vim.o.splitright = true
vim.o.splitbelow = true
vim.o.ignorecase = true
vim.o.smartcase = true

vim.pack.add({
	"https//github.com/neovim/nvim-lspconfig.git",
	"https://github.com/nvim-treesitter/nvim-treesitter.git",
	"https://github.com/echasnovski/mini.pick.git",
	"https://github.com/vague2k/vague.nvim.git",
	"https://github.com/Saghen/blink.cmp.git",
	"https://github.com/stevearc/oil.nvim.git",
	"https://github.com/nvim-lualine/lualine.nvim.git",
})

require('lualine').setup()

vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set("n", "<leader>t", "<CMD>e ~/.todos.md<CR>")

-- Pickers --
local mp = require("mini.pick")
mp.setup()
vim.keymap.set("n", "<C-p>", mp.builtin.files)
vim.keymap.set("n", "<leader>h", mp.builtin.help)
vim.keymap.set("n", "<leader>h", function() mp.builtin.files(nil, { source = { cwd = '../foo/bar' } }) end)

-- LSP --
vim.lsp.enable({ 'clangd', 'lua_ls', 'pyright', 'emmet_ls', 'svelte', 'tinymist', 'rust_analyzer' })
vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float)

-- Autocomplete --
require("blink.cmp").setup {
		fuzzy = { implementation = "lua" },
		keymap = { preset = "super-tab" }}

-- TreeSitter --
require 'nvim-treesitter.configs'.setup {
	highlight = { enable = true, },
	auto_install = true,
}

-- Oil--
require('oil').setup()
vim.keymap.set("n", "-", "<Cmd>Oil<CR>")

-- Colorscheme --
require("vague").setup({ transparent = true })
vim.cmd.colorscheme("vague")
