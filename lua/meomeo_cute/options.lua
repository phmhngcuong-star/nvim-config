vim.opt.guicursor = ""

vim.opt.termguicolors = true

-- Enable copying to system clipboard
if vim.loop.os_uname().version:match("Windows") then
	vim.opt.clipboard = "unnamed"
else
	vim.opt.clipboard = "unnamedplus"
end

--Compiler
if vim.fn.has("win32") == 1 then
	vim.env.CC = "gcc"
	vim.env.CXX = "g++"
	vim.env.MAKE = "make"
end

-- Tabs and indentation
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smarttab = true
vim.opt.smartindent = true
vim.opt.autoindent = true --!

vim.opt.breakindent = true

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Enable line wrap for notes
vim.opt.wrap = true
vim.opt.linebreak = true -- Wrap at word boundaries

-- File handling
vim.opt.swapfile = false
vim.opt.backup = false

-- Colors and UI
vim.opt.scrolloff = 8
vim.opt.cursorline = true -- Highlight current line

-- Visual guides
vim.opt.colorcolumn = "80"
