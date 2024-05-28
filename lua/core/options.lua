-- [[ Settings ]]

local g = vim.g
local opt = vim.opt

-- General
opt.mouse = 'a' -- Enable mouse support
opt.clipboard = 'unnamedplus' -- Sync system clipboard
opt.undofile = true -- Save undo history
g.have_nerd_font = true -- Have nerd font


-- UI
opt.termguicolors = true -- Enable 24-bit RGB colors
opt.number = true -- Show line numbers
opt.showmode = false -- Do not show mode
opt.breakindent = true -- Enable break indent
opt.cursorline = true -- Show which line cursor is on

opt.ignorecase = true -- Case insensitive
opt.smartcase = true -- Ignore lowercase for patterns
opt.signcolumn = 'yes' -- Keep signcolumn on default

opt.splitright = true -- New vertical split right
opt.splitbelow = true -- New horizontal split below

opt.list = true -- Whitelist characters
opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

opt.inccommand = 'split' -- Preview live substitutions
opt.scrolloff = 10 -- Number of screen lines to keep above and below cursor

-- Memory
opt.updatetime = 250 -- Decrease time update
opt.timeoutlen = 300 -- Decrease mapped sequence wait time
