-- NOTE: increase update time
vim.o.timeoutlen = 500

-- NOTE: line number set to be relative number
vim.wo.relativenumber = true

-- NOTE: what is lazy file
-- { "BufReadPost", "BufNewFile", "BufWritePre" }
--

-- NOTE: terminal choice (powershell)
if vim.fn.executable 'powershell' == 1 then
  vim.o.shell = 'powershell'
else
  vim.o.shell = 'pwsh'
end

-- NOTE: file format
-- vim.o.fileformats = 'unix, dos'

-- NOTE: specify python environment
-- vim.g.python3_host_prog = '/path/to/your/python/executable'
-- vim.g.python3_host_prog = 'D:\\programs\\anaconda\\envs\\fyp'
