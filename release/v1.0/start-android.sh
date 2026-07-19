#!/bin/bash
# Minecraft 1.12.2 Web Edition - Android (Termux) 启动脚本
# 使用前请先在 Termux 中运行: pkg install python

echo "========================================"
echo "  Minecraft 1.12.2 - Web Edition"
echo "  Android (Termux)"
echo "========================================"
echo ""

# Find Python
if command -v python3 &>/dev/null; then
    PYTHON=python3
elif command -v python &>/dev/null; then
    PYTHON=python
else
    echo "[错误] 未找到 Python！"
    echo "请在 Termux 中运行: pkg install python"
    echo ""
    exit 1
fi

echo "正在启动服务器..."
echo "地址: http://localhost:8080/mc1122-web.html"
echo "按 Ctrl+C 可停止服务器"
echo ""

# Try to open browser
if command -v termux-open-url &>/dev/null; then
    sleep 1
    termux-open-url "http://localhost:8080/mc1122-web.html" &
elif command -v am &>/dev/null; then
    sleep 1
    am start -a android.intent.action.VIEW -d "http://localhost:8080/mc1122-web.html" &
fi

exec $PYTHON -m http.server 8080
