return {
	{ 
		"nvim-lua/plenary.nvim",
		name = "plenary"
	},

	{
		"folke/trouble.nvim",
		config = function()
			require("trouble").setup {
				icons = false,
			}
		end
	},

    -- "github/copilot.vim",
    -- "eandrju/cellular-automaton.nvim",

    {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        config = function()
            require("harpoon").setup({
                global_settings = {
                    save_on_toggle = true,
                    save_on_change = true
                },
            })
        end
    }
    
}
