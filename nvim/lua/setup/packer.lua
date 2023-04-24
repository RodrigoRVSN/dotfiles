vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer
  use 'wbthomason/packer.nvim'
 
  -- Fuzzy finder
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Theme
  use({
	  'catppuccin/nvim',
	  as = 'catppuccin',
	  config = function()
		  vim.cmd('colorscheme catppuccin')
	  end
  })

  -- Errors alert
  use({
    "folke/trouble.nvim",
    config = function()
        require("trouble").setup { }
    end
  })
  
  -- LSP
  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v1.x',
	  requires = {
		  {'neovim/nvim-lspconfig'},
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'saadparwaiz1/cmp_luasnip'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-nvim-lua'},
		  {'L3MON4D3/LuaSnip'},
		  {'rafamadriz/friendly-snippets'},
	  }
  }

  -- Treesitter
  use({"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"})
  use "nvim-treesitter/playground"
  use "nvim-treesitter/nvim-treesitter-context"

  -- Refactoring
  use "theprimeagen/harpoon"
  use "mbbill/undotree"

  -- Git
  use "tpope/vim-fugitive"

  -- Github Copilot
  use "github/copilot.vim"

  -- Language Helpers
  use "rhysd/vim-clang-format"
  use "fatih/vim-go"                       
  use "hrsh7th/cmp-nvim-lsp"                
  use "hrsh7th/nvim-cmp"                    
  use "neovim/nvim-lspconfig"              
  use "onsails/lspkind-nvim"                

  -- Nvim folder tree
  use "nvim-tree/nvim-tree.lua"
  use "nvim-tree/nvim-web-devicons"

  -- Discord Presence
  use 'andweeb/presence.nvim'

  -- Autoclose pairs
  use {
	  "windwp/nvim-autopairs",
	  config = function() require("nvim-autopairs").setup {} end
  }

  -- Game to train Vim commands
  use "ThePrimeagen/vim-be-good"

  -- Language pack
  use 'sheerun/vim-polyglot'

  -- Syntax check
  use 'dense-analysis/ale'
end)
