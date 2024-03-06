return {
	"stevearc/conform.nvim",
	event = "VeryLazy",
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				python = { "black" },
				javascript = { "prettier" },
				javascriptreact = { "prettier" },
				typescript = { "prettier" },
				typescriptreact = { "prettier" },
				vue = { "prettier" },
				css = { "prettier" },
				scss = { "prettier" },
				less = { "prettier" },
				html = { "prettier" },
				json = { "prettier" },
				jsonc = { "prettier" },
				yaml = { "prettier" },
				markdown = { "prettier" },
				["markdown.mdx"] = { "prettier" },
				graphql = { "prettier" },
				handlebars = { "prettier" },
			},
			vim.keymap.set("n", "<leader>cf", ":lua require('conform').format()<CR>", { silent = true }),
			-- format_on_save = {
			--     -- I recommend these options. See :help conform.format for details.
			--     lsp_fallback = false,
			--     timeout_ms = 500,
			-- },
		})

		-- Format on save
		-- vim.api.nvim_create_autocmd("BufWritePre", {
		--     pattern = "*",
		--     callback = function(args)
		--         require("conform").format({ bufnr = args.buf })
		--     end,
		-- })
	end,
}
