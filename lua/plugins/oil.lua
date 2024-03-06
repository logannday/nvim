return {
    'stevearc/oil.nvim',
    opts = {
        default_file_explorer = true,
    },
    -- Optional dependencies
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function(opts)
        require("oil").setup(opts)
        vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
    end
}
