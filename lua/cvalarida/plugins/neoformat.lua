local M = {
  "sbdchd/neoformat",
  config = function()
    -- Try using the node modules first
    vim.g.neoformat_try_node_exe = 1

    -- Auto-format on save
    local augroup = vim.api.nvim_create_augroup
    local autocmd = vim.api.nvim_create_autocmd
    augroup("__formatter__", { clear = true })
    autocmd("BufWritePost", {
      group = "__formatter__",
      command = ":Neoformat",
      -- TODO: Make this quiet?
    })
  end
}

return { M }
