return {
	{
		"stevearc/oil.nvim",
		opts = {},
		dependencies = { { "nvim-mini/mini.icons", opts = {} } },
		lazy = false,
	},
	{ "nvim-mini/mini.statusline", version = false, opts = {} },
	{ "tpope/vim-sleuth" },
	{ "williamboman/mason.nvim", opts = {} },
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = true,
		opts = {
			check_ts = true,
		},
	},
}
