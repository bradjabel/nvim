return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = {
      { "github/copilot.vim" }, -- or zbirenbaum/copilot.lua
      { "nvim-lua/plenary.nvim", branch = "master" }, -- for curl, log and async functions
    },
    build = "make tiktoken", -- Only on MacOS or Linux
    opts = {},
    config = function()
      require("CopilotChat").setup({})

      vim.cmd("Copilot disable")

      vim.api.nvim_create_autocmd("BufWinEnter", {
        group = vim.api.nvim_create_augroup("CopilotChatOpen", { clear = true }),
        pattern = "copilot-chat",
        callback = function()
          vim.cmd("wincmd =")
        end,
      })

      vim.api.nvim_set_keymap("n", "<space>cc", ":CopilotChat<cr>", {})
      vim.api.nvim_set_keymap("v", "<space>cc", ":CopilotChat<cr>", {})
    end,
    -- -- See Commands section for default commands if you want to lazy load on them
  },
}
