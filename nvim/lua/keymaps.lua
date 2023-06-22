local opts = { noremap = true, silent = true }

local keymap = vim.keymap.set

-- 取消一些按键的作用
keymap("", "<Space>", "<Nop>", opts)
keymap("", "s", "<Nop>", opts)
keymap("", "S", "<Nop>", opts)
keymap("", "x", "<Nop>", opts)
keymap("", "r", "<Nop>", opts)
keymap("", "Q", "<Nop>", opts)
keymap("", "<cr>", "<Nop>", opts)

-- 将 space 键设置为 leader 键
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- 模式:
-- 普通模式 = "n",
-- 插入模式 = "i",
-- 选中模式 = "v",
-- 区块选中 = "x",
-- 终端模式 = "t",
-- 命令模式 = "c",


-- 保存与退出
keymap("n", "S", ":w<cr>", opts)
keymap("n", "Q", ":q<cr>", opts)
keymap("v", "S", ":w<cr>", opts)
keymap("v", "Q", ":q<cr>", opts)


-- 宏录制
-- keymap("n", "q", "@", opts)
-- keymap("n", "<leader>q", "q", opts)


-- 窗口导航
keymap("n", "<leader>h", "<c-w>h", opts) -- 聚焦到左边窗口
keymap("n", "<leader>j", "<c-w>j", opts) -- 聚焦到下边窗口
keymap("n", "<leader>k", "<c-w>k", opts) -- 聚焦到上边窗口
keymap("n", "<leader>l", "<c-w>l", opts) -- 聚焦到右边窗口
keymap("n", "<leader>H", "<c-w>H", opts) -- 将当前窗口切换到左边
keymap("n", "<leader>J", "<c-w>J", opts) -- 将当前窗口切换到下边
keymap("n", "<leader>K", "<c-w>K", opts) -- 将当前窗口切换到上边
keymap("n", "<leader>L", "<c-w>L", opts) -- 将当前窗口切换到右边


-- 分屏
keymap("n", "sh", ":set nosplitright<cr>:vsplit<cr>", opts) -- 向左边分一块屏
keymap("n", "sj", ":set splitbelow<cr>:split<cr>", opts) -- 向下边分一块屏
keymap("n", "sk", ":set nosplitbelow<cr>:split<cr>", opts) -- 向上边分一块屏
keymap("n", "sl", ":set splitright<cr>:vsplit<cr>", opts) -- 向右边分一块屏


-- 通过方向键重新设置窗口大小
keymap("n", "<c-up>", ":resize -2<cr>", opts)
keymap("n", "<c-down>", ":resize +2<cr>", opts)
keymap("n", "<c-left>", ":vertical resize -2<cr>", opts)
keymap("n", "<c-right>", ":vertical resize +2<cr>", opts)


-- buffers 导航
keymap("n", "bj", ":bnext<cr>", opts)
keymap("n", "bk", ":bprevious<cr>", opts)

-- tab 导航
keymap("n", "tn", ":tabnew ", opts)
keymap("n", "tj", "gt", opts)
keymap("n", "tk", "gT", opts)

-- 上下移动文本
-- keymap("n", "<A-j>", "<esc>:m .+1<cr>==gi", opts)
-- keymap("n", "<A-k>", "<esc>:m .-2<cr>==gi", opts)

keymap("v", "<a-j>", ":m .+1<cr>==", opts)
keymap("v", "<a-k>", ":m .-2<cr>==", opts)

keymap("x", "<a-j>", ":move \">+1<cr>gv-gv", opts)
keymap("x", "<a-k>", ":move \"<-2<cr>gv-gv", opts)


-- 移动光标
keymap("n", "H", "7h", opts)
keymap("n", "J", "5j", opts)
keymap("n", "K", "5k", opts)
keymap("n", "L", "7l", opts)
keymap("n", "gh", "^", opts)
keymap("n", "gl", "$", opts)

keymap("v", "H", "7h", opts)
keymap("v", "J", "5j", opts)
keymap("v", "K", "5k", opts)
keymap("v", "L", "7l", opts)
keymap("v", "gh", "^", opts)
keymap("v", "gl", "$h", opts)

