return {
    'nvim-telescope/telescope.nvim', tag = '0.1.6',

  keys = {
    {"<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find files"},

	config = function()
		local telescope = require('telescope')
	end,	

    },
  dependencies = { 'nvim-lua/plenary.nvim' },
  lazy = false,

}
