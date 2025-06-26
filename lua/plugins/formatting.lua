return {
    "stevearc/conform.nvim",
    config = function()
        require("conform").setup({
            formatters_by_ft = {
                lua = { "stylua" },
                -- Conform will run multiple formatters sequentially
                python = { "black" },
                -- Conform will run the first available formatter
                javascript = { "prettierd", "prettier", stop_after_first = true },
            },
        })

        -- Fomat python on save
        vim.api.nvim_create_autocmd("BufWritePre", {
            pattern = "*.py",
            callback = function(args)
                require("conform").format({ bufnr = args.buf })
            end,
        })
    end

}
