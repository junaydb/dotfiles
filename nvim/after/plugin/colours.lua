vim.cmd.colorscheme("tokyonight-storm")
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

-- make sign column transparent (LSP was causing it to be solid for some reason)
vim.cmd("highlight! SignColumn guibg=NONE ctermbg=NONE")
