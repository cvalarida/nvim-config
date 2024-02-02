-- TODO: Replace this with something else;
-- - It asks for the protocol, which is silly
-- - Copy line only copies the link to one line, not a whole selection

local M = {
  "Ilyasyoy/git-link.nvim",
  dependencies = {
    "Ilyasyoy/coredor.nvim",
    "folke/which-key.nvim",
  },
  config = function()
    local gl = require("git-link")
    local wk = require("which-key")

    wk.register({
      c = {
        l = { gl.copy_repo_link_to_file, "[C]opy git [l]ink to file" }
      }
    }, { prefix = "<leader>" })

    wk.register({
      c = {
        l = { gl.copy_repo_link_to_line, "[C]opy git [l]ink to selection" }
      }
    }, { prefix = "<leader>", mode = "v" })
  end
}

return { M }
