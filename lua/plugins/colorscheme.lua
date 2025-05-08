return {
    {
        enabled = true,
        'ellisonleao/gruvbox.nvim',
        priority = 1000,
        config = function()
            require('gruvbox').setup({
                contrast = 'hard',
                transparent_mode = true,
            })
            -- vim.cmd([[set background=light]])
            vim.cmd([[set background=dark]])
            vim.cmd([[colorscheme gruvbox]])
        end
    },
}
