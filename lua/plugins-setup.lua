--install packer if not installed
local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
        vim.cmd([[packeradd packer.nvim]])
        return true
    end
    return false
end

local packer_bootstrap = ensure_packer()

local status, packer = pcall(require, "packer")
if not status then
    return
end

return packer.startup(function(use)
    --packer maintains itself
    use("wbthomason/packer.nvim")

    --package prereq
    use("nvim-lua/plenary.nvim")

    --gruvbox color scheme
    use("morhetz/gruvbox")

    --file explorer
    use("nvim-tree/nvim-tree.lua")
    use("nvim-tree/nvim-web-devicons")

    -- statusline
    use("nvim-lualine/lualine.nvim")

    -- telescope
    use({ "nvim-telescope/telescope-fzf-native.nvim", run="make" })
    use({ "nvim-telescope/telescope.nvim", branch="0.1.x" })

    -- harpoon
    use("ThePrimeagen/harpoon")

    -- autocompletion
    use("hrsh7th/nvim-cmp")
    use("hrsh7th/cmp-nvim-lsp")
    use("hrsh7th/cmp-buffer")
    use("hrsh7th/cmp-path")
    use("hrsh7th/cmp-vsnip")
    use("hrsh7th/vim-vsnip")

    use("gosukiwi/vim-smartpairs")

    -- managing lsp servers
    use("neovim/nvim-lspconfig")
    use("williamboman/mason.nvim")
    use("williamboman/mason-lspconfig.nvim")

    -- extra rust tools
    use("simrat39/rust-tools.nvim")

    -- random stuff
    use("preservim/nerdcommenter")
    use("ThePrimeagen/vim-be-good")
    use("j-hui/fidget.nvim")

    -- tree sitter
    use {
        "nvim-treesitter/nvim-treesitter",
        run = ':TSUpdate'
    }


    if packer_bootstrap then
        require("packer").synch()
    end
end)
