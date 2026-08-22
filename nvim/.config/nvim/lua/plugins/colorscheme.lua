vim.pack.add({ "https://github.com/boningmaple/mac-clear" })

require("mac-clear").setup({
    groups_overrides = function()
        return {
            ["@keyword.import.zig"] = { link = "Function" },
            ["@tag.tsx"] = { link = "Function" },
        }
    end
})
vim.cmd.colorscheme("mac-clear")
