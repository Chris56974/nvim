local nls = require("null-ls")
local formatting = nls.builtins.formatting
local diagnostics = nls.builtins.diagnostics

nls.setup({
	sources = {
		diagnostics.eslint,
		diagnostics.golangci_lint,
		formatting.prettier,
		formatting.terraform_fmt,
		formatting.black,
	},
	on_attach = function(client)
		if client.resolved_capabilities.document_formatting then
			-- auto format on save (not asynchronous)
			local LspFormattingGrp = vim.api.nvim_create_augroup("LspFormattingGrp", { clear = true })
			vim.api.nvim_create_autocmd("BufWritePre", {
				command = "lua vim.lsp.buf.formatting_sync()",
				group = LspFormattingGrp,
			})
		end
	end,
})
