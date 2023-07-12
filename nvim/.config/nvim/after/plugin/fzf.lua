-- Find file in path of current buffer
vim.keymap.set("n",
               "<leader>f",
               "<cmd>lua require('fzf-lua').files({ cwd = vim.fn.expand('%:p:h') })<CR>",
               { silent = true })
               --
-- List all buffers
vim.keymap.set("n",
               "<leader><leader>",
               "<cmd>lua require('fzf-lua').buffers()<CR>",{ silent = true })
               --
-- Find line within current buffer
vim.keymap.set("n",
               "<leader>fl",
               "<cmd>lua require('fzf-lua').blines()<CR>",{ silent = true })

-- Find line within all buffers
vim.keymap.set("n",
               "<leader>fL",
               "<cmd>lua require('fzf-lua').lines()<CR>",{ silent = true })
               --
-- Grep a string in all files of the current buffer
vim.keymap.set("n",
               "<leader>?",
               "<cmd>lua require('fzf-lua').grep({ cwd = vim.fn.expand('%:p:h') })<CR>",{ silent = true })

-- List of all fzf.lua commands
vim.keymap.set("n",
               "<leader>h",
               "<cmd>lua require('fzf-lua').builtin()<CR>",{ silent = true })

vim.keymap.set("n",
               "<leader>o",
               "<cmd>lua require('fzf-lua').oldfiles()<CR>",{ silent = true })




