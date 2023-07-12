-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- Only required if you have packer configured as `opt`
vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use { 'ibhagwan/fzf-lua',
        -- optional for icon support
        requires = { 'nvim-tree/nvim-web-devicons' }
    }

    use {"akinsho/toggleterm.nvim" }

    use({
        'rose-pine/neovim', as = 'rose-pine',
        config = function()
            vim.cmd('colorscheme rose-pine')
        end
    })

    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

    use {'romgrk/barbar.nvim', requires = {
        'lewis6991/gitsigns.nvim',     -- OPTIONAL: for git status
        'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
    }}


    use { 'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    use {"terrortylor/nvim-comment"}
    use {'nyoom-engineering/oxocarbon.nvim'} -- colorschemes

    use 'NvChad/nvim-colorizer.lua' -- Shows colorcode
    use 'junegunn/vim-easy-align'   -- Align 
    use 'elkowar/yuck.vim'          -- Eww/yuck syntax support



end)
