require('which-key').register({
  ['\\'] = { '<cmd>CBlbox<cr>', 'Left text left box' },
  a = { '<cmd>CBclbox<cr>', 'Center box left text' },
  s = { '<cmd>CBcbox<cr>', 'Left box center text' },
  d = { '<cmd>CBccbox<cr>', 'Center box center text' },
  f = { '<cmd>CBalbox<cr>', 'left adapted box left text' },
  r = { '<cmd>CBaclbox<cr>', 'Center adapted box left text' },
  t = { '<cmd>CBacbox<cr>', 'left adapted box centered text' },
  m = { '<cmd>CBaccbox<cr>', 'center adapted centered text' },
}, { prefix = '\\', mode = 'n' })

require('which-key').register({
  ['\\'] = { '<cmd>CBlbox<cr>', 'Left text left box' },
  a = { '<cmd>CBclbox<cr>', 'Center box left text' },
  s = { '<cmd>CBcbox<cr>', 'Left box center text' },
  d = { '<cmd>CBccbox<cr>', 'Center box center text' },
  f = { '<cmd>CBalbox<cr>', 'left adapted box left text' },
  r = { '<cmd>CBaclbox<cr>', 'Center adapted box left text' },
  t = { '<cmd>CBacbox<cr>', 'left adapted box centered text' },
  m = { '<cmd>CBaccbox<cr>', 'center adapted centered text' },
}, { prefix = '\\', mode = 'v' })
