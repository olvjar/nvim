vim.cmd 'colorscheme minischeme'

require('onedark').setup {
  -- styles: dark, darker, cool, deep, warm, warmer, light
  style = 'darker',
  colors = { fg = '#b2bbcc' }, --default: #a0a8b7
}
require('onedark').load()

