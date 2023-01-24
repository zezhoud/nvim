-- leader
vim.g.mapleader = ' '

local keymap = vim.keymap

-- ---------- 插入模式 ---------- ---
keymap.set("i", "jk", "<ESC>")

-- ---------- 可视模式 ---------- ---
-- 单行或多行移动
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- ---------- 普通模式 ---------- ---
-- 按键
keymap.set("n", "s", "<nop>") -- 关闭s键 
keymap.set("n", "S", ":w<CR>") -- 保存
keymap.set("n", "<leader>w", ":w!<CR>") -- 快速保存
keymap.set("n", "Q", ":q<CR>") -- 退出
keymap.set("n", "<C-q>", ":qa<CR>") -- 退出

-- 移动
keymap.set("n", "J", "5j") -- 光标向下移动5行 
keymap.set("n", "K", "5k") -- 光标向上移动5行 
keymap.set("n", "H", "0") -- 光标移动到行首 
keymap.set("n", "L", "$") -- 光标移动到行尾
keymap.set("n", "W", "5w") -- 光标向后移动5个单词
keymap.set("n", "B", "5b") -- 光标向前移动5个单词
keymap.set("n", "E", "5e") -- 光标向后移动5个单词

-- 窗口
keymap.set("n", "<leader>sv", "<C-w>v") -- 水平新增窗口 
keymap.set("n", "<leader>sh", "<C-w>s") -- 垂直新增窗口

-- 搜索
keymap.set("n", "<leader><CR>", ":nohl<CR>")

-- 切换buffer
keymap.set("n", "<C-L>", ":bnext<CR>")
keymap.set("n", "<C-H>", ":bprevious<CR>")
