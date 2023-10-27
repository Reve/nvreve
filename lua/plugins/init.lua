return {
  {
	  'nvim-telescope/telescope.nvim', tag = '0.1.1',
	  dependencies = { {'nvim-lua/plenary.nvim'} }
  },

  {
	  'rose-pine/neovim',
	  name = 'rose-pine',
	  config = function()
		  vim.cmd('colorscheme rose-pine')

	  end
  },

  {
      'nvim-treesitter/nvim-treesitter',  
      build = ':TSUpdate' 
  },

  ('mbbill/undotree'),

  {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v2.x',
	  dependencies = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  {                                      -- Optional
		  'williamboman/mason.nvim',
		  build = function()
			  pcall(vim.cmd, 'MasonUpdate')
		  end,},
		  {'williamboman/mason-lspconfig.nvim'}, -- Optional

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},     -- Required
		  {'hrsh7th/cmp-nvim-lsp'}, -- Required
		  {'L3MON4D3/LuaSnip'},     -- Required
	  }
  },

  { 'https://codeberg.org/esensar/nvim-dev-container' },

  'APZelos/blamer.nvim',

  -- Prettier
  ('neovim/nvim-lspconfig'),
  ('jose-elias-alvarez/null-ls.nvim'),
  ('MunifTanjim/prettier.nvim'),
  ('ThePrimeagen/harpoon'),
  ('semanticart/tag-peek.vim'),
  ('averms/black-nvim'),
  ('lewis6991/gitsigns.nvim'),
  ('jamestthompson3/nvim-remote-containers'),
  ('f-person/git-blame.nvim'),
  ('folke/trouble.nvim'),
  ('nvim-tree/nvim-web-devicons'),

  {
      'nvim-lualine/lualine.nvim',
      dependencies = { 'nvim-tree/nvim-web-devicons', lazy = true }
  },

  'preservim/vim-pencil',
  'junegunn/goyo.vim',
}
