return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("config.plugins.lsp.lua").config()
      require("config.plugins.lsp.go").config()
      require("config.plugins.lsp.html").config()
      require("config.plugins.lsp.templ").config()
      require("config.plugins.lsp.ts").config()
    end,
  },
}
