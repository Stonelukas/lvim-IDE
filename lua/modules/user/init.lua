local modules = {}

-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
-- HELP ---------------------------------------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

-- Disable of default Module (Plug-in) (from lua/modules/base/init.lua)

-- You can disable of any default Module (Plug-in)
-- modules["folke/noice.nvim"] = false

-- Rewrite of settings of default Module (Plug-in) (from lua/modules/base/init.lua)

-- You can rewrite of settings of any of default Module (Plug-in)
-- modules["folke/noice.nvim"] = {
--     -- your code
-- }

-- Add new Module (Plug-in)

-- You can add new Module (Plug-in)
-- modules["name_of_your/plugin"] = {
--     your code
-- }

-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
-- HELP ---------------------------------------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
-- UI -----------------------------------------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

-- local ui_config = require("modules.user.configs.ui")

-- modules["name_of_your/plugin"] = {
--     config = ui_config.name_of_your_function
-- }

-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
-- Editor -------------------------------------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

-- local editor_config = require("modules.user.configs.editor")

-- modules["name_of_your/plugin"] = {
--     config = editor_config.name_of_your_function
-- }

-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
-- Version control ----------------------------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

-- local version_control_config = require("modules.user.configs.version_control")

-- modules["name_of_your/plugin"] = {
--     config = version_control_config.name_of_your_function
-- }

-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
-- Languages ----------------------------------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

-- local languages_config = require("modules.user.configs.editor")

-- modules["name_of_your/plugin"] = {
--     config = languages_config.name_of_your_function
-- }

-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
-- Completion ---------------------------------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

-- local completion_config = require("modules.user.configs.editor")

-- modules["name_of_your/module"] = {
--     config = completion_config.name_of_your_function
-- }
local funcs = require("core.funcs")

local version_control_config = require("modules.user.configs.version_control")
local ui_config = require("modules.user.configs.ui")
local languages_config = require("modules.user.configs.languages")

modules["ruifm/gitlinker.nvim"] = {
    requires = "nvim-lua/plenary.nvim",
    config = version_control_config.gitlinker,
}
modules["lvim-tech/lvim-focus"] = {
    config = ui_config.lvim_focus,
}

modules["pechorin/any-jump.vim"] = {
    config = languages_config.any_jump,
}

modules["mattn/emmet-vim"] = {}

return modules
