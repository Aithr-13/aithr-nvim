return {
	"AlexvZyl/nordic.nvim",
	name = "nordic",
	priority = 1000,
	config = function()
		require("nordic").setup({
			plugins = { markdown = true },
		})
	end,
}
