return {
  -- VACINA CONTRA O BUG DO LAZYVIM + BLINK
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        gopls = {
          capabilities = {
            textDocument = {
              semanticTokens = {
                -- Criamos tabelas vazias para o LazyVim encontrar e não dar erro "nil"
                tokenTypes = {},
                tokenModifiers = {},
              },
            },
          },
        },
      },
    },
  },

  -- MANTER O SEU TREESITTER
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      if type(opts.ensure_installed) == "table" then
        vim.list_extend(opts.ensure_installed, { "proto" })
      end
    end,
  },

  -- MANTER O SEU DAP INTACTO AQUI...
}
