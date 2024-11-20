return {
    --  {
    --      "projekt0n/github-nvim-theme",
    --      name = "github-theme",
    --      priotiry = 0,
    --      config = function()
    --          require("github-theme").setup()
    --          vim.cmd.colorscheme("github_light")
    --      end,
    --  },
    {
        "catppuccin/nvim",
        lazy = false,
        name = "catppuccin",
        priority = 1000,
        config = function()
            vim.cmd.colorscheme("catppuccin-frappe")
        end,
    },
}
