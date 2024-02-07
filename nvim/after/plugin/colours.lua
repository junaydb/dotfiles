vim.cmd.colorscheme("tokyonight-storm")
-- vim.cmd("hi Normal guibg=#000000")
-- vim.cmd("hi SignColumn guibg=#000000")

vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
-- make sign column transparent
vim.cmd("highlight! SignColumn guibg=NONE ctermbg=NONE")
