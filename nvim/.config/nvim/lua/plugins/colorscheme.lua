vim.pack.add({ "https://github.com/nvim-tree/nvim-web-devicons" })
-- vim.pack.add({ "https://github.com/boningmaple/mac-clear" })

require("nvim-web-devicons").setup()
vim.cmd.packadd("mac-clear")

vim.cmd.colorscheme("mac-clear")
