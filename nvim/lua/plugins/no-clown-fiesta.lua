return {
  'aktersnurra/no-clown-fiesta.nvim',
  priority = 1000,
  opt = {
    transparent = true,
    lsp = { underline = true },
    type = { bold = true },
  },
  init = function()
    -- load the colorscheme here
    vim.cmd.colorscheme('no-clown-fiesta')
    -- comment colour
    vim.api.nvim_set_hl(0, 'Comment', { fg = '#c73a69' })
    -- line number colour
    vim.api.nvim_set_hl(0, 'LineNr', { fg = '#BBBBBB' })
  end,
}
