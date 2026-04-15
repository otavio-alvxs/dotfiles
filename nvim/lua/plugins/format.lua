return {
  "stevearc/conform.nvim",
  event = { "BufWritePre" }, -- Executa antes de salvar o arquivo
  cmd = { "ConformInfo" },
  keys = {
    {
      "<leader>f",
      function()
        require("conform").format({ async = true, lsp_fallback = true })
      end,
      mode = "",
      desc = "Formatar buffer",
    },
  },
  opts = {
    formatters_by_ft = {
      lua = { "stylua" },
      python = { "black" },
      javascript = { "prettierd", "prettier", stop_after_first = true },
      sql = { "sql-formatter" },
    },
    -- Habilita a formatação automática ao salvar o arquivo (:w)
    format_on_save = {
      timeout_ms = 500,
      lsp_fallback = true,
    },
  },
}
