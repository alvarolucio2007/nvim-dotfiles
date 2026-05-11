-- Carrega a configuração do lazy (que está em lua/config/lazy.lua)
require("config.lazy")

-- Suas opções pessoais
vim.opt.swapfile = false
vim.opt.clipboard = "unnamedplus"
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "NONE" })
vim.api.nvim_set_hl(0, "FloatBorder", { bg = "NONE" })
-- Forçar transparência após o carregamento do tema
vim.api.nvim_create_autocmd("ColorScheme", {
  callback = function()
    local hl_groups = { "Normal", "NormalFloat", "NormalNC", "Pmenu", "SignColumn" }
    for _, group in ipairs(hl_groups) do
      vim.api.nvim_set_hl(0, group, { bg = "NONE", ctermbg = "NONE" })
    end
  end,
})
-- Aplica imediatamente caso o tema já tenha carregado
vim.cmd("colorscheme catppuccin")
