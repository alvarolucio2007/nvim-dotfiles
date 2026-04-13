return {
  -- Configuração central do LazyVim (Tema)
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },

 -- Customização do Tema (Versão Anti-Linha)
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      flavour = "mocha",
      transparent_background = true,
      integrations = {
        neotree = true,
        treesitter = true,
        indent_blankline = { enabled = true },
        snacks = true,
      },
      custom_highlights = function(colors)
        return {
          Normal = { bg = "NONE" },
          NormalFloat = { bg = "NONE" },
          FloatBorder = { fg = colors.lavender, bg = "NONE" },
          -- MATANDO A LINHA AQUI:
          StatusLine = { bg = "NONE", fg = "NONE", sp = "NONE" },
          StatusLineNC = { bg = "NONE", fg = "NONE", sp = "NONE" },
          WinSeparator = { fg = "NONE", bg = "NONE" }, -- Remove linhas de divisão
          MsgArea = { bg = "NONE" }, -- Limpa a área de mensagens/comando no fundo
          ------------------------
          Visual = { bg = colors.surface2, fg = "NONE" },
          Search = { bg = colors.yellow, fg = colors.crust },
          CurSearch = { bg = colors.red, fg = colors.crust },
          LineNr = { fg = colors.overlay1, bg = "NONE" },
          CursorLineNr = { fg = colors.lavender, bg = "NONE", bold = true },
          IblIndent = { fg = colors.surface0 },
          IblScope = { fg = colors.lavender },
          CursorLine = { bg = colors.surface0 },
        }
      end,
    },
  },

 {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      -- Esconde a statusline nos tipos de arquivo de dashboard
      opts.options.disabled_filetypes = {
        statusline = { "dashboard", "alpha", "starter", "snacks_dashboard", "lazy" },
      }
      -- Garante que o Neovim respeite o 'disabled_filetypes'
      vim.opt.laststatus = 3
    end,
  },

  -- Snacks (Dashboard com submenus de Projetos e Recentes)
  {
    "folke/snacks.nvim",
    opts = {
      dashboard = {
        preset = {
          header = [[
      __/\\\\\_____/\\\__/\\\________/\\\__/\\\\\\\\\\\__/\\\\____________/\\\\_        
      _\/\\\\\\___\/\\\_\/\\\_______\/\\\_\/////\\\///__\/\\\\\\________/\\\\\\_       
        _\/\\\/\\\__\/\\\_\//\\\______/\\\______\/\\\_____\/\\\//\\\____/\\\//\\\_      
        _\/\\\//\\\_\/\\\__\//\\\____/\\\_______\/\\\_____\/\\\\///\\\/\\\/_\/\\\_     
          _\/\\\\//\\\\/\\\___\//\\\__/\\\________\/\\\_____\/\\\__\///\\\/___\/\\\_    
          _\/\\\_\//\\\/\\\____\//\\\/\\\_________\/\\\_____\/\\\____\///_____\/\\\_   
            _\/\\\__\//\\\\\\_____\//\\\\\__________\/\\\_____\/\\\_____________\/\\\_  
            _\/\\\___\//\\\\\______\//\\\________/\\\\\\\\\\\_\/\\\_____________\/\\\_ 
              _\///_____\/////________\///________\///////////__\///______________\///__
          ]],
          keys = {
            { icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
            { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
            -- SUBMENUS AQUI:
            { icon = " ", key = "p", desc = "Projects", action = ":lua Snacks.dashboard.pick('projects')" },
            -----------------
            { icon = " ", key = "g", desc = "Find Text", action = ":lua Snacks.dashboard.pick('live_grep')" },
            { icon = " ", key = "c", desc = "Config", action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})" },
            { icon = " ", key = "q", desc = "Quit", action = ":qa" },
          },
        },
        sections = {
          { section = "header", padding = 3 },
          { section = "keys", gap = 1, padding = 1 },
          { section = "startup" },
        },
      },
    },
  },
}
