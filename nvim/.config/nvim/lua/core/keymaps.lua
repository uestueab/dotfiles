local map = vim.api.nvim_set_keymap

-- LEADER
vim.g.mapleader = ","

-- NORMAL MODE
vim.keymap.set("n", "<leader>w",":w<CR>", { desc = "save" })
vim.keymap.set("n", "?",":WhichKey<CR>")            -- find any key
vim.keymap.set("n", "J", "mzJ`z")                   -- do not move cursor when using 'J'

vim.keymap.set("n","<Enter>", "a")                  -- enter insert mode
vim.keymap.set("n","<Backspace>", "i<Backspace>")   -- enter insert mode
vim.keymap.set("n","<Space>", "i<Space>")           -- enter insert mode
-- replace word under cursor with last selected word. (Repeatable)
vim.keymap.set('n', 's', 'diw"0P', { noremap = true })


-- INSERT MODE
vim.keymap.set("i", "jj","<Esc>")                   -- escape
-- Map Ctrl-Backspace to delete the previous word in insert mode.
vim.keymap.set('i', '<C-BS>', '<C-w>', { noremap = true, expr = false })
-- Map Ctrl-h to delete previous word in insert mode (forceful)
vim.keymap.set('i', '<C-h>', '<C-w>', { noremap = true, expr = false })



-- VISUAL MODE
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set('v', '<C-c>', '"+y', { noremap = true })
-- replace word under cursor with last selected word. (Repeatable)
vim.keymap.set('v', 's', '"_d"0P', { noremap = true })



-- FUNCTIONS
-- Global variable to keep track of the previous buffer
local previous_buffer = nil

-- Toggle between netrw and previous buffer
function ToggleNetrw()
  if vim.bo.filetype == 'netrw' then
    if previous_buffer ~= nil and vim.api.nvim_buf_is_valid(previous_buffer) then
      vim.api.nvim_set_current_buf(previous_buffer)
    end
    previous_buffer = nil
  else
    previous_buffer = vim.api.nvim_get_current_buf()
    vim.cmd('Explore')
  end
end

-- Map key combination to toggle netrw
vim.keymap.set('n', '<Leader>e', ':lua ToggleNetrw()<CR>', { noremap = true, silent = true })

-- Start interactive EasyAlign in visual mode (e.g. vipga)
vim.keymap.set('x', 'ga', '<Plug>(EasyAlign)', {})
-- Start interactive EasyAlign for a motion/text object (e.g. gaip)
vim.keymap.set('n', 'ga', '<Plug>(EasyAlign)', {})
