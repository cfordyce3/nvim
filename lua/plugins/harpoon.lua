local km = vim.keymap

km.set("n", "<leader>a", ':lua require("harpoon.mark").add_file()<CR>')
km.set("n", "<leader>h", ':lua require("harpoon.ui").toggle_quick_menu()<CR>')
km.set("n", "<leader>o", ':lua require("harpoon.ui").nav_next()<CR>')
km.set("n", "<leader>i", ':lua require("harpoon.ui").nav_prev()<CR>')

km.set("n", "<leader>1", ':lua require("harpoon.ui").nav_file(1)<CR>')
km.set("n", "<leader>2", ':lua require("harpoon.ui").nav_file(2)<CR>')
km.set("n", "<leader>3", ':lua require("harpoon.ui").nav_file(3)<CR>')
km.set("n", "<leader>4", ':lua require("harpoon.ui").nav_file(4)<CR>')
km.set("n", "<leader>5", ':lua require("harpoon.ui").nav_file(5)<CR>')
km.set("n", "<leader>6", ':lua require("harpoon.ui").nav_file(6)<CR>')
km.set("n", "<leader>7", ':lua require("harpoon.ui").nav_file(7)<CR>')
km.set("n", "<leader>8", ':lua require("harpoon.ui").nav_file(8)<CR>')
km.set("n", "<leader>9", ':lua require("harpoon.ui").nav_file(9)<CR>')
km.set("n", "<leader>0", ':lua require("harpoon.ui").nav_file(10)<CR>')

-- a bit clunky isn't it? maybe refactor this somehow into the keybindings file
-- at some point 
