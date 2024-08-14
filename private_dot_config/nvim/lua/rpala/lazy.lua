local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	-- Necessary lua dependencies
	"nvim-lua/plenary.nvim",

	-- Gives brackets rainbow colors for easy matching
	-- https://github.com/frazrepo/vim-rainbow
	 "frazrepo/vim-rainbow",
	-- let g:rainbow_active = 1

	-- Pairs brackets automatically.
	-- https://github.com/jiangmiao/auto-pairs
	"jiangmiao/auto-pairs",

	-- Airline power bar on the bottom of the window.
	-- https://github.com/vim-airline/vim-airline
	"vim-airline/vim-airline",

	-- Fancy dashboard on startup.
	-- https://github.com/glepnir/dashboard-nvim
	"glepnir/dashboard-nvim",

	-- A class outline viewer for Vim.
	-- https://github.com/preservim/tagbar
	"preservim/tagbar",
	-- nmap <leader>t :TagbarToggle<CR>

	-- Snippets for Vim. Ultisnips is the engine, and vim-snippets holds the
	-- snippets separately.
	-- https://github.com/SirVer/ultisnips
	"SirVer/ultisnips",
	"honza/vim-snippets",

	-- Comment out lines with "gcc" or "gc".
	-- https://github.com/tpope/vim-commentary
	"tpope/vim-commentary",

	-- A highly extendable fuzzy finder over lists.
	-- https://github.com/nvim-telescope/telescope.nvim
	"nvim-telescope/telescope.nvim",
    "jackysee/telescope-hg.nvim",
	
	-- View directories with <C-t>
	-- https://github.com/preservim/nerdtree
	 "preservim/nerdtree",

	-- Icons for files within plugins
	"ryanoasis/vim-devicons",

    "tanvirtin/monokai.nvim",
    "nvim-treesitter/nvim-treesitter",
    "nvim-treesitter/playground",    
    "nvim-treesitter/nvim-treesitter-context",
    "nvim-treesitter/nvim-treesitter-refactor",
    "mbbill/undotree",
    "tpope/vim-fugitive",

  -- {
	  -- 'VonHeikemen/lsp-zero.nvim',
	  -- branch = 'v1.x',
	  -- requires = {
		  -- -- LSP Support
	  -- }
  -- },

    {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
    'neovim/nvim-lspconfig',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/nvim-cmp',
    'L3MON4D3/LuaSnip',
    
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

    "folke/zen-mode.nvim",
    "eandrju/cellular-automaton.nvim",
    "laytan/cloak.nvim",

    {"neoclide/coc.nvim", branch = "release"},
    {"junegunn/fzf.vim"},

    -- Autosuggestions above the Vim command line
    {"gelguy/wilder.nvim"},
})



