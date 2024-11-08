require('config')

-- Set bash as neovim's shell to fix vim-tmux-navigator delay
vim.opt.shell = '/bin/bash -i'

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.uv.fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  vim.fn.system({ 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath })
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

-- Plugins
require('lazy').setup({
  spec = {
    { import = 'plugins' },
  },
})
