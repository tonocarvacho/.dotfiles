vim.cmd.packadd('packer.nvim')
return require('packer').startup(function(use)
  -- setup --
  use 'wbthomason/packer.nvim'
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use("nvim-treesitter/nvim-treesitter-context");
  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x',
    requires = {
      { 'williamboman/mason.nvim' },
      { 'williamboman/mason-lspconfig.nvim' },
      { 'neovim/nvim-lspconfig' },
      { 'hrsh7th/nvim-cmp' },
      { 'hrsh7th/cmp-nvim-lsp' },
      --{'L3MON4D3/LuaSnip'},
    }
  }

  -- utilities --
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.4',
    requires = { { 'nvim-lua/plenary.nvim' } },
  }
  use("theprimeagen/harpoon")
  use("mbbill/undotree")
  use 'tpope/vim-dadbod'
  use 'kristijanhusak/vim-dadbod-ui'

  -- git --
  use("tpope/vim-fugitive")
  use("lewis6991/gitsigns.nvim")
  use("APZelos/blamer.nvim")

  -- qol --
  use("preservim/nerdcommenter")
  use("jiangmiao/auto-pairs")
  use("alvan/vim-closetag")
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional
    },
  }

  -- other --
  use("ThePrimeagen/vim-be-good")
  use({
    "epwalsh/obsidian.nvim",
    tag = "*", -- recommended, use latest release instead of latest commit
    requires = {
      -- Required.
      "nvim-lua/plenary.nvim",

      -- see below for full list of optional dependencies 👇
    },
    config = function()
      require("obsidian").setup({
        workspaces = {
          {
            name = "personal",
            path = "~/personal/notes",
          },
          mappings = {
            -- Overrides the 'gf' mapping to work on markdown/wiki links within your vault.
            ["gf"] = {
              action = function()
                return require("obsidian").util.gf_passthrough()
              end,
              opts = { noremap = false, expr = true, buffer = true },
            },
            -- Toggle check-boxes.
            ["<leader>ch"] = {
              action = function()
                return require("obsidian").util.toggle_checkbox()
              end,
              opts = { buffer = true },
            },
          },
        },

        -- see below for full list of options 👇
      })
    end,
  })

  -- appearance --
  use 'vimpostor/vim-tpipeline'
  use 'Mofiqul/dracula.nvim'
  use { "folke/noice.nvim", requires = { { "MunifTanjim/nui.nvim" } } }
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }
  use("chrisbra/Colorizer")
  use("HiPhish/rainbow-delimiters.nvim")
end
)
