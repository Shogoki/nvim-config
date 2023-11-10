-- This file can be loaded by calling `lua require('plugins')` from your init.vim

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.4',
-- or                            , branch = '0.1.x',
  requires = {
        {'nvim-lua/plenary.nvim'}, 
        {'BurntSushi/ripgrep'} 
    }
  }
  use {
    'lalitmee/cobalt2.nvim',
    requires = 'tjdevries/colorbuddy.nvim'
  }
  use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
    use { 'ThePrimeagen/harpoon'}
    use { 'mbbill/undotree'}
    use { 'tpope/vim-fugitive'}
    use {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v3.x',
  requires = {
    --- Uncomment these if you want to manage LSP servers from neovim
    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'},

    -- LSP Support
    {'neovim/nvim-lspconfig'},
    -- Autocompletion
    {'hrsh7th/nvim-cmp'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'L3MON4D3/LuaSnip'},
  }
}
    use { "ThePrimeagen/vim-be-good" }
    use ({ "folke/todo-comments.nvim",
        config = function()
            require("todo-comments").setup {
            {keywords = { AUDIT = { icon = " ", color = "hint", alt= {"@audit", "AUDIT", "audit"}}}}  -- or leave it empty to use the default settings
          }
      end});
end)
