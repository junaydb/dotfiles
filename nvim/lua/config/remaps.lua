local opts = { noremap = true }

vim.g.mapleader = " "

vim.keymap.set("n", "<C-e>", vim.cmd.Ex, opts) -- open netrw

vim.keymap.set("i", "jk", "<Esc>", opts) -- return to normal mode from insert mode

vim.keymap.set("n", "<PageDown>", ":bnext<cr>", opts) -- go to next buffer
vim.keymap.set("n", "<PageUp>", ":bprevious<cr>", opts) -- go to prev buffer
vim.keymap.set("n", "<C-x>", ":bdelete<cr>", opts) -- close current buffer
vim.keymap.set("n", "<C-s>", ":vsplit<cr>", opts) -- split vertical

vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], opts) -- yank to system clipboard
vim.keymap.set({ "n", "v" }, "<leader>yy", [["+yy]], opts) -- yank line to system clipboard

vim.keymap.set("n", "<leader>w", ":w<cr>", opts) -- write

vim.keymap.set("n", "<leader>sl", ":s/", opts) -- search and replace (current line)
vim.keymap.set("n", "<leader>sf", ":%s/", opts) -- search and replace (entire file)

vim.keymap.set("n", "<leader>h", ":noh<cr>", opts) -- remove highlight

vim.keymap.set({ "n", "v" }, "<leader>x", [["_x]], opts) -- delete into black hole register
vim.keymap.set("n", "<leader>dd", [["_dd]], opts) -- delete line into black hole register
