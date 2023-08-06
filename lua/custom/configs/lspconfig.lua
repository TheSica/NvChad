local config = require("plugins.configs.lspconfig")

local on_attach = config.on_attach
local capabilities = config.capabilities

local lspconfig = require("lspconfig")

lspconfig.pyright.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {"python"},
})

lspconfig.clangd.setup({
  on_attach = function(client, bufnr)
    client.server_capabilities.signatureHelpProvider = false
    on_attach(client, bufnr)
  end,
  capabilities = capabilities,
  init_options={
    clangdFileStatus = true,
    clangdSemanticHighlighting = true,
  },
  cmd = {
        "clangd",
        "--pretty",
        "--header-insertion=iwyu",
        "--background-index",
        "--suggest-missing-includes",
        "-j=40",
        "--pch-storage=memory",
        "--clang-tidy",
        "--compile-commands-dir=.",
  }
--root_dir = root_pattern("compile_commands.json", "compile_flags.txt", ".git") or dirname

})


