return {
    {
        "L3MON4D3/LuaSnip",
        version = "2.*",
        build = "make install_jsregexp",
        dependencies = {
            "rafamadriz/friendly-snippets"
        },
        config = function()
            local ls = require("luasnip")
            --require("luasnip.loaders.from_vscode").lazy_load()
            require("luasnip").filetype_extend("javascript", { "jsdoc" })
            --require("luasnip").filetype_extend("python", { "pydoc" })
            --require("luasnip").filetype_extend("rust", { "rustdoc" })
            --require("luasnip").filetype_extend("lua", { "luadoc" })
            --require("luasnip").filetype_extend("c", { "cdoc" })
            --require("luasnip").filetype_extend("cs" { "csharpdoc" })
            --require("luasnip").filetype_extend("typescript" { "tsdoc" })
            --require("luasnip").filetype_extend("java" { "javadoc" })
            --require("luasnip").filetype_extend("cpp" { "cppdoc" })

            --vim.keymap.set("i", "<C-K>", function() ls.expand() end, { silent = true })
            --vim.keymap.set({"i", "s" }, "<C-L>", function() ls.jump(1) end, { silent = true })
            --vim.keymap.set({"i", "s" }, "<C-J>", function() ls.jump(-1) end, { silent = true })
            --vim.keymap.set({"i", "s" }, "<C-E>", function()
                --if ls.choice_active() then
                    --ls.change_choice(1)
                --end
            --end, { silent = true })
        end

    }
}
