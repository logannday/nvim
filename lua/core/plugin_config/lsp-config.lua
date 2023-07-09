require("mason").setup()
require("mason-lspconfig").setup {
  ensure_installed = { "lua_ls", "clangd", "rust_analyzer", "jdtls", "quick_lint_js", "eslint", "vtsls", "svelte" },
}

local on_attach = function(_, _)
  vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
  vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})

  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
  vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references, {})
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
  vim.keymap.set('n', 'gf', vim.lsp.buf.format, {})
end

local capabilities = require('cmp_nvim_lsp').default_capabilities()

require("lspconfig").lua_ls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  settings = {
    Lua = {
      diagnostics = {
        globals = { 'vim' }
      }
    }
  }
}
require("lspconfig").texlab.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}
require("lspconfig").jdtls.setup {
  on_attach = on_attach,
  -- capabilities = capabilities,
}
require("lspconfig").clangd.setup {
  on_attach = on_attach,
  --capabilities = capabilities,
}
require("lspconfig").quick_lint_js.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}
require("lspconfig").eslint.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}
require("lspconfig").svelte.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}
require("lspconfig").vtsls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}
  -- Function to check if a floating dialog exists and if not
  -- then check for diagnostics under the cursor
  function OpenDiagnosticIfNoFloat()
    for _, winid in pairs(vim.api.nvim_tabpage_list_wins(0)) do
      if vim.api.nvim_win_get_config(winid).zindex then
        return
      end
    end
    -- THIS IS FOR BUILTIN LSP
    vim.diagnostic.open_float(0, {
      scope = "cursor",
      focusable = false,
      close_events = {
        "CursorMoved",
        "CursorMovedI",
        "BufHidden",
        "InsertCharPre",
        "WinLeave",
      },
    })
  end
  -- Show diagnostics under the cursor when holding position
  vim.api.nvim_create_augroup("lsp_diagnostics_hold", { clear = true })
  vim.api.nvim_create_autocmd({ "CursorHold" }, {
    pattern = "*",
    command = "lua OpenDiagnosticIfNoFloat()",
    group = "lsp_diagnostics_hold",
  })
