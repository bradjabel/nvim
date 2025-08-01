return {
  config = function()
    vim.lsp.config("templ", {
      cmd = { "templ", "lsp" },
      filetypes = { "templ" },
      root_markers = { ".git" },
    })

    vim.lsp.enable("templ")

    vim.api.nvim_create_autocmd({ "BufWritePre" }, {
      pattern = { "*.templ" },
      group = vim.api.nvim_create_augroup("format_templ", { clear = true }),
      callback = function()
        vim.lsp.buf.format()
      end,
    })
  end,
}
