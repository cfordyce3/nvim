local opt = vim.opt

-- cursor
opt.guicursor = ""
opt.cursorline = false

-- line numbers
opt.nu = true
opt.relativenumber = true

-- tabs and indents
opt.shiftwidth = 4
opt.tabstop = 4
opt.expandtab = true
opt.autoindent = true
opt.smarttab = true

-- line wrapping
opt.wrap = false

-- search settings
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = false
opt.incsearch = true

-- scroll setting
opt.scrolloff = 10

-- appearance
opt.termguicolors = true
opt.background = "dark"
vim.cmd[[highlight Normal guibg=NONE]]

-- backspace
opt.backspace = "indent,eol,start"

-- clipboard
opt.clipboard = "unnamedplus"

-- split windows
opt.splitright = true
opt.splitbelow = true

-- keyword inclusions
opt.iskeyword:append("-")


-- Highlight when yanking text
--   Try with 'yap' in normal mode
--   See ':help vim.highlight.on_yank()'
vim.api.nvim_create_autocmd("TextYankPost", {
    desc = "Highlight when yanking (copying) text",
    group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
    callback = function()
	vim.highlight.on_yank()
    end,
})
