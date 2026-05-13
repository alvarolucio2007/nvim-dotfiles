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
          StatusLine = { bg = "NONE", fg = "NONE", sp = "NONE" },
          StatusLineNC = { bg = "NONE", fg = "NONE", sp = "NONE" },
          WinSeparator = { fg = "NONE", bg = "NONE" },
          MsgArea = { bg = "NONE" },
          Visual = { bg = colors.surface2, fg = "NONE" },
          LineNr = { fg = colors.overlay1, bg = "NONE" },
          CursorLineNr = { fg = colors.lavender, bg = "NONE", bold = true },
        }
      end,
    },
  },

  {
    "nvim-lualine/lualine.nvim",
    enabled = true,
  },

  -- Snacks (Dashboard)
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
            { icon = " ", key = "p", desc = "Projects", action = ":lua Snacks.dashboard.pick('projects')" },
            { icon = " ", key = "g", desc = "Find Text", action = ":lua Snacks.dashboard.pick('live_grep')" },
            { icon = "", key = "c", desc = "Config", action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})" },
            { icon = " ", key = "q", desc = "Quit", action = ":qa" },
          },
        },
      },
    },
  },
}
