-- Function to set file format to Unix and save
function SetUnixFileFormatAndSave()
  -- Set fileformat to Unix
  vim.api.nvim_command 'set fileformat=unix'
  -- Save the file
  vim.api.nvim_command 'w'
end

-- Define a command to call the function
vim.cmd [[command! SetUnixFileFormatAndSave :lua SetUnixFileFormatAndSave()]]
