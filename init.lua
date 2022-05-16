-- Configuracion del editor
require('settings')

-- Atajos de teclado
require('keymaps')
vim.cmd('source ~/.config/nvim/scripts/moveline.vim')

-- Administrador de plugins
require('plugins/packer')

-- Configuracion de plugins
require('plugins/gruvbox')
require('plugins/autopairs')
require('plugins/nvim-tree')
require('plugins/tabby')
require('plugins/indent-blankline')
require('plugins/lspconfig')
require('plugins/autocompletion')
