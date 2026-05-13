return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        buf_ls = {},
        gopls = {
          settings = {
            gopls = {
              -- A hierarquia correta para os Inlay Hints
              hints = {
                assignVariableTypes = true,
                compositeLiteralFields = true,
                compositeLiteralTypes = true,
                constantValues = true,
                functionTypeParameters = true,
                parameterNames = true,
                rangeVariableTypes = true,
              },
            },
          },
        },
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
{
    "mfussenegger/nvim-dap",
    -- Carrega o plugin assim que abrir um arquivo Go
    event = "VeryLazy",
    dependencies = {
      "leoluz/nvim-dap-go",
    },
    config = function()
      local dap = require("dap")
      local dapgo = require("dap-go")

      dapgo.setup()

      -- Forçamos a configuração no sistema do DAP
      dap.configurations.go = {
        {
          type = "go",
          name = "Debug (Main)",
          request = "launch",
          program = "${file}",
        },
        {
          type = "go",
          name = "Debug test",
          request = "launch",
          mode = "test",
          program = "${relativeFileDirname}",
        },
      }
    end,
  },
}
