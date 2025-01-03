local config = {}

config.lvim_focus = function()
    require("lvim-focus").setup({
        active_plugin = 1,
    })
end

return config
