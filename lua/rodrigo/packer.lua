-- vim.cmd [[packadd packer.nvim]]
vim.cmd.packadd("packer.nvim")

return require("packer").startup(function(use)
  -- Packer can manage itself
  use "wbthomason/packer.nvim"
  use({ "catppuccin/nvim", as = "catppuccin" })
  use({
	"nvim-telescope/telescope.nvim",
	tag = "0.1.0",
	requires = { { "nvim-lua/plenary.nvim" } },
  })
  use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate"})
  use {
  	'VonHeikemen/lsp-zero.nvim',
  	requires = {
  	  -- LSP Support
  	  {'neovim/nvim-lspconfig'},             -- Required
  	  {'williamboman/mason.nvim'},           -- Optional
  	  {'williamboman/mason-lspconfig.nvim'}, -- Optional

  	  -- Autocompletion
  	  {'hrsh7th/nvim-cmp'},         -- Required
  	  {'hrsh7th/cmp-nvim-lsp'},     -- Required
  	  {'hrsh7th/cmp-buffer'},       -- Optional
  	  {'hrsh7th/cmp-path'},         -- Optional
  	  {'saadparwaiz1/cmp_luasnip'}, -- Optional
  	  {'hrsh7th/cmp-nvim-lua'},     -- Optional

  	  -- Snippets
  	  {'L3MON4D3/LuaSnip'},             -- Required
  	  {'rafamadriz/friendly-snippets'}, -- Optional
  	}
  }
  -- Toggle Comments 
  use {
	'numToStr/Comment.nvim',
    	config = function()
    	    require('Comment').setup()
    	end
  }
  -- Display Git Differences 
  use 'airblade/vim-gitgutter'
  -- Autocompletion for JSX tags
  use 'maxmellon/vim-jsx-pretty'
  use 'pangloss/vim-javascript'
end)
