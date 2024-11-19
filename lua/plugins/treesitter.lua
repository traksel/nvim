return {
    "nvim-treesitter/nvim-treesitter",
    name = "treesitter",
    build= ":TSUpdate",
    config = function()
        local config = require("nvim-treesitter.configs")
        config.setup({
            ensure_installed = {"lua", "javascript"},
            highlight = { enable = true },
            indent = { enable = true },
        })
    end
}
