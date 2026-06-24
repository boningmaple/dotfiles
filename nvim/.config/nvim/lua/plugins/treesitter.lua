vim.pack.add({ "https://github.com/nvim-treesitter/nvim-treesitter" })

require("nvim-treesitter").setup()
require("nvim-treesitter").install({
    "bash",
    "c_sharp",
    "comment",
    "cpp",
    "css",
    "git_config",
    "git_rebase",
    "gitattributes",
    "gitcommit",
    "gitignore",
    "go",
    "html",
    "html_tags",
    "javascript",
    "json",
    "jsx",
    "latex",
    "python",
    "rust",
    "scss",
    "sql",
    "swift",
    "toml",
    "tsx",
    "typescript",
    "typst",
    "yaml",
    "zig",
    "zsh",
})

-- Enable Treesitter Highlighting, Folding, Indentation for every filetype
vim.api.nvim_create_autocmd("FileType", {
    callback = function()
        -- syntax highlighting, provided by Neovim
        pcall(vim.treesitter.start)
        -- folds, provided by Neovim
        vim.wo.foldexpr = "v:lua.vim.treesitter.foldexpr()"
        vim.wo.foldmethod = "expr"
        -- indentation, provided by nvim-treesitter
        vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
    end,
})
