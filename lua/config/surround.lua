require('surround').setup {
  mappings_style = 'surround',
}

--[[

I have to use surround mode because "sandwhich mode" conflicts with lightspeed

NORMAL MODE
1. surround characters by visually selecting them and then pressing s<char> or ys{motion}{char})
2. replace surrounding characters with cs <before> <after> i.e. -- cs " }
3. delete surrounding characters with ds<char>

INSERT MODE
<c-s><char> will insert both pairs in insert mode.
<c-s><char><space> will insert both pairs in insert mode with surrounding whitespace.
<c-s><char><c-s> will insert both pairs on newlines insert mode.

--]]
