local opt = vim.opt

-- cursor opts
opt.guicursor = "" -- block cursor
opt.cursorline = true
-- ^ for a window-wide line at cursor level

-- line numbers
opt.nu = true
opt.relativenumber = true

-- tabs and indents
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

-- line wrapping
opt.wrap = false

-- search settings
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = false
opt.incsearch = true

-- scroll setting
opt.scrolloff = 10

--appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- backspace
opt.backspace = "indent,eol,start"

-- clipboard
opt.clipboard:append("unnamedplus")

-- split windows
opt.splitright = true
opt.splitbelow = true

-- keyword inclusions
opt.iskeyword:append("-")
