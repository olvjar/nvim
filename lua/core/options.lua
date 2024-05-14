-- [[ Settings ]]

-- General
vim.opt.mouse = 'a' -- Enable mouse support
vim.opt.clipboard = 'unnamedplus' -- Sync system clipboard
vim.opt.undofile = true -- Save undo history
vim.opt.have_nerd_font = true -- Have nerd font

-- UI
vim.opt.termguicolors = true -- Enable 24-bit RGB colors
vim.opt.number = true -- Show line numbers
vim.opt.showmode = false -- Do not show mode
vim.opt.breakindent = true -- Enable break indent
vim.opt.cursorline = true -- Show which line cursor is on

vim.opt.ignorecase = true -- Case insensitive
vim.opt.smartcase = true -- Ignore lowercase for patterns
vim.opt.signcolumn = 'yes' -- Keep signcolumn on default

vim.opt.splitright = true -- New vertical split right
vim.opt.splitbelow = true -- New horizontal split below

vim.opt.list = true -- Whitelist characters
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

vim.opt.inccommand = 'split' -- Preview live substitutions
vim.opt.scrolloff = 10 -- Number of screen lines to keep above and below cursor

-- Memory
vim.opt.updatetime = 250 -- Decrease time update
vim.opt.timeoutlen = 300 -- Decrease mapped sequence wait time
