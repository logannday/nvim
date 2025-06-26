return {
    "ibhagwan/fzf-lua",
    dependencies = { "nvim-tree/nvim-web-devicons" }, -- optional but recommended
    opts = {
        files = {
            fd_opts = [[--type f --exclude .git --exclude node_modules --exclude venv]],
            find_opts = [[-type f \! -path '*/.git/*']],
        },
        winopts = {
            preview = {
                layout = 'vertical'
            }
        },
    },
    config = function()
        local fzf = require("fzf-lua")

        local function edit_neovim()
            fzf.files({
                cwd = "~/.config/nvim",
            })
        end

        vim.keymap.set("n", "<leader>sf", fzf.files, {})
        vim.keymap.set("n", "<C-p>", fzf.files, {})
        vim.keymap.set("n", "<leader>sd", edit_neovim, {})
        vim.keymap.set("n", "<leader>so", fzf.oldfiles, {})
        vim.keymap.set("n", "<leader>sg", fzf.live_grep, {})
        vim.keymap.set("n", "<C-g>", fzf.git_files, {})
        vim.keymap.set("n", "<leader>sh", fzf.help_tags, {})
        vim.keymap.set("n", "<leader>sc", fzf.commands, {})
        vim.keymap.set("n", "<leader>sm", fzf.man_pages, {})
        vim.keymap.set("n", "<leader>ss", fzf.colorschemes, {})
        vim.keymap.set("n", "<leader>sr", fzf.lsp_references, {})
    end,
}
