vim.g.mapleader = " "

local km = vim.keymap

km.set("i", "jj", "<esc>")

km.set("n", "<leader>Q", ":q<CR>")

km.set("n", "<leader>nh", ":nohl<CR>")

km.set("n", "<leader>ps", ":PackerSync<CR>")

-- do not add deleted char to p reg
km.set("n", "x", '"_x')

-- inc and dec
km.set("n", "<leader>+", "<C-a>")
km.set("n", "<leader>-", "<C-x>")

-- do not insert on new lines
km.set("n", "o", 'o<esc>')
km.set("n", "O", 'O<esc>')

-- center screen on search results
km.set("n", "n", 'nzz')
km.set("n", "N", 'Nzz')

-- split window controls
km.set("n", "<leader>sv", "<C-w>v") -- split window vertically
km.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
km.set("n", "<leader>se", "<C-w>=") -- make split windows equal width
km.set("n", "<leader>sx", ":close<CR>") -- close current window split

-- tab controls
km.set("n", "<leader>to", ":tabnew<CR>")
km.set("n", "<leader>tx", ":tabclose<CR>")
km.set("n", "<leader>tn", ":tabn<CR>")
km.set("n", "<leader>tp", ":tabp<CR>")

-------------------
-- plugin keymaps --
--------------------

-- vim-maximizer
km.set("n", "<leader>sm", ":MaximizerToggle<CR>")

-- nvim-tree
km.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- telescope
km.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>")
km.set("n", "<leader>fs", "<cmd>Telescope live_grep<CR>")
km.set("n", "<leader>fc", "<cmd>Telescope grew_string<CR>")
km.set("n", "<leader>fb", "<cmd>Telescope buffers<CR>")
km.set("n", "<leader>fh", "<cmd>Telescope help_tags<CR>")

