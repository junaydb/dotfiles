local lsp = require("lsp-zero")
local config = require("lspconfig")

lsp.on_attach(function(client, bufnr)
	lsp.default_keymaps({ buffer = bufnr })

	-- show symbol info
	vim.keymap.set("n", "gh", vim.lsp.buf.hover, {})

	-- show diagnostics on hover
	vim.api.nvim_create_autocmd("CursorHold", {
		buffer = bufnr,
		callback = function()
			local opts = {
				focusable = false,
				close_events = { "BufLeave", "CursorMoved", "InsertEnter", "FocusLost" },
				border = "rounded",
				source = "always",
				prefix = " ",
				scope = "cursor",
			}
			vim.diagnostic.open_float(nil, opts)
		end,
	})
end)

require("mason").setup({})
require("mason-lspconfig").setup({
	handlers = {
		lsp.default_setup,
	},
})

config.tsserver.setup({
	-- disable tsserver formatting
	on_init = function(client)
		client.server_capabilities.documentFormattingProvider = false
		client.server_capabilities.documentFormattingRangeProvider = false
	end,
})

config.lua_ls.setup({
	-- disable lua_ls formatting
	on_init = function(client)
		client.server_capabilities.documentFormattingProvider = false
		client.server_capabilities.documentFormattingRangeProvider = false
	end,

	-- set 'vim' as global for lua
	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim" },
			},
		},
	},
})
