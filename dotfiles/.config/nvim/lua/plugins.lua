-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use 'neovim/nvim-lspconfig'
  use 'onsails/lspkind-nvim'

  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} } 
  }
  
  use 'jose-elias-alvarez/typescript.nvim'
  
  -- Post-install/update hook with neovim command
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  -- You can specify multiple plugins in a single call
  use {'tjdevries/colorbuddy.vim'}

  -- use {'jose-elias-alvarez/null-ls.nvim'}

  use {'MunifTanjim/prettier.nvim'}

  use {'hrsh7th/nvim-cmp','hrsh7th/cmp-nvim-lsp', 'hrsh7th/cmp-buffer', 'hrsh7th/cmp-path'}

  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }

  use { "catppuccin/nvim", as = "catppuccin" }
end)
