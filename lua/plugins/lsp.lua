return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- O buf_ls é o servidor padrão para Protobuf
        buf_ls = {},
      },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      if type(opts.ensure_installed) == "table" then
        vim.list_extend(opts.ensure_installed, { "proto" })
      end
    end,
  },
}
