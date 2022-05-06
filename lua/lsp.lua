-- ╭──────────────────────────────────────────────────────────╮
-- │ Preliminary setup                                        │
-- ╰──────────────────────────────────────────────────────────╯

-- must come first
require('nvim-lsp-installer').setup {}
require('lsp_signature').setup {}

-- Give each server the capability to use cmp_nvim_lsp as a completion source
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

-- setup the runtime path for sumneko_lua
local runtime_path = vim.split(package.path, ';')
table.insert(runtime_path, 'lua/?.lua')
table.insert(runtime_path, 'lua/?/init.lua')

-- shorthands for null-ls
local nls = require 'null-ls'
local formatting = nls.builtins.formatting
local diagnostics = nls.builtins.diagnostics
local code_actions = nls.builtins.code_actions

-- shorthand for lspconfig
local lsp = require 'lspconfig'

-- ╭──────────────────────────────────────────────────────────╮
-- │ Server Config (alphabetical order)                       │
-- ╰──────────────────────────────────────────────────────────╯

nls.setup {
  autostart = true,
  sources = {
    formatting.stylua,
    formatting.black,
    formatting.prettierd,
    code_actions.eslint_d,
    diagnostics.eslint_d,
    formatting.eslint_d,
  },
}

lsp.angularls.setup {
  capabilities = capabilities,
  root_dir = lsp.util.root_pattern 'angular.json',
}
lsp.ansiblels.setup {
  capabilities = capabilities,
}
lsp.bashls.setup {
  capabilities = capabilities,
}
lsp.ccls.setup {
  capabilities = capabilities,
}
lsp.csharp_ls.setup {
  capabilities = capabilities,
}
lsp.cssls.setup {
  capabilities = capabilities,
}
lsp.cssmodules_ls.setup {
  capabilities = capabilities,
}
lsp.cmake.setup {
  capabilities = capabilities,
}
lsp.dartls.setup {
  capabilities = capabilities,
}
lsp.denols.setup {
  capabilities = capabilities,
  root_dir = lsp.util.root_pattern('deno.json', 'deno.jsonc'),
}
lsp.dockerls.setup {
  capabilities = capabilities,
}
lsp.gopls.setup {
  capabilities = capabilities,
}
lsp.gradle_ls.setup {
  capabilities = capabilities,
}
lsp.graphql.setup {
  capabilities = capabilities,
}
lsp.java_language_server.setup {
  capabilities = capabilities,
}
lsp.kotlin_language_server.setup {
  capabilities = capabilities,
}
lsp.r_language_server.setup {
  capabilities = capabilities,
}
lsp.solc.setup {
  capabilities = capabilities,
}
lsp.solargraph.setup {
  capabilities = capabilities,
}
lsp.sqls.setup {
  capabilities = capabilities,
}
lsp.svelte.setup {
  capabilities = capabilities,
}
lsp.tailwindcss.setup {
  capabilities = capabilities,
  root_dir = lsp.util.root_pattern('tailwind.config.js', 'tailwind.config.ts'),
}
lsp.terraform_lsp.setup {
  capabilities = capabilities,
}
lsp.texlab.setup {
  capabilities = capabilities,
}
lsp.tsserver.setup {
  capabilities = capabilities,
  init_options = require('nvim-lsp-ts-utils').init_options,
  on_attach = function(client, bufnr)
    local ts_utils = require 'nvim-lsp-ts-utils'
    ts_utils.setup {
      enable_import_on_completion = true,
      update_imports_on_move = false,
      require_confirmation_on_move = false,
    }

    -- required to fix code action ranges and filter diagnostics
    ts_utils.setup_client(client)

    local opts = { silent = true }
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gs', ':TSLspOrganize<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gr', ':TSLspRenameFile<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gi', ':TSLspImportAll<CR>', opts)
  end,
}
lsp.jsonls.setup {
  capabilities = capabilities,
}
lsp.sumneko_lua.setup {
  capabilities = capabilities,
  settings = {
    Lua = {
      runtime = {
        version = 'LuaJIT',
        path = runtime_path,
      },
      diagnostics = {
        globals = { 'vim' },
      },
      workspace = {
        library = vim.api.nvim_get_runtime_file('', true), -- make lsp aware of nvim runtime_path
      },
      telemetry = { enable = false },
    },
  },
  on_attach = function(client) -- use null-ls for formatting instead
    client.resolved_capabilities.document_formatting = false
  end,
}
lsp.pyright.setup {
  capabilities = capabilities,
}
lsp.rust_analyzer.setup {
  capabilities = capabilities,
}
lsp.volar.setup {
  capabilities = capabilities,
}
