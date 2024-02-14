return {
	{
		"nvim-lua/plenary.nvim",
		name = "plenary"
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
    },

    {
        "j-hui/fidget.nvim",
        config = function()
            require("fidget").setup()
        end

    }

}
