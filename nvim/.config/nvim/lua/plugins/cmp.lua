vim.pack.add({
    {
        src = "https://github.com/saghen/blink.cmp",
        version = vim.version.range("^1"),
    },
    { src = "https://github.com/rafamadriz/friendly-snippets" },
})

require("blink.cmp").setup({
    keymap = {
        preset = "none",
        ["<C-space>"] = { "show", "show_documentation", "hide_documentation" },
        ["<C-e>"] = { "hide", "fallback" },
        ["<C-k>"] = { "show_signature", "hide_signature", "fallback" },
        ["<Tab>"] = { "select_next", "fallback" },
        ["<S-Tab>"] = { "select_prev", "fallback" },
        ["<CR>"] = { "accept", "fallback" },
    },
    completion = {
        list = {
            selection = { preselect = false, auto_insert = false },
        },
        documentation = { auto_show = true, auto_show_delay_ms = 0, },
    },
    signature = { enabled = true },
    sources = {
        providers = {
            snippets = {
                opts = {
                    extended_filetypes = {
                        javascriptreact = { "html" },
                        typescriptreact = { "html" }
                    }
                }
            }
        }
    },
    cmdline = {
        keymap = { preset = "inherit" },
        completion = {
            menu = { auto_show = true },
            list = {
                selection = { preselect = false, auto_insert = false }
            }
        },
    },
})
