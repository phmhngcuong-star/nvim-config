return {
	"saghen/blink.cmp",
	version = "1.*", -- stable, uses prebuilt fuzzy binaries
	dependencies = {
		"hrsh7th/vim-vsnip",
		"rafamadriz/friendly-snippets",
	},
	opts = {
		-- performance-first fuzzy matching
		fuzzy = {
			implementation = "prefer_rust",
		},

		-- completion sources
		sources = {
			default = { "snippets", "buffer", "path" },
		},

		-- keymaps (simple & predictable)
		keymap = {
			["<Tab>"] = { "select_next", "snippet_forward", "fallback" },
			["<S-Tab>"] = { "select_prev", "snippet_backward", "fallback" },
			["<CR>"] = { "accept", "fallback" },
		},
	},
}
