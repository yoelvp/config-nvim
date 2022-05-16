local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Temas de color 
  use 'morhetz/gruvbox'
  use 'sainnhe/everforest'
  use 'ayu-theme/ayu-vim'

  -- Apariencia del editor
  use 'nanozuki/tabby.nvim'
  use 'lukas-reineke/indent-blankline.nvim'

  -- Herramientas para el editor
  use 'windwp/nvim-autopairs'
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icon
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }
  use 'grvcoelho/vim-javascript-snippets'

  -- Language server protocol
  use 'neovim/nvim-lspconfig' -- Collection of configurations for the built-in LSP client
  -- Autocompletado
  use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
  use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'L3MON4D3/LuaSnip' -- Snippets plugin
  use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
