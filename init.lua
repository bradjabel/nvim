require("config.lazy")

local set = vim.opt

set.shiftwidth = 2
set.tabstop = 2
set.number = true
set.relativenumber = true
set.clipboard = "unnamedplus"

vim.o.splitright = true

vim.api.nvim_set_keymap("n", "<space><space>x", ":w<cr> :source %<cr>", {})
vim.api.nvim_set_keymap("n", "<space>x", ":.lua <cr>", {})
vim.api.nvim_set_keymap("v", "<space>x", ":lua <cr>", {})

vim.api.nvim_set_keymap("n", "<space>w", ":w<cr>", {})

vim.api.nvim_set_keymap("n", "-", ":Ex<cr>", {})
vim.api.nvim_set_keymap("n", "_", ":Vex!<cr>", {})

vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight text on yank",
  group = vim.api.nvim_create_augroup("highlight_on_yank", { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
