-- ~/.config/nvim/after/lsp/oxlint.lua
---@type vim.lsp.Config
return {
  cmd = function(dispatchers, config)
    local root = config.root_dir
    local wrapper = root and vim.fs.joinpath(root, "node_modules", "vite-plus", "bin", "oxlint")

    if wrapper and vim.fn.executable(wrapper) == 1 then
      return vim.lsp.rpc.start({ wrapper, "--lsp" }, dispatchers)
    end

    return vim.lsp.rpc.start({ "oxlint", "--lsp" }, dispatchers)
  end,

  settings = {
    run = "onType",
    typeAware = true,
  },
}
