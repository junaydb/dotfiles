require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		python = { "black" },
		javascript = { "prettierd" },
		typescript = { "prettierd" },
		typescriptreact = { "prettierd" },
		html = { "prettierd" },
		css = { "prettierd" },
		c = { "clang_format" },
		cpp = { "clang_format" },
		java = { "google-java-format" },
	},
})

vim.keymap.set("n", "<leader>f", require("conform").format, { noremap = true })
