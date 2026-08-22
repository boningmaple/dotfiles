-- ~/.config/nvim/after/lsp/oxfmt.lua
---@type vim.lsp.Config
return {
  cmd = function(dispatchers, config)
    local root = config.root_dir
    local wrapper = root and vim.fs.joinpath(root, "node_modules", "vite-plus", "bin", "oxfmt")

    if wrapper and vim.fn.executable(wrapper) == 1 then
      return vim.lsp.rpc.start({ wrapper, "--lsp" }, dispatchers)
    end

    return vim.lsp.rpc.start({ "oxfmt", "--lsp" }, dispatchers)
  end,

  settings = {
    run = "onSave",
    ["fmt.configPath"] = "./vite.config.ts",
  },
}
