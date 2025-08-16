return {
  {
    "stevearc/conform.nvim",
    opts = {},
    config = function()
      require("conform").setup({
        formatters_by_ft = {
          go = { "goimports", "gofumpt" },
          javascript = { "prettierd" },
          javascriptreact = { "prettierd" },
          lua = { "stylua" },
          sql = { "sql_formatter" },
          typescript = { "prettierd" },
          typescriptreact = { "prettierd" },
          ["*"] = { "injected" },
        },
      })

      vim.api.nvim_create_autocmd("BufWritePre", {
        pattern = "*",
        callback = function(args)
          require("conform").format({ bufnr = args.buf })
        end,
      })
    end,
  },
}
