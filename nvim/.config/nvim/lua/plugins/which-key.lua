vim.pack.add({ "https://github.com/folke/which-key.nvim" })

require("which-key").setup({
    preset = "helix",
    delay = function(ctx)
        return ctx.plugin and 0 or 500
    end,
    spec = {
        { "<leader>w", group = "[W]indow" },
        { "<leader>s", group = "[S]earch" },
        { "<leader>h", group = "Git [H]unk" },
        { "<leader>f", group = "[F]ile" },
    }
})
