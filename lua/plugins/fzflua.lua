return {
	"ibhagwan/fzf-lua",
	dependencies = { "nvim-mini/mini.icons" },
	opts = {},
	keys = {
		{
			"<leader>pf",
			function()
				require("fzf-lua").files()
			end,
		},
		{
			"<leader>fg",
			function()
				require("fzf-lua").live_grep()
			end,
		},
		{
			"<leader>fs",
			function()
				require("fzf-lua").files({ cwd = "$HOME/Documents" })
			end,
		},
	},
}
