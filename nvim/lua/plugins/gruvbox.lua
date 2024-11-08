return {
  'ellisonleao/gruvbox.nvim',
  priority = 1000,
  config = true,
  init = function()
    vim.o.background = 'dark'
    vim.cmd('colorscheme gruvbox')
    vim.api.nvim_set_hl(0, 'SignColumn', { bg = "#282828" })
  end,
  opts = {},
}
