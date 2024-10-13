-- Make line numbers default
vim.opt.number = true
vim.opt.relativenumber = true

-- Enable mouse mode
vim.opt.mouse = 'a'

-- Keep cursor as block
vim.opt.guicursor = ''

-- Don't show the mode
vim.opt.showmode = false

-- Sync clipboard between OS and Neovim.
vim.opt.clipboard = 'unnamedplus'

-- Save undo history
vim.opt.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn on by default
vim.opt.signcolumn = 'yes'

-- Decrease update time
vim.opt.updatetime = 250

-- Decrease mapped sequence wait time
-- Displays which-key popup sooner
vim.opt.timeoutlen = 300

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor
vim.opt.list = true
vim.opt.listchars = { tab = '  ', trail = ' ', nbsp = '␣' }
-- vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Tab width
vim.opt.tabstop = 2
vim.opt.smartindent = true
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

-- Preview substitutions live (whilst typing)
vim.opt.inccommand = 'split'

-- Show which line cursor is on
vim.opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor
vim.opt.scrolloff = 10

-- netrw settings
vim.g.netrw_banner = 0
vim.g.netrw_list_hide = [[\.git\/,.DS_Store,\.\.\=/\=$]]

-- highlight column 79
vim.opt.colorcolumn = '79'
