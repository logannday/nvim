require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'auto',
    transparent = true,
  },
  sections = {
    lualine_a = {
      {
        'diagnostics',
        sources = {nvim_lsp},
        sections = {'error'},
        'filename',
        path = 1,
      }
    }
  }
}
