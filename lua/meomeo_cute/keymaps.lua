vim.keymap.set("n", "<leader>pv", "<cmd>Oil<CR>")
vim.keymap.set("n", "<leader>ff", function()
	require("conform").format({
		lsp_format = "fallback",
	})
end)

vim.keymap.set({ "i", "s" }, "<C-j>", function()
	require("luasnip").jump(1)
end, { silent = true })

vim.keymap.set({ "i", "s" }, "<C-k>", function()
	require("luasnip").jump(-1)
end, { silent = true })
