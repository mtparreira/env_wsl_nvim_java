return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      html = { "prettier" },
      css = { "prettier" },
      json = { "prettier" },
      xml = { "xmlformatter" }, -- Para arquivos CML (se for XML)
      markdown = { "prettier" },
      sql = { "sql-formatter" },
    },
    format_on_save = {
      timeout_ms = 500,
      lsp_fallback = true,
    },
  },
}
