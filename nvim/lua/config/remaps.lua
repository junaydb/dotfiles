-- Set <space> as the leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Use CTRL+<hjkl> to switch between windows
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Open netrw
vim.keymap.set('n', '<C-e>', vim.cmd.Ex, { desc = 'Open explorer' })

-- jk for insert->normal mode
vim.keymap.set('i', 'jk', '<Esc>', { desc = 'Escape' })

-- Write buffer
vim.keymap.set('n', '<leader>w', ':w<cr>', { desc = 'Write file' })

-- Search and replace
vim.keymap.set('n', '<leader>sl', ':s/', { desc = 'Search and replace (current line)' })
vim.keymap.set('n', '<leader>sf', ':%s/', { desc = 'Sewarch and replace (entire file)' })

-- Rename symbol
vim.keymap.set('n', '<leader>r', vim.lsp.buf.rename, { desc = 'Rename symbol' })

-- Remove highlight
vim.keymap.set('n', '<leader>h', ':noh<cr>')
