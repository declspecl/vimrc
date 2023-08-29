-- -- -- -- -- -- -- --
--  config/keys.lua  --
-- -- -- -- -- -- -- --

-- -- -- -- -- -- -- --
--  options objects  --
-- -- -- -- -- -- -- --
local opts = { noremap = true }
local sopts = { noremap = true, silent = true }

-- -- -- -- -- -- -- -- --
--   leader key setup   --
-- -- -- -- -- -- -- -- --
vim.g.mapleader = " "
vim.keymap.set("n", "<Space>", "<Nop>", sopts)

-- -- -- -- -- -- -- --
-- editing shortcuts --
-- -- -- -- -- -- -- --
vim.keymap.set("n", "<C-c>", "cc", sopts)
vim.keymap.set("n", "<C-d>", "dd", sopts)

-- -- -- -- -- -- -- -- -- -- -- --
--   file navigation shortcuts   --
-- -- -- -- -- -- -- -- -- -- -- --
vim.keymap.set("n", "<C-k>", "<C-u>zz", sopts)
vim.keymap.set("n", "<C-j>", "<C-d>zz", sopts)
vim.keymap.set("n", "<C-e>", "<Cmd>Explore<CR>", sopts)

-- -- -- -- -- -- --
-- misc shortcuts --
-- -- -- -- -- -- --
vim.keymap.set("n", "<C-u>", "<Cmd>nohl<CR>", sopts)

-- -- -- -- -- -- -- -- --
--  telescope keybinds  --
-- -- -- -- -- -- -- -- --
vim.keymap.set("n", "<leader>ff",	"<Cmd>Telescope find_files<CR>",	sopts)
vim.keymap.set("n", "<C-f>",		"<Cmd>Telescope find_files<CR>",	sopts)
vim.keymap.set("n", "<leader>fg",	"<Cmd> Telescope live_grep<CR>",	sopts)
vim.keymap.set("n", "<leader>fb", 	"<Cmd> Telescope buffers<CR>",		sopts)
vim.keymap.set("n", "<leader>fh", 	"<Cmd> Telescope help_tags<CR>",	sopts)

-- -- -- -- -- -- -- -- --
--   harpoon keybinds   -- 
-- -- -- -- -- -- -- -- --
local wait_1ms = "<Cmd>sleep 1m<CR>"

local harpoon_nav_string = function(slot_num)
	return "<Cmd>lua require('harpoon.ui').nav_file(" .. slot_num .. ")<CR>"
end

vim.keymap.set("n", "<leader>hh", "<Cmd>lua require('harpoon.ui').toggle_quick_menu()<CR>",  opts)
vim.keymap.set("n", "<leader>ha", "<Cmd>lua require('harpoon.mark').add_file()<CR>",  opts)
vim.keymap.set("n", "<leader>1", harpoon_nav_string(1) .. wait_1ms .. "zz", opts)
vim.keymap.set("n", "<leader>2", harpoon_nav_string(2) .. wait_1ms .. "zz", opts)
vim.keymap.set("n", "<leader>3", harpoon_nav_string(3) .. wait_1ms .. "zz", opts)
vim.keymap.set("n", "<leader>4", harpoon_nav_string(4) .. wait_1ms .. "zz", opts)
vim.keymap.set("n", "<leader>5", harpoon_nav_string(5) .. wait_1ms .. "zz", opts)
vim.keymap.set("n", "<leader>6", harpoon_nav_string(6) .. wait_1ms .. "zz", opts)
