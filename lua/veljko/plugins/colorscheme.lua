return {
    --    "slugbyte/lackluster.nvim",
    --    "catppuccin/nvim",
    "anAcc22/sakura.nvim",
    lazy = false,
    priority = 1000,
    dependencies = {
        "rktjmp/lush.nvim"
    },
    config = function()
        --        vim.cmd("colorscheme lackluster-dark")
        --       vim.cmd("colorscheme catppuccin-mocha")
        vim.opt.background = "dark"
        vim.cmd("colorscheme sakura")
    end,
}
