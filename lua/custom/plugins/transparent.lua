return {
  'xiyaowong/nvim-transparent',
  enabled = false,
  config = function()
    require('transparent').setup {
      -- enable = true,
    }
    require('transparent').clear_prefix 'NeoTree'
    -- require('transparent').clear_prefix 'lualine'
    require('transparent').clear_prefix 'BufferLine'
  end,
}
