vim.pack.add({
    { src = "https://github.com/neovim/nvim-lspconfig" },
    { src = "https://github.com/mason-org/mason.nvim" },
    { src = "https://github.com/mason-org/mason-lspconfig.nvim" },
    { src = "https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim" },
})

require("mason").setup({})
require("mason-lspconfig").setup()
require("mason-tool-installer").setup({
    ensure_installed = {
        "bashls",
        "clangd",
        "cssls",
        "css_variables",
        "cssmodules_ls",
        "gopls",
        "html",
        "lua_ls",
        "rust_analyzer",
        "shellcheck",
        "shfmt",
        "tailwindcss",
        "tsgo",
        "ty",
        "zls",
    }
})
