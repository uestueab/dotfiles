-- LEADER
vim.g.mapleader = ","

-- NORMAL MODE
vim.keymap.set("n", "<leader>w",":w<CR>", { desc = "save" })
-- find any key
vim.keymap.set("n", "?",":WhichKey<CR>")
-- do not move cursor when using 'J'
vim.keymap.set("n", "J", "mzJ`z")
-- Usefull shortcuts to enter insert mode
--  nnoremap <Enter> i<Enter>
vim.keymap.set("n","<Enter>", "a")
vim.keymap.set("n","<Backspace>", "i<Backspace>")
vim.keymap.set("n","<Space>", "i<Space>")


-- INSERT MODE
vim.keymap.set("i", "jj","<Esc>") -- escape
-- Map Ctrl-Backspace to delete the previous word in insert mode.
vim.keymap.set("i", "C-BS>", "<C-g>u<C-w>", { silent = true })

-- VISUAL MODE
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
