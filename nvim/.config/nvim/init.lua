require("plugins.options")
require("plugins.keymaps")
require("plugins.colorscheme")
require("plugins.treesitter")
require("plugins.lsp")
require("plugins.cmp")
require("plugins.fzf")
require("plugins.statusline")
require("plugins.git")
require("plugins.file-explorer")
require("plugins.which-key")
require("plugins.markdown")
require("plugins.auto-save")
require("plugins.session")
require("plugins.outline")
require("plugins.diffview")
require("plugins.context")
vim.cmd.packadd("nohlsearch")
vim.cmd.packadd("nvim.undotree")

-- Make readonly buffers non-modifiable.
vim.api.nvim_create_autocmd({ "BufReadPost", "BufNewFile" }, {
    callback = function(args)
        local bufnr = args.buf
        if vim.bo[bufnr].readonly then
            vim.bo[bufnr].modifiable = false
        end
    end,
})
