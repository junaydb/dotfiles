local opts = { noremap = true }

local harpoonMark = require("harpoon.mark")
local harpoonUI = require("harpoon.ui")

vim.keymap.set("n", "<leader>a", harpoonMark.add_file, opts)
vim.keymap.set("n", "<leader>pc", harpoonMark.clear_all, opts)
vim.keymap.set("n", "<leader>pj", harpoonUI.toggle_quick_menu, opts)
vim.keymap.set("n", "<leader>d", harpoonUI.nav_next, opts)
vim.keymap.set("n", "<leader>u", harpoonUI.nav_prev, opts)