keymap("i", ";;", "<esc>la", opts)


-- 复制粘贴
keymap("n", "y", "\"+y", opts) -- 小写 y 向后复制到 + 寄存器
keymap("n", "Y", "\"+Y", opts) -- 大写 Y 先前复制到 + 寄存器
keymap("n", "p", "\"+p", opts) -- 小写 p 从 + 寄存器向后粘贴
keymap("n", "P", "\"+P", opts) -- 大写 P 从 + 寄存器向前粘贴
keymap("n", "<leader>y", "y", opts) -- 小写 y 向后复制到 _ 寄存器
keymap("n", "<leader>Y", "Y", opts) -- 大写 Y 先前复制到 _ 寄存器
keymap("n", "<leader>p", "p", opts) -- 小写 p 从 _ 寄存器向后粘贴
keymap("n", "<leader>P", "P", opts) -- 大写 P 从 _ 寄存器向前粘贴

keymap("v", "y", "\"+y", opts) -- 小写 y 向后复制到 + 寄存器
keymap("v", "Y", "\"+Y", opts) -- 大写 Y 先前复制到 + 寄存器
keymap("v", "p", "\"+p", opts) -- 小写 p 从 + 寄存器向后粘贴
keymap("v", "P", "\"+P", opts) -- 大写 P 从 + 寄存器向前粘贴
keymap("v", "<leader>y", "y", opts) -- 小写 y 向后复制到 _ 寄存器
keymap("v", "<leader>Y", "Y", opts) -- 大写 Y 先前复制到 _ 寄存器
keymap("v", "<leader>p", "p", opts) -- 小写 p 从 _ 寄存器向后粘贴
keymap("v", "<leader>P", "P", opts) -- 大写 P 从 _ 寄存器向前粘贴


-- 按 jk 键退出 insert 模式
keymap("i", "jk", "<esc>", opts)
keymap("i", "kj", "<esc>", opts)
keymap("t", "<esc>", "<C-\\><C-N>", opts)


-- 调整缩进
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)


-- 插件区域

-- cmp: 查看 ./conf/cmp.lua 文件

-- telescope
local builtin = require("telescope.builtin")
keymap("n", "<leader>ff", builtin.find_files, opts)
keymap("n", "<leader>fg", builtin.live_grep, opts)
keymap("n", "<leader>fb", builtin.buffers, opts)
keymap("n", "<leader>fh", builtin.help_tags, opts)

-- nvim-tree: 查看 ./conf/nvim-tree 文件
keymap("n", "tt", ":NvimTreeToggle<cr>", opts)

-- nvim-dap
-- 命令添加(即下下面注释的三行): 查看 ./dap/nvim-dap-breakpoints.lua 文件
-- vim.api.nvim_create_user_command("PBToggleBreakpoint", api.toggle_breakpoint, {})
-- vim.api.nvim_create_user_command("PBSetConditionalBreakpoint", api.set_conditional_breakpoint, {})
-- vim.api.nvim_create_user_command("PBClearBreakpoint", api.clear_all_breakpoints, {})
keymap("n", "<f5>", "<Cmd>lua require\"dap\".continue()<CR>", opts)
keymap("n", "<f10>", "<Cmd>lua require\"dap\".step_over()<CR>", opts)
keymap("n", "<f11>", "<Cmd>lua require\"dap\".step_into()<CR>", opts)
keymap("n", "<f12>", "<Cmd>lua require\"dap\".step_out()<CR>", opts)
keymap("n", "<leader>bb", "<Cmd>PBToggleBreakpoint<CR>", opts)
keymap("n", "<leader>bB", "<Cmd>PBSetConditionalBreakpoint<CR>", opts)
keymap("n", "<leader>bdr", "<Cmd>lua require\"dap\".repl.open()<CR>", opts)
keymap("n", "<leader>bdl", "<Cmd>lua require\"dap\".run_last()<CR>", opts)
keymap("n", "<leader>blp", "<Cmd>lua require\"dap\".set_breakpoint(nil, nil, vim.fn.input(\"Log point message: \"))<CR>", opts)

-- mason: 查看 ./lsp/mason.lua 文件


