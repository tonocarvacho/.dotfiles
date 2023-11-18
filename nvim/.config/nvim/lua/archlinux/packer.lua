-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
      'nvim-telescope/telescope.nvim', 
      requires = { {'nvim-lua/plenary.nvim'}, { "nvim-telescope/telescope-live-grep-args.nvim" } },

      config = function()
          require("telescope").load_extension("live_grep_args")
      end
  }

  use 'Mofiqul/dracula.nvim'

  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional
    },
  }
  use("theprimeagen/harpoon")
  use("tpope/vim-fugitive")
  use("mbbill/undotree")
  use("nvim-treesitter/nvim-treesitter-context");
  use("jiangmiao/auto-pairs")
  use("alvan/vim-closetag")
  --use("airblade/vim-gitgutter")
  use("lewis6991/gitsigns.nvim")
  use("APZelos/blamer.nvim")
  use("voldikss/vim-floaterm")
  use("ThePrimeagen/vim-be-good")
  use("chrisbra/Colorizer")
  --use("p00f/nvim-ts-rainbow")
  use("HiPhish/rainbow-delimiters.nvim")
  use("preservim/nerdcommenter")
  
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

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

end)
