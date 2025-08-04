vim.pack.add({
	"https//github.com/neovim/nvim-lspconfig.git",
	"https://github.com/vague2k/vague.nvim.git",
	"https://github.com/nvim-treesitter/nvim-treesitter.git",
	"https://github.com/stevearc/oil.nvim.git",
	"https://github.com:Saghen/blink.cmp.git",
	"https://github.com/ibhagwan/fzf-lua.git",
	"https://github.com/echasnovski/mini.pairs.git",
})

-- Colorscheme --
require("vague").setup({ transparent = true })
vim.cmd.colorscheme("vague")

-- Fuzzy Finding --
local fzf = require("fzf-lua")
fzf.setup {
	winopts = {
		fullscreen = true,
		preview = {
			layout = "horizontal",
		}
	}
}
vim.keymap.set("n", "<C-p>", fzf.files)
vim.keymap.set("n", "<leader>f", fzf.files)
vim.keymap.set("n", "<leader>sd",  function() fzf.files({cwd = '~/.config/nvim'}) end)
vim.keymap.set("n", "<leader>g", fzf.live_grep)
vim.keymap.set("n", "<leader>h", fzf.helptags)
vim.keymap.set("n", "<leader>m", fzf.manpages)

-- File Browsing --
require 'oil'.setup()
vim.keymap.set("n", "-", "<CMD>Oil<CR>")

-- Autopairs --
require 'mini.pairs'.setup {
	mappings = {
		["'"] = false, ['"'] = false, ['('] = false, [')'] = false, ['['] = false, [']'] = false,
	}
}

-- LSP --
vim.lsp.enable({ 'clangd', 'pyright', 'lua_ls', 'tinymist', 'ts_ls', 'emmet_ls', 'svelte' })
vim.keymap.set("n", "grf", ":lua vim.lsp.buf.format()<CR>")
vim.keymap.set("n", "<leader>d", ":lua vim.diagnostic.open_float()<CR>")

-- Completion --
require 'blink.cmp'.setup {
	fuzzy = { implementation = "lua" },
	keymap = { preset = 'super-tab' },
}

-- Typst --
vim.api.nvim_create_autocmd("FileType", {
	pattern = { "typst" },
	callback = function()
		vim.pack.add { "https://github.com/chomosuke/typst-preview.nvim.git" }
		require 'typst-preview'.setup {}
		vim.keymap.set("n", "<leader>t", ":TypstPreview<CR>")
	end
})

-- TreeSitter --
require 'nvim-treesitter.configs'.setup {
	ensure_installed = { "java", "c", "cpp", "python", "rust", "typst", "svelte" },
	highlight = { enable = true, },
    auto_install = true,
}
