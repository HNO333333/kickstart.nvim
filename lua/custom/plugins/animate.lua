-- Smooth animations for cursor movement, scrolling, and window resize/open/close
-- https://github.com/echasnovski/mini.animate
-- mini.nvim is already installed in init.lua, so no vim.pack.add is needed here
require('mini.animate').setup {
  cursor = {
    -- Set duration to 0 to disable the animation
    duration = 0,
    easing = 'quad_out',
  },
  scroll = {
    duration = 100,
    easing = 'quad_out',
  },
  resize = {
    duration = 200,
    easing = 'quad_out',
  },
  open = {
    duration = 120,
    easing = 'quad_out',
  },
  close = {
    duration = 80,
    easing = 'quad_in',
  },
}
