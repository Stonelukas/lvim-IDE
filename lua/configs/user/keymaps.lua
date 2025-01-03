local keymaps = {}

keymaps["normal"] = {
    { "P", "]p", "Paste with right indentation" },
}

keymaps["visual"] = {}

keymaps["insert"] = {
    { "jj", "<Esc>", "Exit Insert mode" }, -- Exit insert mode
}

return keymaps
