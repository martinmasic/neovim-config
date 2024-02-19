return {
    "folke/which-key.nvim",
    version = "*",
    init = function()
        require("which-key").setup()
        vim.o.timeout = true
        vim.o.timeoutlen = 200
    end

}
