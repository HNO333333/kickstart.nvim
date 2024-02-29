-- custom keymaps

-- NOTE: telescope to find sessions

-- Set mapping for searching a session.
-- ⚠️ This will only work if Telescope.nvim is installed
vim.keymap.set('n', '<leader>ls', require('auto-session.session-lens').search_session, {
  noremap = true,
  desc = 'search sessions',
})

-- NOTE: new line quickly by <CR>
vim.keymap.set('n', '<CR>', 'a<CR><Esc>', { desc = 'add blank line below' })

-- NOTE: buffer line movement
vim.keymap.set('n', '<S-L>', ':bnext<CR>', { desc = 'right buffer line window' })
vim.keymap.set('n', '<S-H>', ':bprevious<CR>', { desc = 'left buffer line window' })
vim.keymap.set('n', '<leader>co', ':BufferLineCloseOthers<CR>', { desc = '[C]lose [O]ther buffer lines' })

-- NOTE: neotree toggle
vim.keymap.set('n', '<leader>e', ':Neotree toggle<CR>', { desc = 'open explorer' })
-- NOTE: save file
vim.keymap.set({ 'i', 'x', 'n', 's' }, '<C-s>', '<cmd>w<cr><esc>', { desc = 'Save file' })

-- NOTE: telescope keymaps
vim.keymap.set('n', '<leader>km', ':Telescope keymaps<CR>', { desc = 'Telescope keymaps' })

-- NOTE: function to allow save keymaps
-- Wrapper around vim.keymap.set that will
-- not create a keymap if a lazy key handler exists.
-- It will also set `silent` to true by default.
local function safe_keymap_set(mode, lhs, rhs, opts)
  local keys = require('lazy.core.handler').handlers.keys
  ---@cast keys LazyKeysHandler
  local modes = type(mode) == 'string' and { mode } or mode

  ---@param m string
  modes = vim.tbl_filter(function(m)
    return not (keys.have and keys:have(lhs, m))
  end, modes)

  -- do not create the keymap if a lazy keys handler exists
  if #modes > 0 then
    opts = opts or {}
    opts.silent = opts.silent ~= false
    if opts.remap and not vim.g.vscode then
      ---@diagnostic disable-next-line: no-unknown
      opts.remap = nil
    end
    vim.keymap.set(modes, lhs, rhs, opts)
  end
end

local map = safe_keymap_set
-- NOTE: move lines
map('n', '<A-j>', '<cmd>m .+1<cr>==', { desc = 'Move down' })
map('n', '<A-k>', '<cmd>m .-2<cr>==', { desc = 'Move up' })
map('i', '<A-j>', '<esc><cmd>m .+1<cr>==gi', { desc = 'Move down' })
map('i', '<A-k>', '<esc><cmd>m .-2<cr>==gi', { desc = 'Move up' })
map('v', '<A-j>', ":m '>+1<cr>gv=gv", { desc = 'Move down' })
map('v', '<A-k>', ":m '<-2<cr>gv=gv", { desc = 'Move up' })

-- NOTE: Clear search with <esc>
map({ 'i', 'n' }, '<esc>', '<cmd>noh<cr><esc>', { desc = 'Escape and clear hlsearch' })
