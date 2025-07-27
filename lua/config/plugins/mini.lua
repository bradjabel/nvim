return {
  {
    'echasnovski/mini.nvim',
    enabled = true,
    version = false,
    config = function()
      require('mini.statusline').setup({ use_icons = true })
    end
  }
}
