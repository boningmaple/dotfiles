vim.pack.add({
    { src = "https://github.com/nvim-tree/nvim-tree.lua" },
    { src = "https://github.com/stevearc/oil.nvim" }
})

require("nvim-tree").setup()
require("oil").setup()
