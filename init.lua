--    / /   ____  ____ | |  / (_)___ ___
--   / /   / __ \/ __ `/ | / / / __ `__ \
--  / /___/ /_/ / /_/ /| |/ / / / / / / /
-- /_____/\____/\__, / |___/_/_/ /_/ /_/
--             /____/

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("options")
require("globals")
require("autocmds")
require("keymaps")

require("lazy").setup("plugins")
