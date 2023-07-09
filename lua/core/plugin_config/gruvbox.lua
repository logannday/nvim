vim.o.background = "dark"
vim.cmd([[colorscheme gruvbox]])
-- vim.cmd("hi LineNr guibg=NONE")
-- --make gutter transparent
-- vim.cmd(":highlight SignColumn guibg=none")
-- --hopefully removes statusbar hightlight
vim.cmd('highlight StatusLine guibg=NONE')
--
-- --maybe removes inactive statusbar bg
vim.cmd([[
  hi StatusLineNC guibg=NONE
  hi VertSplit guibg=NONE
  hi Folded guibg=NONE
]])
