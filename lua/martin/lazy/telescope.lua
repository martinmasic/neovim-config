return {
    "nvim-telescope/telescope.nvim",
    dependencies = {
        "plenary"
    },
    config = function()
        require("telescope").setup({})
        local builtin = require("telescope.builtin")
        vim.keymap.set("n", "<leader>sf", builtin.find_files, {})
        vim.keymap.set("n", "<leader>sg", builtin.git_files, {})
        vim.keymap.set("n", "<leader>ps", function()
            builtin.grep_string({ search = vim.fn.input("Grep > ") } )
        end)
        vim.keymap.set("n", "<leader>vh", builtin.help_tags, {})
    end
}