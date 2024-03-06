return {
	{
        enabled = true;
		'ellisonleao/gruvbox.nvim',
        priority = 1000,
		config = function()
			require('gruvbox').setup({
				contrast = 'hard',
				transparent_mode = true,
			})
			vim.cmd([[set background=dark]])
			-- vim.cmd([[colorscheme gruvbox]])
		end
	},
    {
        "rebelot/kanagawa.nvim",
        opts =  {
            transparent = false,
        },
    },
	{
		"catppuccin/nvim",
		enabled = true,
		lazy = false,
		priority = 1000,
		config = function()
			require("catppuccin").setup({
				flavour = "mocha",
				term_colors = true,
				transparent_background = true,
				integrations = {
					treesitter = true,
				},
			})
			vim.cmd([[set background=dark]])
			vim.cmd([[colorscheme catppuccin]])
		end,
	},
}
