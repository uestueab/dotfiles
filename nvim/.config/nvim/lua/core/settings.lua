vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.cursorline = true
vim.opt.cursorcolumn = true

-- Below makes nvim unkillable by i3wm
vim.opt.title = true
vim.opt.titlestring = "VIM: Neovim instance"



-- Return to last edit position
vim.api.nvim_exec([[
    autocmd BufReadPost *
        \ if line("'\"") > 1 && line("'\"") <= line("$") |
        \     execute "normal! g`\"" |
        \ endif
]], false)

-- Do not include terminals in the buffer
vim.api.nvim_exec([[ autocmd BufLeave * if &buftype=="terminal" | setlocal nobuflisted | endif ]], false)

-- Remove terminal padding when opening vim
-- vim.api.nvim_exec([[ autocmd VimEnter * silent!  execute "!~/.scripts/vimEnter.sh" | redraw! ]], false)
-- vim.api.nvim_exec([[ autocmd VimLeave * silent!  execute "!~/.scripts/vimLeave.sh" | redraw! ]], false)
