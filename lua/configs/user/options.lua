local global = require("core.global")

local M = {}

M.global = function()
    vim.opt.splitright = true
    vim.opt.splitbelow = false
    vim.opt.wrap = false
    vim.opt.autoread = true
    vim.opt.foldmethod = "expr"
    vim.opt.foldcolumn = "1"
    vim.opt.foldlevelstart = 50
    vim.opt.fillchars = {
        fold = "-",
        foldopen = "",
        foldclose = "",
        foldsep = " ",
        diff = "╱",
        eob = " ",
    }
    vim.opt.showmatch = true
    vim.opt.signcolumn = "yes"
end

return M
