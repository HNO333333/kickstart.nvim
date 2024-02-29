return {
  "nvim-neo-tree/neo-tree.nvim",
  cmd= "Neotree",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
  },
  config = {
    filesystem = {
      follow_current_file = {enable = true},
      hijack_netrw_behavior = 'open_current',
    }
  },
}
