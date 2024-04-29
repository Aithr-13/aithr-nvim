return

{ 
	"catppuccin/nvim", 
	name = "catppuccin", 
	priority = 1000,
	flavor = "dark",
	default_integrations = true,
    	integrations = {
        	cmp = true,
        	gitsigns = true,
        	nvimtree = true,
        	treesitter = true,
        	notify = false,
        	mini = {
            		enabled = true,
            		indentscope_color = "",
		}	




	}
}
