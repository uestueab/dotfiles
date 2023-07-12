local status_ok, toggleterm = pcall(require, "toggleterm")
if not status_ok then
    return
end

toggleterm.setup {
    size = 12,
    open_mapping = [[<leader>t]],
    hide_numbers = true,
    shade_filetypes = {},
    -- shade_terminals = true,
    -- shading_factor = -90,
    start_in_insert = true,
    insert_mappings = true,
    persist_size = true,
    direction = "horizontal",
    close_on_exit = true,
    shell = vim.o.shell,
    -- float_opts = {
    --     border = "curved",
    --     winblend = 0,
    --     highlights = {
    --         border = "Normal",
    --         background = "Normal",
    --     },
    -- },
}


-- Use <leader>t to toggle the terminal.
-- The terminals CWD is determined by the path of the current edited file.
vim.api.nvim_set_keymap('n', '<leader>t', ':ToggleTerm size=12 dir=%:p:h direction=horizontal<CR>', {noremap = true, silent = true})


