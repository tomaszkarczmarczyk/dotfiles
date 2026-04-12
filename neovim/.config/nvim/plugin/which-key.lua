vim.pack.add {
  'https://github.com/nvim-mini/mini.icons',
  'https://github.com/nvim-tree/nvim-web-devicons',
  'https://github.com/folke/which-key.nvim'
}

require('lualine').setup {
  sections = {
    lualine_c = { 'filename', 'filesize' }
  }
}
