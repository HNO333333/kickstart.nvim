return {
  'simrat39/symbols-outline.nvim',
  cmd = "SymbolsOutline",
  keys = {
    {"<leader>ol", "<cmd>SymbolsOutline<cr>", desc = "toggle Symbol Outline"},
  },
  config = function ()
    require("symbols-outline").setup()
  end
}
