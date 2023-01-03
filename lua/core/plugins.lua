local fn = vim.fn
-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
        "git",
        "clone",
        "--depth",
        "1",
        "https://github.com/wbthomason/packer.nvim",
        install_path,
    }
    print "Installing packer close and reopen Neovim..."
    vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
    augroup packer_user_config
        autocmd!
        autocmd BufWritePost plugins.lua source <afile> | PackerSync
    augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
    return
end

-- Have packer use a popup window
packer.init {
    display = {
        open_fn = function()
            return require("packer.util").float { border = "rounded" }
        end,
    },
}

-- Install your plugins here
return packer.startup(function(use)
    	-- My plugins here
	use "wbthomason/packer.nvim" -- Have packer manage itself
	use "nvim-lua/popup.nvim" -- An implementation of the Popup API from vim in Neovim
	use "nvim-lua/plenary.nvim" -- Useful lua functions used ny lots of plugins

    -- Nvim Tree
    use "kyazdani42/nvim-web-devicons"
    use "kyazdani42/nvim-tree.lua"

    	-- My colorschemes
	use "shaunsingh/nord.nvim" -- Nord colorscheme
    use({ --Catppuccin colorscheme
        "catppuccin/nvim",
        as = "catppuccin"
    })

    -- cmp plugins
    use "hrsh7th/nvim-cmp" -- The completion plugin
    use "hrsh7th/cmp-buffer" -- Buffer completions
    use "hrsh7th/cmp-path" -- Cmdline completions
    use "hrsh7th/cmp-cmdline" -- Snippet completions
    use "saadparwaiz1/cmp_luasnip" -- Snippet completions
    use "hrsh7th/cmp-nvim-lsp"

    -- luasnip
    use 'L3MON4D3/LuaSnip'

    -- Lsp plugins
    use { "williamboman/mason.nvim" } -- Maons used to install lsp servers, dap, and linters
    use { "williamboman/mason-lspconfig.nvim" } -- Mason will automatically install & setup configured lsp servers.
    use "neovim/nvim-lspconfig" -- Lsp configuration
    use { "jose-elias-alvarez/null-ls.nvim" } -- Linting
    use { "jayp0521/mason-null-ls.nvim" } -- Maons-Null-Ls bridge

	-- Telescope
	use "nvim-telescope/telescope.nvim"
	use "nvim-telescope/telescope-media-files.nvim"

    -- Treesitter
    use { "nvim-treesitter/nvim-treesitter",  run = ':TSUpdate' }

    -- Autopairs
    use { "windwp/nvim-autopairs" } -- Autopairs integrates with both cmp and lsp.

    -- Git plugins
    use { "lewis6991/gitsigns.nvim" }

    -- Terminal plugin
    use { "akinsho/toggleterm.nvim" }

	-- Lua line
	use { "nvim-lualine/lualine.nvim", requires = { 'kyazdani42/nvim-web-devicons', opt = true } }

	-- Buffer line
	use { "akinsho/bufferline.nvim" }

    -- markdown previewer
    use { "ellisonleao/glow.nvim" }

    -- project.nvim
    use { 'ahmedkhalf/project.nvim' }

	-- impatient.nvim to have caching and loading neovim faster.
	use { 'lewis6991/impatient.nvim'}

    -- Dashboard
    use { 'goolord/alpha-nvim', require = { 'kyazdani42/nvim-web-devicons' }, }

    -- Indentline
    use { "lukas-reineke/indent-blankline.nvim" }

    -- notifications
    use { "rcarriga/nvim-notify" }

    -- Comments
    use { "numToStr/Comment.nvim" }
-- Debugger
    use { 'mfussenegger/nvim-dap' }
    use { 'rcarriga/nvim-dap-ui' }


    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if PACKER_BOOTSTRAP then
        require("packer").sync()
    end
end)
