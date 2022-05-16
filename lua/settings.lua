local opt = vim.opt

-- Numeros
opt.number = true
opt.relativenumber = true
opt.numberwidth = 2

-- Identacion
opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
opt.expandtab = true
opt.autoindent = true

-- UI Neovim
opt.syntax = 'enable'         -- Colores en la sintaxis del codigo
opt.termguicolors = true      -- Color en el editor
opt.background = 'dark'       -- Fondo oscuro
opt.cursorline = true         -- Activa el color en la linea

-- Archivos de respaldo / backups
opt.backup = false
opt.swapfile = false

-- Opciones del editor
opt.mouse = 'a'
opt.clipboard = 'unnamedplus'
opt.hidden = true
