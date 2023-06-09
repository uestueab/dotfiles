local builtin = require('telescope.builtin')
local utils = require("telescope.utils")

vim.keymap.set('n', '<leader>f',  builtin.buffers, {})
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fc', builtin.colorscheme, {})

local actions = require("telescope.actions")
require("telescope").setup{
    defaults = {
        mappings = {
            i = {
                ["<leader>"] = actions.close
            },
        },
    },

    pickers = {
        colorscheme = {
            enable_preview = true
        },

        find_files = {
            cwd =  utils.buffer_dir()
        }
    }

}
