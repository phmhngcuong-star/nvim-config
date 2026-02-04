vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.keymap.set("n", "<leader>pv", vim.cmd.Oil)

vim.keymap.set("n", "<leader>ff", function()
	require("conform").format({ lsp_format = "fallback" })
end, { desc = "Format current file" })
