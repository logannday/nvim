return {
	"nvim-telescope/telescope.nvim",
	event = "VeryLazy",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		require("telescope").setup({ -- Default configuration for telescope goes here:
			defaults = {
				selection_strategy = "reset",
				sorting_strategy = "ascending",
				file_ignore_patterns = {
					"venv",
					"node_modules",
                    "__pycache__/",
                    "%.pyc",
				},
				layout_strategy = "horizontal",
				layout_config = {
					horizontal = { prompt_position = "top", preview_width = 0.55, results_width = 0.8 },
					vertical = { mirror = false },
					width = 0.87,
					height = 0.80,
					preview_cutoff = 120,
				},
				mappings = {
					i = {
						-- map actions.which_key to <C-h> (default: <C-/>)
						-- actions.which_key shows the mappings for your picker,
						-- e.g. git_{create, delete, ...}_branch for the git_branches picker
						["<C-h>"] = "which_key",
					},
				},
			},
			pickers = {
				-- Default configuration for builtin pickers goes here:
				-- picker_name = {
				--   picker_config_key = value,
				--   ...
				-- }
				-- Now the picker_config_key will be applied every time you call this
				-- builtin picker
			},
			extensions = {
				-- Your extension configuration goes here:
				-- extension_name = {
				--   extension_config_key = value,
				-- }
				-- please take a look at the readme of the extension you want to configure
			},
		})
		local builtin = require("telescope.builtin")
		local function edit_neovim()
			require("telescope.builtin").find_files({
				prompt_title = "~ dotfiles ~",
				shorten_path = false,
				cwd = "~/dotfiles",
				width = 0.25,

				layout_strategy = "horizontal",
				layout_config = {
					preview_width = 0.65,
				},
			})
		end

		local function obsidian_search()
			require("telescope.builtin").find_files({
				prompt_title = "~ obsidian ~",
				shorten_path = false,
				cwd = "/Users/loganday/Library/Mobile Documents/iCloud~md~obsidian/Documents/Notes",
				width = 0.25,

				layout_strategy = "horizontal",
				layout_config = {
					preview_width = 0.65,
				},
			})
		end

		--
		--
		vim.keymap.set("n", "<leader>sf", builtin.find_files, {})
		vim.keymap.set("n", "<C-p>", builtin.find_files, {})
		vim.keymap.set("n", "<leader>sd", edit_neovim, {})
		vim.keymap.set("n", "<leader>so", builtin.oldfiles, {})
		vim.keymap.set("n", "<leader>sg", builtin.live_grep, {})
		vim.keymap.set("n", "<leader>sh", builtin.help_tags, {})
		vim.keymap.set("n", "<leader>sc", builtin.commands, {})
		vim.keymap.set("n", "<leader>sm", builtin.man_pages, {})
		vim.keymap.set("n", "<leader>ss", builtin.colorscheme, {})
		vim.keymap.set("n", "<leader>sr", builtin.lsp_references, {})
		vim.keymap.set("n", "<leader>sv", builtin.vim_options, {})
		vim.keymap.set("n", "<leader>os", obsidian_search, {})
		vim.keymap.set("n", "<leader>sb", builtin.current_buffer_fuzzy_find, {})
	end,
}
