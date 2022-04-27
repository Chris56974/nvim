local lsp_installer = require "nvim-lsp-installer"
local cmp_nvim_lsp  = require "cmp_nvim_lsp"

require "lsp.signature"
require "lsp.null-ls"

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = cmp_nvim_lsp.update_capabilities(capabilities)

local on_attach = function(client) -- null-ls
  if client.name == "tsserver" then
    client.resolved_capabilities.document_formatting = false
  end
end

lsp_installer.on_server_ready(function(server)
  local opts = {
    on_attach = on_attach,
    capabilities = capabilities
  }

  if server.name == "sumneko_lua" then
    local sumneko = require "lsp.servers.sumneko"
    opts = vim.tbl_deep_extend("force", sumneko, opts)
  end

  if server.name == "rust_analyzer" then
    require("rust-tools").setup { -- Initialize the LSP via rust-tools instead
      -- The "server" property provided in rust-tools setup function are the
      -- settings rust-tools will provide to lspconfig during init.            --
      -- We merge the necessary settings from nvim-lsp-installer (server:get_default_options())
      -- with the user's own settings (opts).
      server = vim.tbl_deep_extend("force", server:get_default_options(), opts),
    }
    server:attach_buffers()
    -- Only if standalone support is needed
    require("rust-tools").start_standalone_if_required()
  else
    server:setup(opts)
  end

  server:setup(opts)
end)
