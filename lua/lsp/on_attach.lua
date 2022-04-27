local lsp_status = require 'lsp-status'

return function(client)
  if client.name == 'tsserver' then
    lsp_status.on_attach(client)
    client.resolved_capabilities.document_formatting = false
  end

  if client.name == 'volar' then
    lsp_status.on_attach(client)
    client.resolved_capabilities.document_formatting = false
  end

  if client.name == 'sumneko_lua' then
    lsp_status.on_attach(client)
    client.resolved_capabilities.document_formatting = false
  end
end
