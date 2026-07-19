#!/bin/bash
# Minecraft 1.12.2 Web Edition - Linux/macOS 启动脚本

echo "========================================"
echo "  Minecraft 1.12.2 - Web Edition"
echo "========================================"
echo ""

# Find Python
if command -v python3 &>/dev/null; then
    PYTHON=python3
elif command -v python &>/dev/null; then
    PYTHON=python
else
    echo "[错误] 未找到 Python！请先安装 Python 3："
    echo "  Ubuntu/Debian: sudo apt install python3"
    echo "  Fedora:        sudo dnf install python3"
    echo "  macOS:         brew install python3"
    echo ""
    exit 1
fi

echo "正在启动服务器..."
echo "服务器地址: http://localhost:8080/mc1122-web.html"
echo "按 Ctrl+C 可停止服务器"
echo ""

# Open browser
if command -v xdg-open &>/dev/null; then
    xdg-open "http://localhost:8080/mc1122-web.html" &>/dev/null &
elif command -v open &>/dev/null; then
    open "http://localhost:8080/mc1122-web.html" &
elif command -v sensible-browser &>/dev/null; then
    sensible-browser "http://localhost:8080/mc1122-web.html" &
fi

exec $PYTHON -m http.server 8080
