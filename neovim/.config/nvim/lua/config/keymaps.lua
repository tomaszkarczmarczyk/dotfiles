vim.keymap.set('n', '<leader>w', '<Cmd>w<CR>', { desc = 'Save file' })
vim.keymap.set('n', '<leader>W', '<Cmd>wq<CR>', { desc = 'Save and quit' })
vim.keymap.set('n', '<leader>q', '<Cmd>q<CR>', { desc = 'Quit' })
vim.keymap.set('n', '<leader>Q', '<Cmd>q!<CR>', { desc = 'Quit without saving' })

vim.keymap.set('n', '<leader>bn', '<Cmd>enew<CR>', { desc = 'Create new buffer' })
vim.keymap.set('n', '<leader>bd', '<Cmd>bd<CR>', { desc = 'Delete current buffer' })
vim.keymap.set('n', '<leader>bD', '<Cmd>bd!<CR>', { desc = 'Force delete current buffer' })
vim.keymap.set('n', '<Tab>', '<Cmd>bn<CR>', { desc = 'Next buffer' })
vim.keymap.set('n', '<S-Tab>', '<Cmd>bp<CR>', { desc = 'Previous buffer' })
vim.keymap.set('n', '<leader>bl', '<Cmd>ls<CR>', { desc = 'List buffers' })

vim.keymap.set('n', '<Esc>h', '<Cmd>noh<CR>', { desc = 'Clear search highlight' })

vim.keymap.set('n', '<leader>cf', vim.lsp.buf.format, { desc = 'Format buffer' })

vim.keymap.set('n', '<A-k>', '<Cmd>m -2<CR>==', { desc = 'Move current line up' })
vim.keymap.set('n', '<A-j>', '<Cmd>m +1<CR>==', { desc = 'Move current line down' })
vim.keymap.set('i', '<A-k>', '<Esc><Cmd>m -2<CR>==gi', { desc = 'Move current line up' })
vim.keymap.set('i', '<A-j>', '<Esc><Cmd>m +1<CR>==gi', { desc = 'Move current line down' })
vim.keymap.set('x', '<A-k>', ":m '<-2<CR>gv=gv", { silent = true, desc = 'Move selected lines up' })
vim.keymap.set('x', '<A-j>', ":m '>+1<CR>gv=gv", { silent = true, desc = 'Move selected lines down' })

vim.keymap.set('n', '<A-d>', '<Cmd>t.<CR>', { desc = 'Duplicate current line' })
vim.keymap.set('i', '<A-d>', '<Esc><Cmd>t.<CR>gi', { desc = 'Duplicate current line' })
vim.keymap.set('x', '<A-d>', ":t'><CR>gv", { silent = true, desc = 'Duplicate selected lines' })

vim.keymap.set('n', '<leader>s', 'vip:sort n<CR>', { silent = true, desc = 'Sort paragraph' })
vim.keymap.set('x', '<leader>s', ':sort n<CR>', { silent = true, desc = 'Sort selection' })

vim.keymap.set('n', '<Down>', '<Nop>')
vim.keymap.set('n', '<Up>', '<Nop>')
vim.keymap.set('n', '<Left>', '<Nop>')
vim.keymap.set('n', '<Right>', '<Nop>')
vim.keymap.set('x', '<Down>', '<Nop>')
vim.keymap.set('x', '<Up>', '<Nop>')
vim.keymap.set('x', '<Left>', '<Nop>')
vim.keymap.set('x', '<Right>', '<Nop>')
