return {
  'ellisonleao/gruvbox.nvim',
  priority = 1000,
  config = true,
  init = function()
    local gruvbox_palette = require('gruvbox').palette
    vim.o.background = 'dark'
    vim.cmd('colorscheme gruvbox')
    vim.api.nvim_set_hl(0, 'SignColumn', { bg = gruvbox_palette.dark0 })
  end,
  opts = {
    italic = {
      strings = false,
    },
  },
}
