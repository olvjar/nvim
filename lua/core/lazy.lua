-- [[ lazy.nvim plugin configuration file ]]

local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  vim.fn.system { 'git',
                  'clone',
                  '--filter=blob:none',
                  '--branch=stable',
                  lazyrepo,
                  lazypath }
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

-- [[ Configure and install plugins ]]
require('lazy').setup("core.plugins", {
  defaults = { lazy = true },
  concurrency = 5,
  performance = {
    rtp = {
      disabled_plugins = {},
    },
  },
  debug = false,
  ui = {
    size = { width = 0.9, height = 0.9 },
    border = { "┏", "━", "┓", "┃", "┛","━", "┗", "┃" },
  }
  
  { import = '../plugins' },
})