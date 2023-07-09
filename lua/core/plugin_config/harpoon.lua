local mark = require("harpoon.mark")
local ui = require("harpoon.ui")
local tmux = require("harpoon.tmux")

vim.keymap.set("n", "<leader>a", mark.add_file)
vim.keymap.set("n", "<leader>e", ui.toggle_quick_menu)

vim.keymap.set("n", "<space>j", function() ui.nav_file(1) end)
vim.keymap.set("n", "<leader>k", function() ui.nav_file(2) end)
vim.keymap.set("n", "<leader>l", function() ui.nav_file(3) end)
vim.keymap.set("n", "<leader>;", function() ui.nav_file(4) end)

--Gradle run and test
vim.keymap.set("n", "<leader>t", function() tmux.sendCommand("%1", "gt\r") end)
vim.keymap.set("n", "<leader>T", function() tmux.sendCommand("%1", "gt \033[A \r") end)

vim.keymap.set("n", "<leader>r", function() tmux.sendCommand("%1", "gr\r") end)
vim.keymap.set("n", "<leader>R", function() tmux.sendCommand("%1", "gr \033[A \r") end)
