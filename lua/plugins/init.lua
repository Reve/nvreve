return {
    {
        'nvim-telescope/telescope.nvim',
        dependencies = { { 'nvim-lua/plenary.nvim' } }
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
        branch = 'v3.x',
        dependencies = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            { -- Optional
                'williamboman/mason.nvim',
                build = function()
                    pcall(vim.cmd, 'MasonUpdate')
                end,
            },
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },     -- Required
            { 'hrsh7th/cmp-nvim-lsp' }, -- Required
            { 'L3MON4D3/LuaSnip' },     -- Required
        }
    },

    'APZelos/blamer.nvim',

    -- Prettier
    ('jose-elias-alvarez/null-ls.nvim'),
    ('MunifTanjim/prettier.nvim'),
    ('ThePrimeagen/harpoon'),
    ('semanticart/tag-peek.vim'),
    ('averms/black-nvim'),
    ('lewis6991/gitsigns.nvim'),
    ('f-person/git-blame.nvim'),
    ('folke/trouble.nvim'),

    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons', lazy = true }
    },

    'preservim/vim-pencil',
    'github/copilot.vim',
    'numToStr/FTerm.nvim',
    'stsewd/isort.nvim',
    'Djancyp/cheat-sheet',
    --  'mattn/emmet-vim',
    'Shopify/tree-sitter-liquid',
    'marene/nvm.vim',
    'simrat39/symbols-outline.nvim',
    {
        'numToStr/Comment.nvim',
        opts = {
            -- add any options here
        }
    },
    'Djancyp/better-comments.nvim',
    { 'akinsho/toggleterm.nvim', version = "*" },
    'nvim-tree/nvim-web-devicons',
    "SmiteshP/nvim-navic",
    'mfussenegger/nvim-dap',
    'mfussenegger/nvim-dap-python'
}
