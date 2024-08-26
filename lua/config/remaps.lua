local wk = require("which-key")
wk.add({
	{
		-- file control
		{ "<leader>f", group = "file" },
		{ "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find File", mode = "n" },
		{ "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Live grep" },
		{ "<leader>fr", "<cmd>Telescope oldfiles<cr>", desc = "Old files" },
		{ "<leader>fc", "<cmd>Telescope grep_string<cr>", desc = "Find string in file" },
		{ "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Help tags" },
		{
			"<leader>fb",
			"<cmd>Telescope file_browser path=%:p:h select_buffer=true<cr>",
			desc = "Telescope file browser",
			mode = "n",
		},
		{
			mode = { "n", "v" }, -- NORMAL and VISUAL mode
			{ "<leader>q", "<cmd>q<cr>", desc = "Quit" }, -- no need to specify mode since it's inherited
			{ "<leader>w", "<cmd>w<cr>", desc = "Write" },
			{ "<leader>y", "<cmd>YankBank<CR>", desc = "Yankbank" },
		},
		{ "jk", "<esc>", desc = "escape", mode = "niv" },
	},

	--telescope
})
