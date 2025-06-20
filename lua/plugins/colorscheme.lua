vim.cmd("colorscheme retrobox")
return {
    {
    },
    {
        enabled = false,
        'fenetikm/falcon',
        config = function ()
            vim.o.background = "dark"
            vim.cmd("let g:falcon_background = 0")
            vim.cmd("let g:falcon_inactive = 1")
            vim.cmd("colorscheme falcon")
        end
    },
    {
        enabled = false,
        'ellisonleao/gruvbox.nvim',
        priority = 1000,
        config = function()
            require('gruvbox').setup({
                contrast = 'hard',
                transparent_mode = true,
            })
            local hour = tonumber(os.date("%H"))

            if hour >= 7 and hour < 20.5 then
                -- Daytime: use light background
                vim.o.background = "light"
            else
                -- Nighttime: use dark background
                vim.o.background = "dark"
            end
            vim.o.background = "dark"
            -- vim.cmd = "dark"
            -- vim.cmd.colorscheme('gruvbox')
        end
    },
    {
        "catppuccin/nvim",
        name = "catppuccin",
        enabled = false,
        priority = 1000,
        config = function()
            require("catppuccin").setup({
                flavour = "auto", -- latte, frappe, macchiato, mocha
                background = {    -- :h background
                    light = "latte",
                    dark = "mocha",
                },
                transparent_background = true, -- disables setting the background color.
                show_end_of_buffer = false,    -- shows the '~' characters after the end of buffers
                term_colors = false,           -- sets terminal colors (e.g. `g:terminal_color_0`)
                dim_inactive = {
                    enabled = false,           -- dims the background color of inactive window
                    shade = "dark",
                    percentage = 0.15,         -- percentage of the shade to apply to the inactive window
                },
                no_italic = false,             -- Force no italic
                no_bold = false,               -- Force no bold
                no_underline = false,          -- Force no underline
                styles = {                     -- Handles the styles of general hi groups (see `:h highlight-args`):
                    comments = { "italic" },   -- Change the style of comments
                    conditionals = { "italic" },
                    loops = {},
                    functions = {},
                    keywords = {},
                    strings = {},
                    variables = {},
                    numbers = {},
                    booleans = {},
                    properties = {},
                    types = {},
                    operators = {},
                    -- miscs = {}, -- Uncomment to turn off hard-coded styles
                },
                color_overrides = {},
                custom_highlights = {},
                default_integrations = true,
                integrations = {
                    cmp = true,
                    gitsigns = true,
                    nvimtree = true,
                    treesitter = true,
                    notify = false,
                    mini = {
                        enabled = true,
                        indentscope_color = "",
                    },
                    -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
                },
            })

            -- setup must be called before loading
            -- vim.cmd.colorscheme "catppuccin"
        end
    },
    {
        "rebelot/kanagawa.nvim",
        enabled = false,
        config = function()
            -- Default options:
            require('kanagawa').setup({
                compile = false,  -- enable compiling the colorscheme
                undercurl = true, -- enable undercurls
                commentStyle = { italic = true },
                functionStyle = {},
                keywordStyle = { italic = true },
                statementStyle = { bold = true },
                typeStyle = {},
                transparent = true,    -- do not set background color
                dimInactive = false,   -- dim inactive window `:h hl-NormalNC`
                terminalColors = true, -- define vim.g.terminal_color_{0,17}
                colors = {             -- add/modify theme and palette colors
                    palette = {},
                    theme = { all = { ui = { bg_gutter = 'none' } } }
                },
                overrides = function(colors) -- add/modify highlights
                    return {}
                end,
                theme = "wave",    -- Load "wave" theme
                background = {     -- map the value of 'background' option to a theme
                    dark = "wave", -- try "dragon" !
                    light = "lotus"
                },
            })

            -- setup must be called before loading
            -- vim.cmd("colorscheme kanagawa")
        end
    },
}
