-- Set <space> as the leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Open netrw
vim.keymap.set('n', '<C-e>', vim.cmd.Ex, { desc = 'Open [E]xplorer' })

-- jk for insert->normal mode
vim.keymap.set('i', 'jk', '<Esc>', { desc = 'Escape' })

-- Write buffer
vim.keymap.set('n', '<leader>w', ':w<cr>', { desc = '[W]rite file' })

-- Search and replace
vim.keymap.set('n', '<leader>sl', ':s/', { desc = '[S]earch and replace current [L]ine' })
vim.keymap.set('n', '<leader>sf', ':%s/', { desc = '[S]earch and replace entire [F]ile' })

-- Rename symbol
vim.keymap.set('n', '<leader>r', vim.lsp.buf.rename, { desc = '[R]ename symbol' })

-- Remove highlight
vim.keymap.set('n', '<leader>h', ':noh<cr>', { desc = 'Remove hlsearch [H]ighlight' })
