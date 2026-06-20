vim.pack.add({ "https://github.com/lewis6991/gitsigns.nvim" })
vim.pack.add({ "https://github.com/sindrets/diffview.nvim" })
vim.pack.add({ "https://github.com/neogitorg/neogit" })
-- vim.pack.add({ "https://github.com/esmuellert/codediff.nvim" })

require("gitsigns").setup({ numhl = true })
require("neogit").setup({
    -- Use Treesitter to apply syntax highlighting to diff hunks
    treesitter_diff_highlight = true,
})
