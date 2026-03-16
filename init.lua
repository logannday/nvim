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
	"https://github.com/nvim-lualine/lualine.nvim.git",
	"https://github.com/neovim/nvim-lspconfig.git",
	"https://github.com/nvim-treesitter/nvim-treesitter.git",
	"https://github.com/ibhagwan/fzf-lua.git",
	"https://github.com/Saghen/blink.cmp.git",
	"https://github.com/stevearc/oil.nvim.git",
	"https://github.com/ibhagwan/fzf-lua.git",
	"https://github.com/catppuccin/nvim.git",
})


vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set("n", "<leader>t", "<CMD>e ~/.todos.md<CR>")

-- Pickers --
local fzf = require("fzf-lua")
fzf.setup()
vim.keymap.set("n", "<C-p>", fzf.files)
vim.keymap.set("n", "<leader>f", fzf.files)
vim.keymap.set("n", "<leader>h", fzf.helptags)
vim.keymap.set("n", "<leader>c", fzf.colorschemes)
vim.keymap.set("n", "<leader>g", fzf.live_grep)

-- LSP --
vim.lsp.enable({ 'clangd', 'lua_ls', 'pyright', 'emmet_ls', 'svelte', 'tinymist', 'rust_analyzer' })
vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float)

-- Autocomplete --
require("blink.cmp").setup {
		fuzzy = { implementation = "lua" },
		keymap = { preset = "super-tab" }}

-- TreeSitter --
require'nvim-treesitter'.setup {}
require'nvim-treesitter'.install { 'lua', 'rust', 'javascript', 'python', 'svelte', 'typescript' }

vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'lua', 'rust', 'javascript', 'python', 'svelte', 'typescript' },
  callback = function() vim.treesitter.start() end,
})


-- Oil --
require('oil').setup()
vim.keymap.set("n", "-", "<Cmd>Oil<CR>")

-- Colorscheme --
require("catppuccin").setup {
	transparent_background = true,
}
require 'lualine'.setup{}
vim.cmd.colorscheme "catppuccin"
