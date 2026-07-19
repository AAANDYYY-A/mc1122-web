@echo off
chcp 65001 > nul
title Minecraft 1.12.2 Web Edition
echo ========================================
echo   Minecraft 1.12.2 - Web Edition
echo ========================================
echo.
echo 正在启动本地服务器...

:: Try python3 first, then python
python3 --version >nul 2>&1
if %errorlevel%==0 (
    set PYTHON=python3
) else (
    python --version >nul 2>&1
    if %errorlevel%==0 (
        set PYTHON=python
    ) else (
        echo [错误] 未找到 Python！请先安装 Python 3：
        echo https://www.python.org/downloads/
        echo.
        pause
        exit /b 1
    )
)

echo 服务器地址: http://localhost:8080/mc1122-web.html
echo 按 Ctrl+C 可停止服务器
echo.

start "" http://localhost:8080/mc1122-web.html

%PYTHON% -m http.server 8080

pause
