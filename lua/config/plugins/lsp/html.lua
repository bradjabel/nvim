return {
  config = function()
    vim.lsp.config("html", {
      cmd = { "vscode-html-language-server", "--stdio" },
      filetypes = { "html", "templ" },
      root_markers = { ".git" },
      init_options = {
        configurationSection = { "html", "css", "javascript" },
        embeddedLanguages = {
          css = true,
          javascript = true,
        },
        provideFormatter = true,
      },
      single_file_support = true,
      -- settings = {
      --   html = {
      --     format = {
      --       wrapLineLength = 120,
      --       unformatted = "a,code,pre",
      --       contentUnformatted = "pre",
      --     },
      --     hover = {
      --       documentation = true,
      --     },
      --   },
      -- },
    })

    vim.lsp.enable("html")
  end,
}
