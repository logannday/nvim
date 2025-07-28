vim.pack.add({
	"https://github.com/echasnovski/mini.nvim.git",
	"https//github.com/neovim/nvim-lspconfig.git",
	"https://github.com/vague2k/vague.nvim.git",
	"https://github.com/chomosuke/typst-preview.nvim.git",
	"https://github.com/andrewferrier/wrapping.nvim.git",
})
require('wrapping').setup({})

-- Colorscheme
require('vague').setup({ transparent = true })
vim.cmd.colorscheme("vague")

-- Fuzzy Finding
local mp = require('mini.pick')
mp.setup()

-- Search Neovim Config
local function pickDocs()
	mp.builtin.files(nil, { source = { cwd = '~/.config/nvim' } })
end

vim.keymap.set("n", "<C-p>", ":Pick files<CR>")
vim.keymap.set("n", "<leader>sd", pickDocs)
vim.keymap.set("n", "<leader>sg", ":Pick grep_live<CR>")
vim.keymap.set("n", "<leader>sh", ":Pick help<CR>")
vim.keymap.set("n", "<leader>sb", ":Pick buffers<CR>")

-- File browsing
require('mini.files').setup({})
vim.keymap.set("n", "-", ":lua MiniFiles.open()<CR>")

-- LSP
vim.lsp.enable({ 'clangd', 'pyright', 'lua_ls', 'tinymist' })

vim.keymap.set("n", "<leader>gf", ":lua vim.lsp.buf.format()<CR>")
vim.keymap.set("n", "<leader>d", ":lua vim.diagnostic.open_float()<CR>")

require('typst-preview').setup({})
