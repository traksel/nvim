return {
    "nvim-neo-tree/neo-tree.nvim",
    name = "neotree",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", 
      "MunifTanjim/nui.nvim",
    },
    config = function()
        require("neo-tree").setup({
            filesystem = {
                filtered_items = {
                    visible = true,
                    hide_dotfiles = false,
                    hide_gitignored = false,
                }
            }
        })
        vim.keymap.set("n", "<C-b>", ":Neotree show filesystem reveal left toggle<CR>", {})
    end
}
