return {
    "epwalsh/obsidian.nvim",
    version = "*",
    lazy = true,
    --ft = "markdown",
    event = {
        "BufReadPre C:/Martin/Scriptorium/**.md",
        "BufNewFile C:/Martin/Scriptorium/**.md",
    },
    dependencies = {
        "nvim-lua/plenary.nvim",
        "hrsh7th/nvim-cmp",
        "nvim-telescope/telescope.nvim",
        "nvim-treesitter/nvim-treesitter"
    },
    opts = {
        workspaces = {
            {
                name = "Scriptorium",
                path = "C:/Martin/Scriptorium"
            }
        },
        templates = {
            subdir = "08-Schemata",
            date_format = "YYYY-MM-DD",
            time_format = "HH:MM",
            substitutions = {}
        },
        daily_notes = {
            folder = "C:/Martin/Scriptorium/04-Dnevnik",
            date_format = "YYYY-MM-DD",
            template = "Današnja dnevna bilješka.md"
        }
    },
    completition = {
        nvim_cmp = true,
        min_chars = 2,
        new_notes_location = "current_dir",
        preferred_link_style = "wiki",
        prepend_note_path = true,
    },
    mappings = {
        ["gf"] = {
            action = function()
                return require("obsidian").util.gf_passthrough()
            end,
            opts = { noremap = false, expr = true, buffer = true }
        },
        ["<leader>ch"] = {
            action = function()
                return require("obsidian").util.toggle_checkbox()
            end,
            opts = { buffer = true }
        }
    },
    config = function()
        require("obsidian.nvim").setup()
    end

}
