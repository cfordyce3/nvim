-- auto install packer if not installed
local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
        vim.cmd([[packadd packer.nvim]])
        return true
    end
    return false
end
local packer_bootstrap = ensure_packer() -- true if packer was just installed

local status, packer = pcall(require, "packer")
if not status then
    return
end

return packer.startup(function(use)
    use("wbthomason/packer.nvim")

    -- prereq for many plugins
    use("nvim-lua/plenary.nvim")

    -- colorschemes --
   	use {
		'NLKNguyen/papercolor-theme',
		as = 'papercolor'
	}

    use('sainnhe/gruvbox-material')
    use('morhetz/gruvbox')

    -- tmux and split window nav
    use("christoomey/vim-tmux-navigator")

    -- maximizes and restores current window
    use("szw/vim-maximizer")

    -- essential plugins
    use("tpope/vim-surround") -- see docs for this
    use("vim-scripts/ReplaceWithRegister") -- see docs for this

    -- commenting with gc
    use("numToStr/Comment.nvim")

    -- file explorer
    use("nvim-tree/nvim-tree.lua")

    -- icons
    use("kyazdani42/nvim-web-devicons")

    -- statusline
    use("nvim-lualine/lualine.nvim")

    -- telescope
    use({ "nvim-telescope/telescope-fzf-native.nvim", run="make" })
    use({ "nvim-telescope/telescope.nvim", branch="0.1.x" })

    -- autocompletion
    use("hrsh7th/nvim-cmp")
    use("hrsh7th/cmp-buffer")   
    use("hrsh7th/cmp-path")

    -- snippets
    use("L3MON4D3/LuaSnip")
    use("saadparwaiz1/cmp_luasnip")
    use("rafamadriz/friendly-snippets")

    -- managing and installing lsp servers
    use("williamboman/mason.nvim")
    use("williamboman/mason-lspconfig.nvim")

    -- configuring lsp servers
    use("neovim/nvim-lspconfig")
    use("hrsh7th/cmp-nvim-lsp")
    use({
        "glepnir/lspsaga.nvim",
        branch = "main",
        requires = {
            { "nvim-tree/nvim-web-devicons" },
            { "nvim-treesitter/nvim-treesitter" },
        },
    })
    use("onsails/lspkind.nvim")

    -- vim training
    use("ThePrimeagen/vim-be-good")



    if packer_bootstrap then
        require("packer").sync()
    end

end)
