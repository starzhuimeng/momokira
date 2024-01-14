local M = {}

local opt = { noremap = true, silent = true }
local map = vim.keymap.set
vim.g.mapleader = " "
vim.g.maplocalleader = " "
-- 光标移动
map("n", "<C-h>", "<C-w>h", opt)
map("n", "<C-j>", "<C-w>j", opt)
map("n", "<C-k>", "<C-w>k", opt)
map("n", "<C-l>", "<C-w>l", opt)
map("i", "<C-j>", "<Down>", opt)
map("i", "<C-k>", "<Up>", opt)
map("i", "<C-h>", "<Left>", opt)
map("i", "<C-l>", "<Right>", opt)
map("n", "<A-h>", "^", opt)
map("n", "<A-l>", "$", opt)
map("v", "<A-h>", "^", opt)
map("v", "<A-l>", "$", opt)
-- 剪切板
map("n", "y", '"+y', opt)
map("v", "y", '"+y', opt)
map("n", "p", '"+p', opt)
map("v", "p", '"+p', opt)
--·Allow·clipboard·copy·paste·in·neovim
map("", "<D-v>", "+p<CR>", opt)
map("!", "<D-v>", "<C-R>+", opt)
map("t", "<D-v>", "<C-R>+", opt)
map("v", "<D-v>", "<C-R>+", opt)
-- 比例控制
map("n", "<C-Left>", ":vertical resize -2<CR>", opt)
map("n", "<C-Right>", ":vertical resize +2<CR>", opt)
map("n", "<C-Down>", ":resize +2<CR>", opt)
map("n", "<C-Up>", ":resize -2<CR>", opt)
-- 退出
map("n", "<C-q>", "<Esc><Esc>:qa<CR>", opt)
map("n", "qq", "<Esc><Esc>:q<CR>", opt)
map("n", "q", "<Esc><Esc>:q<CR>", opt)
-- 保存
map("n", "<C-s>", "<Esc><Esc>:w<CR>", opt)
map("i", "<C-s>", "<Esc><Esc>:w<CR>", opt)
map("v", "<C-s>", "<Esc><Esc>:w<CR>", opt)
-- 全选
map("n", "<C-a>", "ggVG", opt)
map("v", "<C-a>", "ggVG", opt)
-- 文件树
map("n", "<leader>e", ":Neotree toggle<CR>", opt)
-- commend
map("n", ";", ":", opt)
map("v", ";", ":", opt)
-- comment
map("n", "<C-/>", "gcc", opt)
map("n", "<C-/>", "gc", opt)
-- 粘贴
-- map("v", "p", '"_dP', opt)
-- visual模式下缩进代码
map("v", "<", "<gv", opt)
map("v", ">", ">gv", opt)
-- 上下移动选中文本
-- map("v", "J", ":move '>+1<CR>gv-gv", opt)
-- map("v", "K", ":move '<-2<CR>gv-gv", opt)
-- 移动代码
map("n", "<M-j>", ":m .+1<CR>==", opt)
map("n", "<M-k>", ":m .-2<CR>==", opt)
-- Terminal相关
-- map("n", "<leader>t", ":sp | terminal<CR>", opt)
-- map("n", "<leader>vt", ":vsp | terminal<CR>", opt)
-- map("t", "<Esc>", "<C-\\><C-n>", opt)
-- map("t", "<A-h>", [[ <C-\><C-N><C-w>h ]], opt)
-- map("t", "<A-j>", [[ <C-\><C-N><C-w>j ]], opt)
-- map("t", "<A-k>", [[ <C-\><C-N><C-w>k ]], opt)
-- map("t", "<A-l>", [[ <C-\><C-N><C-w>l ]], opt)
-- lazygit
map("n", "<leader>gg", ":LazyGit<CR>", opt)

map("n", "H", ":BufferLineCyclePrev<CR>", opt)
map("n", "L", ":BufferLineCycleNext<CR>", opt)
map("n", "C", ":Bdelete!<CR>", opt)

-- telescope
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fw", builtin.live_grep, {})
vim.keymap.set("n", "<leader>fc", builtin.commands, {})
vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})
vim.keymap.set("n", "<leader>fm", builtin.man_pages, {})
vim.keymap.set("n", "<leader>ft", builtin.treesitter, {})
vim.keymap.set("n", "<leader>fk", builtin.keymaps, {})

--which-key
map("n", "<leader>", ":WhichKey<CR>", opt)
