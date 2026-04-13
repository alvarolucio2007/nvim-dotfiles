return {
  -- TREESITTER
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "go", "lua", "python", "typescript", "tsx", "javascript", "markdown", "html",
        "proto", -- Já adicione aqui para o seu LSP de Protobuf!
      },
    },
  },

  -- EXTRAS
  { import = "lazyvim.plugins.extras.lang.typescript" },
  { import = "lazyvim.plugins.extras.lang.go" },
  -- { import = "lazyvim.plugins.extras.lang.tailwind" }, -- Exemplo de expansão futura
}
