local config = {}

config.any_jump = function()
    vim.g.any_jump_list_numbers = 1
    vim.g.any_jump_grouping_enabled = 1
    vim.g.any_jump_preview_lines_count = 10
    vim.g.any_jump_window_width_ratio = 0.8
    vim.g.any_jump_window_height_ratio = 0.8
    vim.g.any_jump_window_top_offset = 6
end

return config
