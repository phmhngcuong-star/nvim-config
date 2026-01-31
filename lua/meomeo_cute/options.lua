vim.opt.guicursor = ""

vim.opt.termguicolors = true

-- Enable copying to system clipboard
if vim.loop.os_uname().version:match("Windows") then
  vim.opt.clipboard = "unnamed"
else
  vim.opt.clipboard = "unnamedplus"
end
