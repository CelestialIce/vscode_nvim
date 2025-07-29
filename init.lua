-- 设置 leader 键为空格
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- 快捷函数定义
local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- 空格键不执行任何操作（防止默认行为）
keymap("n", "<Space>", "", opts)

-- 通用快捷键（无论是否在 VSCode）
keymap({ "n", "v" }, "<leader>y", '"+y', opts)  -- 复制到系统剪贴板
keymap({ "n", "v" }, "<leader>p", '"+p', opts)  -- 粘贴系统剪贴板
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)
keymap("v", "J", ":m .+1<CR>==", opts)
keymap("v", "K", ":m .-2<CR>==", opts)
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("v", "p", '"_dP', opts)
keymap("n", "<Esc>", "<Esc>:noh<CR>", opts)

-- 判断是否在 VSCode 中运行
if vim.g.vscode then
  require("user.vscode_keymaps")  -- 包含 vscode 的快捷键
else
  -- 这里可加载其他插件，如 lazy.nvim 或 packer
end
