return {
  'ThePrimeagen/harpoon',
  config = function()
    local harpoonMark = require('harpoon.mark')
    local harpoonUI = require('harpoon.ui')
    vim.keymap.set('n', '<leader>a', harpoonMark.add_file)
    vim.keymap.set('n', '<leader>pc', harpoonMark.clear_all)
    vim.keymap.set('n', '<leader>pj', harpoonUI.toggle_quick_menu)
    vim.keymap.set('n', '<leader>d', harpoonUI.nav_next)
    vim.keymap.set('n', '<leader>u', harpoonUI.nav_prev)
  end,
}
