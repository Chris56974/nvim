--[[
local lsp_installer = require("nvim-lsp-installer")

lsp_installer.on_server_ready(function(server)
	local opts = {
		on_attach = require("lsp-handlers").on_attach,
		capabilities = require("lsp-handlers").capabilities,
	}

	if server.name == "sumneko_lua" then
		local sumneko_opts = require("lsp_servers.sumneko")
		opts = vim.tbl_deep_extend("force", sumneko_opts, opts)
	end

	-- This setup() function is exactly the same as lspconfig's setup function.
	-- Refer to https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
	server:setup(opts)
end)
--]]

-- if server.name == "jsonls" then
-- 	local jsonls_opts = require("lsp_servers.jsonls")
-- 	opts = vim.tbl_deep_extend("force", jsonls_opts, opts)
-- end

-- if server.name == "pyright" then
--    local
-- 	opts = vim.tbl_deep_extend("force", lsp_servers.pyright, opts)
-- end
--
-- if server.name == "jdtls" then
-- 	return
-- end
--
-- if server.name == "solang" then
-- 	local solang_opts = require("user.lsp.settings.solang")
-- 	opts = vim.tbl_deep_extend("force", solang_opts, opts)
-- end
--
-- if server.name == "solc" then
-- 	local solc_opts = require("user.lsp.settings.solc")
-- 	opts = vim.tbl_deep_extend("force", solc_opts, opts)
-- end
--
-- if server.name == "emmet_ls" then
-- 	local emmet_ls_opts = require("user.lsp.settings.emmet_ls")
-- 	opts = vim.tbl_deep_extend("force", emmet_ls_opts, opts)
-- end
