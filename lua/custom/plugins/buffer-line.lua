return {
  'akinsho/bufferline.nvim',
  event = "BufReadPre",
  version = "*",
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function ()
    require("bufferline").setup{
      options = {
        diagnostics = "nvim_lsp",
        offsets = {
          {
            text_align = "left",
            highlight = "Directory",
            text = "File Explorer"
          }
        }
      }
    }
  end
}
