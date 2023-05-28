require('lualine').setup {
  options = {
    icons_enabled = false,
    theme = 'auto',
  },
  sections = {
    lualine_a = {
      {
        'filename',
        path = 1,
      }
    }
  }
}
