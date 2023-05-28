local null_ls = require("null-ls")
local sources = {
    null_ls.builtins.formatting.prettier.with({
        filetypes = { "html", "json", "yaml", "markdown", "java", "svelte", "python"},
    }),
}
