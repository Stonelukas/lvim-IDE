local config = {}

function config.gitlinker()
    require("gitlinker").setup({
        opts = {
            remote = nil,
            add_current_line_on_normal_mode = true,
            action_callback = require("gitlinker.actions").copy_to_clipboard,
            print_url = true,
        },
        callbacks = {
            ["github.com"] = require("gitlinker.hosts").get_github_type_url,
        },
        mappings = "<leader>gy",
        config = function()
            require("gitlinker").setup()
            vim.keymap.set(
                "n",
                "<leader>go",
                '<cmd>lua require"gitlinker".get_buf_range_url("n", {action_callback = require"gitlinker.actions".open_in_browser})<cr>',
                { desc = "Open Permalink in Browser", silent = true }
            )
            vim.keymap.set(
                "v",
                "<leader>go",
                '<cmd>lua require"gitlinker".get_buf_range_url("v", {action_callback = require"gitlinker.actions".open_in_browser})<cr>',
                { desc = "Open Permalink in Browser" }
            )
        end,
    })
end

return config
