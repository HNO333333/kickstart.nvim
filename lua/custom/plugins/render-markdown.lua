-- Render Markdown in the editor
-- https://github.com/meanderingprogrammer/render-markdown.nvim
-- Depends on nvim-treesitter and mini.nvim, both already installed in init.lua
vim.pack.add {
  'https://github.com/MeanderingProgrammer/render-markdown.nvim',
}

require('render-markdown').setup {}
