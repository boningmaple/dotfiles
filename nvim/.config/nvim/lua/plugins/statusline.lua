vim.pack.add({ "https://github.com/nvim-lualine/lualine.nvim" })

require("lualine").setup({
    options = {
        section_separators = "",
        component_separators = "",
    },
    sections = {
        lualine_a = {
            {
                "mode",
                fmt = function(str) return str:sub(1, 1) end,
                -- separator = { left = "", right = "" },
            },
        },
        lualine_b = {},
        lualine_c = { "filename" },
        lualine_x = {
            "searchcount",
            {
                "diff",
                source = function()
                    local gitsigns = vim.b.gitsigns_status_dict
                    if gitsigns then
                        return {
                            added = gitsigns.added,
                            modified = gitsigns.changed,
                            removed = gitsigns.removed,
                        }
                    end
                end,
            },
            "diagnostics",
            "lsp_status",
            -- { "filetype", icon_only = true }
        },
        lualine_y = {},
        lualine_z = {
            {
                "location",
                -- separator = { left = "", right = "" },
            },
        }
    },
})
