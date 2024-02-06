local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("vim-option")
require("lazy").setup("plugins")



-- Définition d'un mapping pour appeler un script lorsque vous appuyez sur une touche spécifique
vim.api.nvim_set_keymap('n', '<F1>', ':!processing-run.sh<CR>', {noremap = true, silent = true})
