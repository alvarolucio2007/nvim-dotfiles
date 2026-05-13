return {
  -- TREESITTER
{
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      -- Adiciona ao que já existe em vez de substituir tudo
      vim.list_extend(opts.ensure_installed, {
        "proto",
      })
    end,
  },
}
