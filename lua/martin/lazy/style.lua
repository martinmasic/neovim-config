function ColorMyPencils(color)
    color = color or "gruvbox"
    vim.cmd.colorscheme(color)

    -- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    -- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {
    {
        "sainnhe/gruvbox-material"
    },

    {
        "luisiacc/gruvbox-baby"
    },

    {
        "morhetz/gruvbox"
    },

    {
        "ellisonleao/gruvbox",
        name = "gruvbox",
        config = function()
            require("gruvbox").setup({
                disable_background = false
            })
            vim.cmd("colorscheme gruvbox")
            ColorMyPencils()
        end
    },

    { "shaunsingh/oxocarbon.nvim" },
    { "rose-pine/neovim", name = "rose-pine" },
    { "folke/tokyonight.nvim" },

}


