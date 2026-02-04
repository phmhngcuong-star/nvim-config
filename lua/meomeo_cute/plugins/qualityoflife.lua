return {
	"ibhagwan/fzf-lua",
	dependencies = { "echasnovski/mini.icons" },
	opts = {},
	keys = {
		{
			"<leader>pf",
			function()
				require("fzf-lua").files()
			end,
		},
		{
			"<leader>pg",
			function()
				require("fzf-lua").live_grep()
			end,
		},
		{
			"<leader>ps",
			function()
				require("fzf-lua").live_grep({ cwd = "$HOME/Documents" })
			end,
		},
	},
}
