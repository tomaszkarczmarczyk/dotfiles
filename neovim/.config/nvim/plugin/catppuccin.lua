vim.pack.add { {
  src = 'https://github.com/catppuccin/nvim',
  name = 'catppuccin'
} }

require('catppuccin').setup {
  default_integrations = false,
}

vim.cmd.colorscheme('catppuccin-nvim')
