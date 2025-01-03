local configs = {}

-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
-- HELP ---------------------------------------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

-- Disable of default Config function (from lua/configs/base/init.lua)

-- You can disable of any default Config function
-- configs["base_vim"] = = false

-- Rewrite of default Config function (from lua/configs/base/init.lua)

-- You can rewrite of settings of any of default Config function
-- configs["base_vim"] = {
--     -- your code
-- }

-- Add new Config function

-- You can add new Config function
-- configs["user_vim"] = {
--     your code
-- }

-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
-- HELP ---------------------------------------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

local global = require("core.global")
local funcs = require("core.funcs")
local keymaps = require("configs.user.keymaps")
local options = require("configs.user.options")

local group = vim.api.nvim_create_augroup("User", {
    clear = true,
})
configs["user_vim"] = {
    vim.api.nvim_create_autocmd("FileType", {
        group = group,
        pattern = {
            "fugitive",
            "git",
            "lspinfo",
            "man",
            "toggleterm",
            "vim",
            "PlenaryTestPopup",
            "help",
            "neo-tree",
            "lspinfo",
            "notify",
            "qf",
            "spectre_panel",
            "startuptime",
            "tsplayground",
            "neotest-output",
            "checkhealth",
            "neotest-summary",
            "neotest-output-panel",
            "dbout",
            "gitsigns.blame",
            "TelescopePrompt",
        },
        callback = function(event)
            vim.bo[event.buf].buflisted = false
            vim.keymap.set("n", "q", "<cmd>close<cr>", { buffer = event.buf, silent = true })
        end,
    }),
}

configs["user_keymaps"] = function()
    funcs.keymaps("n", { noremap = true, silent = true }, keymaps.normal)
    funcs.keymaps("x", { noremap = true, silent = true }, keymaps.visual)
    funcs.keymaps("i", { noremap = true, silent = true }, keymaps.insert)
end

configs["user_options"] = function()
    options.global()
end

return configs
