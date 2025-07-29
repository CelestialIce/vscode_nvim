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

---

### 3️⃣ 集成你自己的插件配置（例如 GitHub 上的 lazyvim 扩展）

假设你自定义插件托管在：

```
https://github.com/CelestialIce/lazyvim.git
```

#### 所有平台：

```bash
cd ~/.config/nvim/lua/plugins/
git clone https://github.com/CelestialIce/lazyvim.git
cp lazyvim/* .
rm -rf lazyvim
```

#### Windows（PowerShell）：

```powershell
Set-Location "$env:LOCALAPPDATA\nvim\lua\plugins"
git clone https://github.com/CelestialIce/lazyvim.git
Copy-Item lazyvim\* . -Recurse -Force
Remove-Item lazyvim -Recurse -Force
```

---

### 4️⃣ 打开 VSCode，确保 VSCode Neovim 插件启用

1. 安装插件：**VSCode Neovim**
2. 设置 Neovim 路径：

#### Windows 示例：

```powershell
C:\Users\<YourName>\scoop\apps\neovim\current\bin\nvim.exe
```

#### macOS/Linux 示例：

```bash
/usr/local/bin/nvim
# 或通过 `which nvim` 查找
```

---

### ✅ 成功之后你将拥有：

* LazyVim 的美化启动界面和插件系统
* 你自己托管的插件同步进来
* 支持 VSCode Neovim 的行为（映射、命令等）

---

## ✅ 小提示（可选）

> 想要持续同步你的配置？你可以把 `~/.config/nvim` 或 `%LOCALAPPDATA%\nvim` 上传 GitHub：

```bash
cd ~/.config
git init
git remote add origin https://github.com/YOUR_USERNAME/vscode_nvim.git
git add nvim
git commit -m "init LazyVim with custom plugins"
git push -u origin master
```

---

需要我把这份教程也写入你的 `README.md` 吗？还是帮你打包一份一键 PowerShell / Bash 脚本？
