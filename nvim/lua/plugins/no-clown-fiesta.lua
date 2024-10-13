return {
  'aktersnurra/no-clown-fiesta.nvim',
  priority = 1000,
  opt = {
    transparent = true,
    lsp = { underline = true },
    type = { bold = true },
  },
  init = function()
    vim.cmd.colorscheme('no-clown-fiesta')
    vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
    vim.api.nvim_set_hl(0, 'SignColumn', { bg = 'none' })
    vim.api.nvim_set_hl(0, 'ColorColumn', { bg = '#333333' })
    vim.api.nvim_set_hl(0, 'Comment', { fg = '#c73a69' })
    -- unlink DiagnosticUnnecessary from Comment (and set colour)
    vim.api.nvim_set_hl(0, 'DiagnosticUnnecessary', { default = true, fg = '#666666' })
    vim.api.nvim_set_hl(0, 'LineNr', { fg = '#CCCCCC' })
    vim.api.nvim_set_hl(0, 'MsgArea', { bg = 'none' })
  end,
}
