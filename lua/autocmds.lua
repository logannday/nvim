-- LATEX boilerplate
vim.api.nvim_create_autocmd("BufNewFile", {
    pattern = "*.tex",
    group = vim.api.nvim_create_augroup("texgroup", { clear = true }),
    callback = function()
        local skeleton_content = vim.fn.readfile(vim.fn.expand("~/.config/nvim/templates/template.tex"))
        vim.fn.setline(1, skeleton_content)
    end,
})

-- set Compiler for rust to cargo on enter
vim.api.nvim_exec(
    [[
  autocmd FileType rust compiler cargo
  autocmd FileType rust set errorformat=%f:%l:%c:%t:%m
]],
    false
)

vim.api.nvim_create_autocmd("FileType", {
    pattern = { "c", "html", "javascript" },
    callback = function()
        vim.opt_local.shiftwidth = 2
        vim.opt_local.tabstop = 2
    end
})


-- run pdflatex on save
vim.cmd([[
   augroup tex
   autocmd!
   autocmd BufWritePost *.tex silent! execute "!pdflatex %" | redraw!
   augroup END
]])

vim.api.nvim_create_autocmd("FileType", {
    pattern = { "tex" },
    callback = function()
        vim.keymap.set("n", "<leader>r", ":!pdflatex % && open *.pdf<CR>", { buffer = true })
    end
})

-- -- Automatically open Netrw when Neovim is launched without a filename
-- vim.cmd([[
--   autocmd VimEnter * if argc() == 0 | Explore | endif
-- ]])
-- vim.cmd([[
--     augroup ProjectDrawer
--     autocmd!
--     autocmd VimEnter * if argc() == 0 | Explore! | endif
--     augroup END
-- ]])
