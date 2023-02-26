-- 映射按键的选项, noremap 为非递归映射
local opts = { noremap = true, silent = true }

-- 让keymap 和 vim.api.nvim_set_keymap 等效, 不用每次输入一长串
local keymap = vim.api.nvim_set_keymap

-- 将 space 键设置为 leader 键: core 文件已经设置
-- vim.g.mapleader = " "
-- vim.g.maplocalleader = " "

-- 模式:
-- 普通模式 = "n",
-- 插入模式 = "i",
-- 选中模式 = "v",
-- 区块选中 = "x",
-- 终端模式 = "t",
-- 命令模式 = "c",

-- 例如将输入模式的 jk 按键映射为 <esc>
-- keymap("i", "jk", "<esc>", opts)

---------- 普通模式 ----------

---------- 插入模式 ----------

---------- 选中模式 ----------

---------- 区块选中 ----------

---------- 终端模式 ----------

---------- 命令模式 ----------


