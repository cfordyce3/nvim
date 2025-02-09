vim.g.mapleader = " "

local km = vim.keymap

km.set("i", "kj", "<esc>")

km.set("n", "<leader>q", ":q<CR>")
km.set("n", "<leader>Q", ":qa!<CR>")

km.set("n", "<leader>wq", ":wq<CR>")
km.set("n", "<leader>ww", ":w<CR>")
km.set("n", "ZW", ":w<CR>")

-- TJ Devries Niceties
-- Allows for sourcing the whole file and running specific line(s)
km.set("n", "<space><space>x", ":source %<CR>")
km.set("n", "<leader>x", ":.lua<CR>")
km.set("v", "<leader>x", ":lua<CR>")

-- nvim-tree
km.set("n", "<leader>E", ":Neotree filesystem show toggle left<CR>")
km.set("n", "<leader>e", ":Neotree filesystem focus left<CR>")

-- telescope in ../plugins/telescope.lua


-- which-key additions
--local wk = require("which-key")
--wk.add({
--  { "<leader>q", desc = "Quit ", },
--  { "<leader>Q", desc = "Quit without saving", },
--
--  { "<leader>w", group = "Write", },
--  { "<leader>wq", desc = "Write and quit", },
--  { "<leader>ww", desc = "Write", },
--
--  { "<leader>e", desc = "Toggle File Tree", },
--  { "<leader>E", desc = "Goto File Tree", },
--
--  { "<leader>x", desc = "Execute current line", },
--  { "<space><space>x", desc = "Source file", },
--})
