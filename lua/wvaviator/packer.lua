vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.1',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use "EdenEast/nightfox.nvim"
  vim.cmd('colorscheme carbonfox')

  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('nvim-treesitter/playground')
  use('mbbill/undotree')
  use('tpope/vim-fugitive')
  use('numToStr/Comment.nvim')
  use('norcalli/nvim-colorizer.lua')

  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v2.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},             -- Required
		  {                                      -- Optional
		  'williamboman/mason.nvim',
		  run = function()
			  pcall(vim.cmd, 'MasonUpdate')
		  end,
	  },
	  {'williamboman/mason-lspconfig.nvim'}, -- Optional

	  -- Autocompletion
	  {'hrsh7th/nvim-cmp'},     -- Required
	  {'hrsh7th/cmp-nvim-lsp'}, -- Required
	  {'L3MON4D3/LuaSnip'},     -- Required
  	}
  }

  use "lukas-reineke/indent-blankline.nvim"

	use {
	'nvim-tree/nvim-tree.lua',
			requires = {
					'nvim-tree/nvim-web-devicons', -- optional
			},
	}

  use 'lewis6991/gitsigns.nvim'
  use 'romgrk/barbar.nvim'

	use {
			"klen/nvim-test",
			config = function()
					require('nvim-test').setup()
			end
	}

  -- use "akinsho/toggleterm.nvim"
  use {
      'folke/trouble.nvim',
      requires = {
          'nvim-tree/nvim-web-devicons'
      }
  }

  use 'm4xshen/autoclose.nvim'

  use('neovim/nvim-lspconfig')
  use('jose-elias-alvarez/null-ls.nvim')
  use('MunifTanjim/prettier.nvim')

    use {
      "folke/which-key.nvim",
      config = function()
        vim.o.timeout = true
        vim.o.timeoutlen = 300
        require("which-key").setup {}
      end
    }

  use 'github/copilot.vim'
end)
