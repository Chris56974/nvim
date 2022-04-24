return {
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" }
      },
      workspace = {
        library = { -- make the lua server aware of nvim runtime and plugins
          [vim.fn.expand("$VIMRUNTIME/lua")] = true,
          [vim.fn.stdpath("config") .. "/lua"] = true
        },
      },
      telemetry = { enable = false },
    },
  }
}
