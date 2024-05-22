local js_formatters = { { "biome", "prettierd", "prettier" } }

local M = {
  "stevearc/conform.nvim",
  event = { "BufWritePre" },
  cmd = { "ConformInfo" },
  opts = {
    format_on_save = {
      lsp_fallback = true,
      timeout_ms = 500,
    },
    formatters_by_ft = {       javascript = js_formatters,
      typescript = js_formatters,
      javascriptreact = js_formatters,
      typescriptreact = js_formatters,
      vue = js_formatters,
      css = js_formatters,
      scss = js_formatters,
      less = js_formatters,
      html = js_formatters,
      json = js_formatters,
      jsonc = js_formatters,
      yaml = js_formatters,
      markdown = js_formatters,
    }
  },
  init = function()
    vim.o.formatexpr = "v:lua.require'conform'.formatexpr()"
  end
}

return { M }
