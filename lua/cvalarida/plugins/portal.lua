local M = {
  "https://github.com/cbochs/portal.nvim",
  -- TODO: Set up keys to lazy load and change config to init
  config = function()
    vim.keymap.set("n", "<leader>o", "<cmd>Portal jumplist backward<cr>")
    vim.keymap.set("n", "<leader>i", "<cmd>Portal jumplist forward<cr>")
  end
}

return { M }
