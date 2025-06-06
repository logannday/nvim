return {
    {
        "Saghen/blink.cmp",
        event = "Vimenter",
        dependencies = {
            {
                "L3MON4D3/LuaSnip",
                dependencies = {
                    {
                        'rafamadriz/friendly-snippets',
                        event = "VeryLazy",
                    },
                },
                config = function(opts)
                    require('luasnip.loaders.from_vscode').lazy_load()
                end,
            }
        },
        opts = {
            fuzzy = { implementation = "lua" },
            keymap = {
                ['<C-space>'] = { 'show', 'show_documentation', 'hide_documentation' },
                ['<C-e>'] = { 'hide', 'fallback' },

                ['<Tab>'] = {
                    function(cmp)
                        if cmp.snippet_active() then
                            return cmp.accept()
                        else
                            return cmp.select_and_accept()
                        end
                    end,
                    'snippet_forward',
                    'fallback'
                },
                ['<S-Tab>'] = { 'snippet_backward', 'fallback' },

                ['<Up>'] = { 'select_prev', 'fallback' },
                ['<Down>'] = { 'select_next', 'fallback' },
                ['<C-p>'] = { 'select_prev', 'fallback_to_mappings' },
                ['<C-n>'] = { 'select_next', 'fallback_to_mappings' },

                ['<C-b>'] = { 'scroll_documentation_up', 'fallback' },
                ['<C-f>'] = { 'scroll_documentation_down', 'fallback' },

                ['<C-k>'] = { 'show_signature', 'hide_signature', 'fallback' },
            }
        },
    },
    -- {
    --     {
    --         'hrsh7th/nvim-cmp',
    --         enabled = false,
    --         dependencies = {
    --             'hrsh7th/cmp-nvim-lsp',
    --             'hrsh7th/cmp-buffer',
    --             'hrsh7th/cmp-path',
    --             'hrsh7th/cmp-cmdline',
    --         },
    --         opts = {
    --             snippet = {
    --                 expand = function(args)
    --                     require('luasnip').lsp_expand(args.body)
    --                 end
    --             },
    --             mapping = cmp.mapping.preset.insert({
    --                 ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    --                 ['<C-f>'] = cmp.mapping.scroll_docs(4),
    --                 ['<C-Space>'] = cmp.mapping.complete(),
    --                 ['<C-e>'] = cmp.mapping.abort(),
    --                 ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    --             }),
    --             sources = cmp.config.sources({
    --                 { name = 'nvim_lsp' },
    --                 { name = 'luasnip' }, -- For luasnip users.
    --                 { name = 'buffer' },
    --             })
    --         },
    --     },
    -- }
}
