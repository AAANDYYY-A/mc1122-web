# 🟫 Minecraft 1.12.2 - Web Edition

纯 JavaScript + Three.js 实现的 Minecraft 1.12.2 网页版，**单 HTML 文件**即可运行。

> 基于 Bare Bones 材质包配色 · 支持桌面端与手机触屏

## 🚀 快速开始

直接浏览器打开 `index.html`，或启动本地服务器：

```bash
python3 -m http.server 8080
# 访问 http://localhost:8080
```

## ✨ 核心功能

### 🌍 世界生成
- Simplex 3D 噪声无限世界 · 15 种生物群系
- 平原 / 森林 / 黑森林 / 沙漠 / 山地 / 针叶林 / 积雪针叶林 / 沼泽 / 冰原 / 恶地 / 丛林 / 热带草原 / 海洋 / 河流 / 海滩
- 洞穴系统 · 矿石按深度分布（煤铁金钻红石青金绿宝石）

### 🧱 101 种方块
石头 · 草方块 · 泥土 · 圆石 · 木板 · 橡木 · 树叶 · 玻璃 · 沙子 · 沙砾 · 砂岩 · 砖块 · 黑曜石 · 基岩 · 冰 · 雪 · 粘土 · 下界岩 · 灵魂沙 · 萤石 · 末地石 · 工作台 · 熔炉 · 箱子 · 附魔台 · 铁砧 · 发射器 · 活塞 · 粘性活塞 · 红石灯 · 音符盒 · 各种矿石...

### 🎮 操作
| 操作 | 桌面 | 手机 |
|------|------|------|
| 移动 | WASD | 虚拟摇杆 |
| 跳跃 | 空格 | ▲ 按钮 |
| 挖掘 | 鼠标左键 | ⛏ 按钮 |
| 放置 | 鼠标右键 | 🧱 按钮 |
| 物品栏 | E | 📦 按钮 |
| 暂停 | ESC | ⏸ 按钮 |
| 切换模式 | F6 | 🕊 按钮 |
| 聊天/命令 | T | 💬 按钮 |
| 视角 | F5 | 滑动屏幕 |

### ⚡ 命令
`/gamemode creative|survival` · `/time day|night` · `/tp x y z` · `/seed`

### 💾 存档系统
- 类 NBT 结构（`level.dat` + `level.dat_old` 自动备份）
- IndexedDB 持久化 · 多世界支持
- 区块按需加载/卸载 · 离开视距自动写入存储

## 🛠 技术亮点

| 技术 | 说明 |
|------|------|
| **渲染** | Three.js r157 · 索引化合并 BufferGeometry · 双面半透明 |
| **性能** | 面剔除 · 区块合并（每区块 ≤3 Draw Call） · GPU 几何体释放 |
| **存储** | IndexedDB 双库（世界存档 + 区块持久化） |
| **材质** | Bare Bones 1.11-1.12 纹理包采色 · 草方块多面着色 |
| **碰撞** | AABB 玩家碰撞 · 树叶实体碰撞箱 |

## 📱 移动端适配
- 虚拟摇杆 + 触控按钮 UI
- 屏幕滑动控制视角
- 响应式布局（768px 断点）
- 自动检测触屏设备

## 🔧 开发

```bash
# 任何静态服务器即可
python3 -m http.server 8080
npx serve .
```

直接编辑 `index.html` — 单文件包含全部 HTML/CSS/JS。

---
*Minecraft is a trademark of Mojang/Microsoft. This is a fan project for educational purposes.*
