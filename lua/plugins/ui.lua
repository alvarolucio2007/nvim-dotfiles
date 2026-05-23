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
_____/\\\\\\\\\_____/\\\\____________/\\\\__/\\\\\\\\\\\\________/\\\\\\\\\\\\_        
 ___/\\\\\\\\\\\\\__\/\\\\\\________/\\\\\\_\/\\\////////\\\____/\\\//////////__       
  __/\\\/////////\\\_\/\\\//\\\____/\\\//\\\_\/\\\______\//\\\__/\\\_____________      
   _\/\\\_______\/\\\_\/\\\\///\\\/\\\/_\/\\\_\/\\\_______\/\\\_\/\\\____/\\\\\\\_     
    _\/\\\\\\\\\\\\\\\_\/\\\__\///\\\/___\/\\\_\/\\\_______\/\\\_\/\\\___\/////\\\_    
     _\/\\\/////////\\\_\/\\\____\///_____\/\\\_\/\\\_______\/\\\_\/\\\_______\/\\\_   
      _\/\\\_______\/\\\_\/\\\_____________\/\\\_\/\\\_______/\\\__\/\\\_______\/\\\_  
       _\/\\\_______\/\\\_\/\\\_____________\/\\\_\/\\\\\\\\\\\\/___\//\\\\\\\\\\\\/__ 
        _\///________\///__\///______________\///__\////////////______\////////////____
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
