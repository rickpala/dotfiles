-- Manage runtimepath for plugins, filetypes, colorschemes, etc.
vim.api.nvim_command('set runtimepath^=~/.vim runtimepath+=~/.vim/after')
vim.api.nvim_command('set runtimepath^=~/.config/nvim runtimepath+=~/.config/nvim/after')
vim.api.nvim_command('let &packpath = &runtimepath')
vim.api.nvim_command('colorscheme monokai')
-- vim.api.nvim_command('source ~/.vimrc')

require("rpala.remap")
require("rpala.autocmd")
require("rpala.lazy")
require("rpala.set")

