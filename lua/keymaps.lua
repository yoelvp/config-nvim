vim.g.mapleader = ' '

local map = function(mode, command, key)
  vim.api.nvim_set_keymap(mode, command, key, { noremap = true, silent = true })
end

-- Atajos del editor
map('n', '<leader>s', ':w<CR>')             -- Guardar
map('i', '..', '<Esc>')                     -- Salir del modo insert
map('v', '..', '<Esc>')                     -- Salir del modo visual
map('n', '<S-A-right>', ':tabnext<CR>')     -- Moverse hacia el buffer derecho
map('n', '<S-A-left>', ':tabprevious<CR>')  -- Moverse hacia el buffer izquierdo
map('n', '<C-n>', ':$newtab<CR>')           -- Crear un nuevo buffer

-- Atajos para NvimTree
map('n', '<leader>nn', ':NvimTreeToggle<CR>')
map('n', '<leader>no', ':NvimTreeOpen<CR>')
map('n', '<leader>nc', ':NvimTreeClose<CR>')
map('n', '<leader>nf', ':NvimTreeFocus<CR>')
