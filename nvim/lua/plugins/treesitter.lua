return {
    {
        "nvim-treesitter/nvim-treesitter",
        branch = "master",
        build = ":TSUpdate",
        event = { "VeryLazy" },
        version = false,
        config = function()
            local opts = {}
            opts.ensure_installed = {
                "css",
                "dockerfile",
                "html",
                "http",
                "javascript",
                "json",
                "lua",
                "python",
                "toml",
                "yaml",
                "sql",
                "bash",
            }
            opts.sync_install = false
            opts.highlight = { enable = true }
            opts.indent = { enable = true }
            require('nvim-treesitter.configs').setup(opts)
        end,
    },
}
