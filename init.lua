-- 1. Opções de Sistema (Clipboard e Swap)
-- Definir ANTES do lazy evita que plugins sobrescrevam o comportamento do sistema
vim.opt.clipboard = "unnamedplus"
vim.opt.swapfile = false

-- 2. Carrega o LazyVim
require("config.lazy")

-- 3. UI e Transparência (Eventos)
-- O ColorScheme precisa ser definido antes de aplicar o tema
vim.api.nvim_create_autocmd("ColorScheme", {
  callback = function()
    local hl_groups = { "Normal", "NormalFloat", "NormalNC", "Pmenu", "SignColumn", "FloatBorder" }
    for _, group in ipairs(hl_groups) do
      vim.api.nvim_set_hl(0, group, { bg = "NONE", ctermbg = "NONE" })
    end
  end,
})

-- 4. Aplica o tema
-- Chamar o colorscheme por último garante que o autocmd acima "pegue" a mudança
vim.cmd("colorscheme catppuccin")
