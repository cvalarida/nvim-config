local M = {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v3.x',
  dependencies = {
    {'williamboman/mason.nvim', lazy = false},
    {'williamboman/mason-lspconfig.nvim'},

    -- LSP Support
    {'neovim/nvim-lspconfig'},
    -- Autocompletion
    {
      'hrsh7th/nvim-cmp',
      config = function ()
        local cmp = require("cmp")
        cmp.setup {
          mapping = cmp.mapping.preset.insert({
            ['<CR>'] = function(fallback)
              if cmp.visible() then
                cmp.confirm()
              else
                fallback() -- If you use vim-endwise, this fallback will behave the same as vim-endwise.
              end
            end
          })
        }
      end
    },
    { 'hrsh7th/cmp-nvim-lsp', },
    {'L3MON4D3/LuaSnip'},
  },
  config = function ()
    local lsp_zero = require('lsp-zero')

    lsp_zero.on_attach(function(_, bufnr)
      -- see :help lsp-zero-keybindings
      -- to learn the available actions
      lsp_zero.default_keymaps({buffer = bufnr})
    end)

    --- if you want to know more about lsp-zero and mason.nvim
    --- read this: https://github.com/VonHeikemen/lsp-zero.nvim/blob/v3.x/doc/md/guides/integrate-with-mason-nvim.md
    require('mason').setup({})
    require('mason-lspconfig').setup({
      handlers = {
        lsp_zero.default_setup,
      },
    })

    -- Get lua_ls to understand lua in vim
    require('lspconfig').lua_ls.setup {
      settings = {
        Lua = {
          runtime = {
            -- Tell the language server which version of Lua you're using
            -- (most likely LuaJIT in the case of Neovim)
            version = 'LuaJIT',
          },
          diagnostics = {
            -- Get the language server to recognize the `vim` global
            globals = {
              'vim',
              'require'
            },
          },
          workspace = {
            -- Make the server aware of Neovim runtime files
            library = vim.api.nvim_get_runtime_file("", true),
          },
          -- Do not send telemetry data containing a randomized but unique identifier
          telemetry = {
            enable = false,
          },
        },
      },
    }
  end
}

return { M }
