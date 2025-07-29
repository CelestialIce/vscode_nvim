local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }
local vscode = require("vscode")

-- VSCode 专属快捷键
keymap({ "n", "v" }, "<leader>t", function() vscode.action("workbench.action.terminal.toggleTerminal") end, opts)
keymap({ "n", "v" }, "<leader>b", function() vscode.action("editor.debug.action.toggleBreakpoint") end, opts)
keymap({ "n", "v" }, "<leader>d", function() vscode.action("editor.action.showHover") end, opts)
keymap({ "n", "v" }, "<leader>a", function() vscode.action("editor.action.quickFix") end, opts)
keymap({ "n", "v" }, "<leader>sp", function() vscode.action("workbench.actions.view.problems") end, opts)
keymap({ "n", "v" }, "<leader>cn", function() vscode.action("notifications.clearAll") end, opts)
keymap({ "n", "v" }, "<leader>ff", function() vscode.action("workbench.action.quickOpen") end, opts)
keymap({ "n", "v" }, "<leader>cp", function() vscode.action("workbench.action.showCommands") end, opts)
keymap({ "n", "v" }, "<leader>pr", function() vscode.action("code-runner.run") end, opts)
keymap({ "n", "v" }, "<leader>fd", function() vscode.action("editor.action.formatDocument") end, opts)
keymap({ "n", "v" }, "<leader>e", function() vscode.action("workbench.view.explorer") end, opts)

-- Harpoon 快捷键（vscode-harpoon 插件）
keymap({ "n", "v" }, "<leader>ha", function() vscode.action("vscode-harpoon.addEditor") end, opts)
keymap({ "n", "v" }, "<leader>ho", function() vscode.action("vscode-harpoon.editorQuickPick") end, opts)
keymap({ "n", "v" }, "<leader>he", function() vscode.action("vscode-harpoon.editEditors") end, opts)
for i = 1, 9 do
  keymap({ "n", "v" }, "<leader>h" .. i, function() vscode.action("vscode-harpoon.gotoEditor" .. i) end, opts)
end

-- Project Manager 快捷键
keymap({ "n", "v" }, "<leader>pa", function() vscode.action("projectManager.saveProject") end, opts)
keymap({ "n", "v" }, "<leader>po", function() vscode.action("projectManager.listProjectsNewWindow") end, opts)
keymap({ "n", "v" }, "<leader>pe", function() vscode.action("projectManager.editProjects") end, opts)
