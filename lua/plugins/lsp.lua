return {
    {
        "neovim/nvim-lspconfig",
        config = function()
            -- Enable servers
            local servers = { 'pyright', 'lua_ls', 'clangd' }
            for _, server in ipairs(servers) do
                vim.lsp.enable(server)
            end

            -- Diagnostic keymaps
            vim.keymap.set("n", "[d", vim.diagnostic.goto_prev)
            vim.keymap.set("n", "]d", vim.diagnostic.goto_next)
            vim.keymap.set("n", "<space>q", vim.diagnostic.setloclist)
            vim.keymap.set('n', '<space>d', vim.diagnostic.open_float)


            -- On attach keymaps
            vim.api.nvim_create_autocmd('LspAttach', {
                group = vim.api.nvim_create_augroup('UserLspConfig', {}),
                callback = function(ev)
                    local opts = { buffer = ev.buf }
                    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
                    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
                    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
                    vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
                    vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
                    vim.keymap.set('n', '<space>wl', function()
                        print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
                    end, opts)
                    vim.keymap.set('n', '<space>f', function()
                        vim.lsp.buf.format { async = true }
                    end, opts)
                end,
            })

            vim.diagnostic.config({
                float = {
                    border = "rounded",
                },
            })
        end,
        dependencies = {
            {
                "mason-org/mason.nvim",
                opts = {}
            },
            {
                "mason-org/mason-lspconfig.nvim",
                opts = {
                    ensure_installed = {
                        "pyright",
                        "lua_ls",
                        "rust_analyzer"
                    },
                },

            },
            {
                "folke/neodev.nvim",
                opts = {},
            },
        },
    },
}
