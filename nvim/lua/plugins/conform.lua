return {
  'stevearc/conform.nvim',
  lazy = false,
  keys = {
    {
      '<leader>f',
      function()
        require('conform').format({ async = true, lsp_fallback = true })
      end,
      mode = '',
      desc = '[F]ormat buffer',
    },
  },
  opts = {
    notify_on_error = false,
    formatters_by_ft = {
      lua = { 'stylua' },
      python = { 'black' },
      c = { 'clang_format' },
      cpp = { 'clang_format' },
      javascript = { 'prettier' },
      typescript = { 'prettier' },
      javascriptreact = { 'prettier' },
      typescriptreact = { 'prettier' },
      astro = { 'prettier' },
      json = { 'prettier' },
      markdown = { 'prettier' },
    },
  },
}
