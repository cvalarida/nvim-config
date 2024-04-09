local augroup = vim.api.nvim_create_augroup("NullLsFormatting", { clear = true })

local M = {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")

    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.biome,
        null_ls.builtins.diagnostics.eslint,
        null_ls.builtins.completion.spell,
      },
      on_attach = function (_, bufnr)
        -- Format before save
        print("null-ls attaching to buffer")
        vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
        vim.api.nvim_create_autocmd("BufWritePre", {
          group = augroup,
          buffer = bufnr,
          callback = function()
            vim.lsp.buf.format({
              filter = function(client)
                -- only use null-ls for formatting instead of lsp server
                return client.name == "null-ls"
              end,
              bufnr = bufnr,
            })
          end,
        })
      end,
    })
  end
}

return { M }
