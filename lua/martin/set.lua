vim.opt.scrolloff = 8

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
-- vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir/"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

vim.g.mapleader = " "

local group = vim.api.nvim_create_augroup("Markdown Wrap Settings", { clear = true })
vim.api.nvim_create_autocmd("BufEnter", {
    pattern = "*.md",
    group = group,
    callback = function()
        vim.opt_local.wrap = true
        vim.opt_local.columns = 80
        vim.opt_local.breakindent = true
        vim.opt_local.linebreak = true
        vim.opt_local.showbreak = string.rep(" ", 2)
        vim.opt_local.conceallevel = 2
        vim.opt_local.spell = false

        vim.opt.tabstop = 2
        vim.opt.softtabstop = 2
        vim.opt.shiftwidth = 2

        vim.opt.colorcolumn = ""

        vim.opt.nu = false
        vim.opt.relativenumber = false
    end,
})
