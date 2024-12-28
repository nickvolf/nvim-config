-- Set Space as the leader key
vim.g.mapleader = " "  -- Space is the leader key
vim.g.maplocalleader = " "

require("config.lazy")

-- Enable relative numbers and absolute number for the current line
vim.opt.relativenumber = true  -- Show relative line numbers
vim.opt.number = true          -- Show the absolute line number for the current line

-- Configure tab settings
vim.opt.expandtab = true      -- Use spaces instead of tabs
vim.opt.shiftwidth = 4         -- Number of spaces for each indentation step
vim.opt.tabstop = 4            -- Number of spaces a <Tab> represents
vim.opt.softtabstop = 4        -- Number of spaces for Tab key in insert mode

-- Enable common usability settings
vim.opt.smartindent = true     -- Smart indentation
vim.opt.autoindent = true      -- Auto indentation

-- Additional UI enhancements
vim.opt.termguicolors = true   -- Enable true color support
vim.opt.cursorline = true      -- Highlight the current line

vim.keymap.set("n", "<space><space>x", "<cmd>source %<CR>")
vim.keymap.set("n", "<space>x", ":.lua<CR>")
vim.keymap.set("v", "<space>x", ":lua<CR>")

--Save the file with Ctrl+S
vim.keymap.set("n", "<C-s>", function ()
    local cursor_pos = vim.fn.getcurpos()
    vim.cmd('normal! gg=G')
    vim.fn.setpos('.', cursor_pos)
    vim.cmd('write')
end, {noremap = true, silent = true})

-- Save file with Ctrl+S (insert mode)
vim.keymap.set("i", "<C-s>", function()
    local cursor_pos = vim.fn.getcurpos()
    vim.cmd('normal! gg=G')
    vim.fn.setpos('.', cursor_pos)
    vim.cmd('write')
end, { noremap = true, silent = true })

vim.keymap.set('n', '<C-b>', '<Cmd>Neotree toggle<CR>')
vim.keymap.set('n', '<space><space>t', '<Cmd>ToggleTerm<CR>')


-- Highlight Yanked Text
vim.api.nvim_create_autocmd('TextYankPost', {
    desc = 'Highlight when yanking text',
    group = vim.api.nvim_create_augroup('kickstart-highlight-yank', {clear=true}),
    callback = function()
        vim.highlight.on_yank()
    end,
})

-- Clean up trailing spaces and blank lines on save for Lua files
vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = "*.lua",
    callback = function()
        -- Remove trailing whitespace
        vim.cmd([[ %s/\s\+$//e ]])
        -- Remove lines that are only blank spaces
        vim.cmd([[ %s/^\s*$//e ]])
    end,
    desc = "Clean up trailing spaces and blank lines on save for Lua files",
})
