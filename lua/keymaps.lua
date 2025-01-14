-- define common options
local opts = {
    noremap = true,      -- non-recursive
    silent = false,       -- do not show message
}

-----------------
-- Normal mode --
-----------------

-- Hint: see `:h vim.map.set()`
-- Better window navigation
vim.keymap.set('n', '<C-h>', '<C-w>h', opts)
vim.keymap.set('n', '<C-j>', '<C-w>j', opts)
vim.keymap.set('n', '<C-k>', '<C-w>k', opts)
vim.keymap.set('n', '<C-l>', '<C-w>l', opts)

-- Resize with arrows
-- delta: 2 lines
vim.keymap.set('n', '<C-Up>', ':resize -2<CR>', opts)
vim.keymap.set('n', '<C-Down>', ':resize +2<CR>', opts)
vim.keymap.set('n', '<C-Left>', ':vertical resize -2<CR>', opts)
vim.keymap.set('n', '<C-Right>', ':vertical resize +2<CR>', opts)

-- Set the Leader key to comma
vim.g.mapleader = ","
vim.g.maplocalleader = ","

-- Tree
vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>', opts)

-- lsp
-- pluginKeys.lspKeybinding = function(mapbuf)
--     mapbuf('n', '<leader>r', ':lua vim.lsp.buf.rename<CR>', opt)
--     mapbuf('n', '<leader>a', ':lua vim.lsp.buf.code_action()<CR>', opt)
--     mapbuf('n', '<leader>d', ':lua vim.lsp.buf.definition<CR>', opt)
--     mapbuf('n', '<leader>f', ':lua vim.lsp.buf.format { async = true }<CR>', opt)
-- end

-----------------
-- Visual mode --
-----------------

-- Hint: start visual mode with the same area as the previous area and the same mode
vim.keymap.set('v', '<', '<gv', opts)
vim.keymap.set('v', '>', '>gv', opts)

-----------------
-- Insert mode --
-----------------

vim.keymap.set('i', 'jk', '<ESC>', opts)
