## 🧠 傻瓜式自动配置 VSCode + LazyVim（含 Windows 支持）

---

### 1️⃣ 备份现有 Neovim 配置（跨平台）

#### 🐧 macOS / Linux：

```bash
# 备份 Neovim 配置和状态数据
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak
mv ~/.local/state/nvim ~/.local/state/nvim.bak
mv ~/.cache/nvim ~/.cache/nvim.bak
```

#### 🪟 Windows（PowerShell）：

```powershell
# 备份 Neovim 配置和状态（路径不同）
Rename-Item "$env:LOCALAPPDATA\nvim" "$env:LOCALAPPDATA\nvim.bak" -ErrorAction SilentlyContinue
Rename-Item "$env:LOCALAPPDATA\nvim-data" "$env:LOCALAPPDATA\nvim-data.bak" -ErrorAction SilentlyContinue
Rename-Item "$env:LOCALAPPDATA\nvim-data\state" "$env:LOCALAPPDATA\nvim-data\state.bak" -ErrorAction SilentlyContinue
Rename-Item "$env:LOCALAPPDATA\nvim-data\cache" "$env:LOCALAPPDATA\nvim-data\cache.bak" -ErrorAction SilentlyContinue
```

---

### 2️⃣ 下载 LazyVim Starter 模板配置

#### 所有平台：

```bash
# 克隆 LazyVim Starter 到 nvim 配置目录
git clone https://github.com/LazyVim/starter ~/.config/nvim

# 删除原始 git 信息，准备自定义版本
rm -rf ~/.config/nvim/.git
```

#### Windows（PowerShell）对应路径：

```powershell
git clone https://github.com/LazyVim/starter "$env:LOCALAPPDATA\nvim"
Remove-Item "$env:LOCALAPPDATA\nvim\.git" -Recurse -Force
```
### ✅ 成功之后你将拥有：

* LazyVim 的美化启动界面和插件系统
* 你自己托管的插件同步进来
* 支持 VSCode Neovim 的行为（映射、命令等）

