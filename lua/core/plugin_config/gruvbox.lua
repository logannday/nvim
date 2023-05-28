-- Default options:
require('kanagawa').setup({
  transparent = false,   -- do not set background color
  colors = {
    theme = {
      all = {
        ui = {
          bg_gutter = "none"
        }
      }
    }
  },
})

-- setup must be called before loading
vim.cmd("colorscheme kanagawa")
-- make line numbers transparent
vim.cmd("hi LineNr guibg=NONE")
--make gutter transparent
vim.cmd(":highlight SignColumn guibg=none")
