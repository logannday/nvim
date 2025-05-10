return {
    {
        "neovim/nvim-lspconfig",
    },
    {
        "mason-org/mason.nvim",
        depencencies = {
            {
                "mason-org/mason-lspconfig.nvim",
                opts = {
                    ensure_installed = {
                        "pyright",
                        "luals",
                    },
                },
            },
        },
        opts = {}
    },
}
