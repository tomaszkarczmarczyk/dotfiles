vim.keymap.set('n', '<leader>w', '<cmd>w<cr>', { desc = 'Save' })
vim.keymap.set('n', '<leader>W', '<cmd>wq<cr>', { desc = 'Write and quit' })
vim.keymap.set('n', '<leader>q', '<cmd>q<cr>', { desc = 'Quit' })
vim.keymap.set('n', '<leader>Q', '<cmd>q!<cr>', { desc = 'Force quit without saving' })

vim.keymap.set('n', '<leader>bn', '<cmd>enew<cr>', { desc = 'Create new empty buffer' })
vim.keymap.set('n', '<leader>bd', '<cmd>bd<cr>', { desc = 'Delete current buffer' })
vim.keymap.set('n', '<leader>bD', '<cmd>bd!<cr>', { desc = 'Force delete current buffer' })
vim.keymap.set('n', '<Tab>', '<cmd>bn<cr>', { desc = 'Go to next buffer' })
vim.keymap.set('n', '<S-Tab>', '<cmd>bp<cr>', { desc = 'Go to previous buffer' })
vim.keymap.set('n', '<leader>bl', '<cmd>ls<cr>', { desc = 'List all open buffers' })

vim.keymap.set('n', '<leader>f', '<cmd>lua vim.lsp.buf.format()<cr>', { desc = 'Format current buffer' })

vim.keymap.set('n', '<Up>', '<Nop>')
vim.keymap.set('n', '<Down>', '<Nop>')
vim.keymap.set('n', '<Left>', '<Nop>')
vim.keymap.set('n', '<Right>', '<Nop>')
