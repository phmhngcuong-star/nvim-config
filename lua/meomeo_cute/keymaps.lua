vim.keymap.set("n", "<leader>pv", "<cmd>Oil<CR>")
vim.keymap.set("n", "<leader>ff", function()
	require("conform").format({
		lsp_format = "fallback",
	})
end)
