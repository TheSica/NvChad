local rust_lsp = {
  "neovim/nvim-lspconfig",
  config = function()
    require "plugins.configs.lspconfig"
--    require "custom.configs.lspconfig"
    require "custom.lsp_configs.rust.rust_lspconfig.lua"
  end,

}

return rust_lsp
