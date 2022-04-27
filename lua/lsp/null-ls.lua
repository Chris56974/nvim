local nls = require 'null-ls'
local formatting = nls.builtins.formatting
local diagnostics = nls.builtins.diagnostics
local code_actions = nls.builtins.code_actions

local function has_eslint_configured(utils)
  return utils.root_has_file '.eslintrc.*'
end

nls.setup {
  sources = {
    code_actions.eslint_d.with { condition = has_eslint_configured },
    diagnostics.eslint_d.with { condition = has_eslint_configured },
    formatting.eslint_d.with { condition = has_eslint_configured },
    formatting.prettier.with {
      filetypes = {
        'typescriptreact',
        'typescript',
        'javascriptreact',
        'javascript',
        'svelte',
        'css',
        'less',
        'scss',
        'html',
        'yaml',
      },
    },
    formatting.stylua,
  },
}
