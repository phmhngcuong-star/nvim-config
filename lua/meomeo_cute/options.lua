-- =========================
-- Core UI & behavior
-- =========================
vim.opt.mouse = ""

vim.opt.termguicolors = true
vim.opt.scrolloff = 8

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.signcolumn = "yes"

vim.opt.showmode = false

-- =========================
-- Files & backups
-- =========================
vim.opt.swapfile = false
vim.opt.backup = false

-- ensure undo dir exists
local undodir = vim.fn.expand("$HOME/Documents/.vim/undodir")
if vim.fn.isdirectory(undodir) == 0 then
	vim.fn.mkdir(undodir, "p")
end

vim.opt.undodir = undodir
vim.opt.undofile = true

-- =========================
-- Indentation & tabs
-- =========================
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4

vim.opt.smarttab = true
vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.breakindent = true

-- =========================
-- Search
-- =========================
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- =========================
-- Clipboard (OS-aware)
-- =========================
if vim.fn.has("win32") == 1 or vim.fn.has("win64") == 1 then
	vim.opt.clipboard = "unnamed"
else
	vim.opt.clipboard = "unnamedplus"
end

-- =========================
-- Windows toolchain (only if needed)
-- =========================
if vim.fn.has("win32") == 1 or vim.fn.has("win64") == 1 then
	vim.env.CC = "gcc"
	vim.env.CXX = "g++"
	vim.env.MAKE = "make"
end

-- =========================
-- Snippets (vsnip)
-- =========================
vim.g.vsnip_snippet_dir = vim.fn.stdpath("config") .. "/snippets"

-- =========================
-- Filetype-specific tweaks
-- =========================
vim.api.nvim_create_autocmd("FileType", {
	pattern = "markdown",
	callback = function()
		-- guard: only run if plugin is loaded
		local ok, autopairs = pcall(require, "nvim-autopairs")
		if ok then
			autopairs.remove_rule("`")
		end
	end,
})
