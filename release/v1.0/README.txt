# Minecraft 1.12.2 Web Edition - 正式版 v1.0

## 文件说明

| 文件 | 说明 |
|------|------|
| mc1122-web.html | 游戏本体（单文件，包含全部代码） |
| start.bat | Windows 一键启动脚本 |
| start.sh | Linux / macOS 一键启动脚本 |
| start-android.sh | Android (Termux) 一键启动脚本 |

## 一键启动（推荐）

### Windows
双击 `start.bat`，自动打开浏览器进入游戏。

### Linux / macOS
```bash
chmod +x start.sh
./start.sh
```

### Android
1. 安装 Termux（F-Droid 或 GitHub 下载）
2. 在 Termux 中运行：
```bash
pkg install python termux-api
cd /sdcard/mc1122-web-release
bash start-android.sh
```

## 手动启动

如果脚本无法使用，手动操作：

1. 在此目录打开终端/命令行
2. 运行：`python3 -m http.server 8080`
3. 浏览器打开：`http://localhost:8080/mc1122-web.html`

## 系统要求

- Python 3.x（启动本地服务器用）
- 现代浏览器（Chrome / Firefox / Edge / Safari）
- 无需下载任何其他依赖

## 功能概览

- 🎮 生存 + 创造双模式
- 🌍 Simplex 噪声无限世界 · 15 种生物群系
- 🧱 101 种方块 · 50+ 物品 · 工具/武器/盔甲
- 🎨 完整创造模式背包（12 分类标签 + 搜索）
- 💾 IndexedDB 存档（多世界 + 自动保存）
- 📱 手机触屏适配（虚拟摇杆 + 全屏横屏）
- 🌧 天气系统（晴/雨/雷暴）
- ⚔ 敌对生物（僵尸/骷髅/苦力怕/蜘蛛/末影人）
- 🐮 友好生物（猪/牛/羊/鸡/村民）
- 🔥 熔炉烧炼系统
- 🏹 远程攻击（弓箭）

## 操作

| 操作 | 桌面 | 手机 |
|------|------|------|
| 移动 | WASD | 虚拟摇杆 |
| 跳跃 | 空格 | ▲ 按钮 |
| 挖掘/攻击 | 左键 | ⛏ 按钮 |
| 放置/交互 | 右键 | 🧱 按钮 |
| 丢弃 | Q | 📤 按钮 |
| 物品栏 | E | 📦 按钮 |
| 全屏 | F11 | ⛶ 按钮 |
| 暂停 | ESC | ⏸ 按钮 |
| 创造/生存 | F6 | 🕊 按钮 |
| 设置 | 开始界面 | 开始界面 |

## 更新日志

- v1.0: 创造模式背包 · 设置面板(区块/亮度/终为白日) · 丢弃物品 · 全屏模式 · 手机适配完善 · 自动保存 · 新建存档
