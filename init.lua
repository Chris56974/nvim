require "autocmd"
require "mappings"
require "options"
require "plugins"
require "lsp"

-- Plugin Configuration
require "config.autopairs"
require "config.autotag"
require "config.cmp"
require "config.colorizer"
require "config.colorscheme"
require "config.comment"
require "config.luasnip"
require "config.mini"
require "config.neogit"
require "config.nvim-tree"
require "config.project"
require "config.surround"
require "config.telescope"
require "config.toggle-term"
require "config.treesitter"
require "config.which"

--[[

If you write your own configuration for a plugin and lazy load it with packer,
you're going to get an error when you require() it (like above). You have to...

1. Don't write your own config for that plugin
2. Don't lazy load the plugin
3. Provide a callback to lazy load your config

```lua
function get_config(name)
	return string.format('require("config/%s")', name)
end

use({ "foo", config = get_config("myConfig") })
```

--]]
