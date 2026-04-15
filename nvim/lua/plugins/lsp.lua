return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
    },
    config = function()

      -- Ativando os servidores
      vim.lsp.enable("lua_ls")
      vim.lsp.enable("pyright")
      vim.lsp.enable("sqls")
      vim.lsp.enable("ts_ls")

      -- Atalhos de teclado (permanecem iguais, pois o buffer de funções do LSP não mudou)
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, { desc = "LSP: Mostrar documentação" })
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { desc = "LSP: Ir para definição" })
      vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, { desc = "LSP: Renomear variável" })
    end
  }
}
