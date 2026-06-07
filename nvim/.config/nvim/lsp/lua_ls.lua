return {
    cmd = { "lua-language-server" },
    filetypes = { "lua" },
    -- Sets the "workspace" to the directory where any of these files is found.
    root_markers = {
        ".luarc.json",
        ".luarc.jsonc",
        ".luacheckrc",
        ".stylua.toml",
        ".git",
    },
    settings = {
        -- Docs: https://luals.github.io/wiki/settings/
        Lua = {
            ["runtime.version"] = "LuaJIT",
            ["diagnostics.globals"] = { "vim" },
            -- Docs: https://github.com/CppCXY/EmmyLuaCodeStyle/blob/master/docs/format_config_EN.md
            ["format.defaultConfig"] = { quote_style = "double" },
            ["workspace.library"] = {
                -- Make the server aware of Neovim runtime files
                vim.env.VIMRUNTIME,
                -- Or pull in all of 'runtimepath'.
                -- NOTE: this is a lot slower and will cause issues when working on
                -- your own configuration.
                -- See https://github.com/neovim/nvim-lspconfig/issues/3189
                -- vim.api.nvim_get_runtime_file('', true)
            },
        }
    }
}
