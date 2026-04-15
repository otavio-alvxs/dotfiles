return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup({
        ui = {
          icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
          }
        }
      })
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        -- Aqui listamos os servidores que queremos que o Mason garanta que estão instalados
        ensure_installed = {
          "lua_ls",    -- LSP para Lua (essencial para configurar o Neovim)
          "pyright",   -- LSP para Python
          "sqls",      -- LSP para SQL
          "ts_ls",     -- LSP para JavaScript/TypeScript
        },
      })
    end
  }
}
