-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.0',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

  use('rebelot/kanagawa.nvim')
  use('wakatime/vim-wakatime')
  use('ellisonleao/glow.nvim')
  use('lewis6991/gitsigns.nvim')

  use({'nvim-treesitter/nvim-treesitter', run = function()
      local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
      ts_update()
    end,
  })
  use('nvim-treesitter/playground')
  use('mrjones2014/nvim-ts-rainbow')
  use('theprimeagen/harpoon')
  use('mbbill/undotree')
  use('tpope/vim-fugitive')

  use {
	  'VonHeikemen/lsp-zero.nvim',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'saadparwaiz1/cmp_luasnip'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-nvim-lua'},

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},
		  {'rafamadriz/friendly-snippets'},

		  -- prettier format
		  {'jose-elias-alvarez/null-ls.nvim'},
		  {'MunifTanjim/prettier.nvim'},
	  }
  }

  use("folke/zen-mode.nvim")
  use("github/copilot.vim")
  use('eandrju/cellular-automaton.nvim')

--  use {
--    "mfussenegger/nvim-dap",
--    opt = true,
--    module = { "dap" },
--    requires = {
--      "theHamsta/nvim-dap-virtual-text",
--      "rcarriga/nvim-dap-ui",
--      "mfussenegger/nvim-dap-python",
--      "nvim-telescope/telescope-dap.nvim",
--      { "jbyuki/one-small-step-for-vimkind", module = "osv" },
--      { "mxsdev/nvim-dap-vscode-js" },
--      {
--        "microsoft/vscode-js-debug",
--        opt = true,
--        run = "npm install --legacy-peer-deps && npm run compile",
--      },
--    },
--    -- config = function()
--    --   require("config.dap").setup()
--    -- end,
--    disable = false,
--  }

end)

