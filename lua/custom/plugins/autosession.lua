return {
  'rmagatti/auto-session',
  config = function ()
    require("auto-session").setup{
      log_level = vim.log.levels.ERROR,
      auto_session_enable_last_session = false,
      auto_session_suppress_dirs = {"~/","C:\\Users\\HNO3"},
      auto_save_enabled = true,

      -- ⚠️ This will only work if Telescope.nvim is installed
      -- The following are already the default values, no need to provide them if these are already the settings you want.
      session_lens = {
        -- If load_on_setup is set to false, one needs to eventually call `require("auto-session").setup_session_lens()` if they want to use session-lens.
        buftypes_to_ignore = {}, -- list of buffer types what should not be deleted from current session
        load_on_setup = true,
        theme_conf = { border = true },
        previewer = false,
      },
    }
end
}
