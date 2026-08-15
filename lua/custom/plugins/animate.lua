-- Smooth animations for cursor movement, scrolling, and window resize/open/close
-- https://github.com/echasnovski/mini.animate
-- mini.nvim is already installed in init.lua, so no vim.pack.add is needed here
local animate = require('mini.animate')

animate.setup {
  cursor = {
    timing = animate.gen_timing.linear({ duration = 50, unit = 'total' }),
  },
  scroll = {
    timing = animate.gen_timing.linear({ duration = 50, unit = 'total' }),
  },
  resize = {
    timing = animate.gen_timing.linear({ duration = 100, unit = 'total' }),
  },
  open = {
    timing = animate.gen_timing.linear({ duration = 60, unit = 'total' }),
  },
  close = {
    timing = animate.gen_timing.linear({ duration = 40, unit = 'total' }),
  },
}
