require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "al"
  ensure_installed = { "c", "python", "lua", "rust", "ruby", "vim", "java", "javascript", "typescript" },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
    disable = "latex",
    additional_vim_regex_highlighting = { "latex", "markdown" },
  },
}
