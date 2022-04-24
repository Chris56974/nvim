local schemastore = require("schemastore")

return {
  init_options = {
    provideFormatter = false
  },
  settings = {
    json = {
      schemas = schemastore.schemas(),
    }
  },
  setup = {
    commands = {
      Format = {
        function()
          vim.lsp.buf.range_formatting({}, { 0, 0 }, { vim.fn.line "$", 0 })
        end
      }
    }
  }
}
