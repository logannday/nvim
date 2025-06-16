-- LATEX boilerplate
vim.api.nvim_create_autocmd("BufNewFile", {
    pattern = "*.tex",
    group = vim.api.nvim_create_augroup("texgroup", { clear = true }),
    callback = function()
        local skeleton_content = vim.fn.readfile(vim.fn.expand("~/.config/nvim/templates/template.tex"))
        vim.fn.setline(1, skeleton_content)
    end,
})

-- Open nvim in telescope
-- vim.api.nvim_create_autocmd("VimEnter", {
--   callback = function()
--     local args = vim.fn.argv()
--     if #args == 0 then
--       require("telescope.builtin").find_files()
--     end
--   end
-- })

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

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.hl.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.hl.on_yank()
  end,
})
