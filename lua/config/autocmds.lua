-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
-- Autocmd para mudar o diretório para a raiz do projeto
vim.api.nvim_create_autocmd("BufEnter", {
  group = vim.api.nvim_create_augroup("UserRootChdir", { clear = true }),
  callback = function()
    local root_file = vim.fs.find({ ".git", "go.mod", "Makefile" }, { upward = true })[1]
    if root_file then
      local root = vim.fs.dirname(root_file)
      vim.fn.chdir(root)
    end
  end,
})
