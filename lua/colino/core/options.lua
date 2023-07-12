local opt = vim.opt

-- Line Numbers
opt.relativenumber = false
opt.number = true

-- Tabs and indentation
opt.tabstop = 4
opt.shiftwidth = 4
opt.shiftround = true
opt.expandtab = true
opt.autoindent = true

-- Searching
opt.hlsearch = true
opt.incsearch = true
opt.ignorecase = true
opt.smartcase = true

-- Line wrapping
opt.wrap = false

opt.scrolloff = 5
opt.cursorline = true
opt.splitright = true
opt.splitbelow = true
opt.hidden = true

-- Turn off swp, swo backup files

opt.backup = false
opt.writebackup = false

-- Appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- Backspace
opt.backspace = "indent,eol,start"

-- Clipboard
opt.clipboard:append("unnamedplus")

opt.iskeyword:append("-")
