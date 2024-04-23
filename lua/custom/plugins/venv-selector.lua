-- return {
--   'AckslD/swenv.nvim',
--   enabled = false,
--   config = function()
--     require('swenv').setup {
--       -- Should return a list of tables with a `name` and a `path` entry each.
--       -- Gets the argument `venvs_path` set below.
--       -- By default just lists the entries in `venvs_path`.
--       get_venvs = function(venvs_path)
--         return require('swenv.api').get_venvs(venvs_path)
--       end,
--       -- Path passed to `get_venvs`.
--       venvs_path = vim.fn.expand 'D:\\programs\\anaconda\\envs',
--       -- Something to do after setting an environment, for example call vim.cmd.LspRestart
--       post_set_venv = nil,
--     }
--   end,
-- }
--
return {
  'linux-cultist/venv-selector.nvim',
  -- enabled = false,
  dependencies = { 'neovim/nvim-lspconfig', 'nvim-telescope/telescope.nvim', 'mfussenegger/nvim-dap-python' },
  opts = {
    -- Your options go here
    -- name = "venv",
    -- auto_refresh = false
    auto_refresh = true,
  },
  -- event = 'VeryLazy', -- Optional: needed only if you want to type `:VenvSelect` without a keymappings
  keys = {
    -- Keymap to open VenvSelector to pick a venv.
    { '<leader>vs', '<cmd>VenvSelect<cr>' },
    -- Keymap to retrieve the venv from a cache (the one previously used for the same project directory).
    { '<leader>vc', '<cmd>VenvSelectCached<cr>' },
  },
  config = function()
    -- vim.api.nvim_create_autocmd({ 'InsertEnter' }, {
    --   desc = 'Auto select virtualenv Nvim open',
    --   pattern = '*.py',
    --   callback = function()
    --     print 'Entering Python file.'
    --     local venv = vim.fn.findfile('pyproject.toml', vim.fn.getcwd() .. ';')
    --     if venv ~= '' then
    --       require('venv-selector').retrieve_from_cache()
    --     end
    --   end,
    --   once = true,
    -- })
    require('venv-selector').setup {
      anaconda_base_path = 'D:\\programs\\anaconda\\',
      anaconda_envs_path = 'D:\\programs\\anaconda\\envs\\',
      fd_binary_name = 'fd',
      -- pyenv_path = 'D:\\programs\\anaconda\\envs',
      anaconda = {
        python_executable = 'python',
        python_parent_dir = '',
      },
    }
    -- NOTE: auto choose last python environment
  end,
}
