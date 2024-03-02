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
