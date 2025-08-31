@echo off
chcp 65001 >nul
title StarChat 开发服务器

echo.
echo ================================================================
echo                        StarChat 开发环境
echo ================================================================
echo.
echo 正在启动 StarChat 应用...
echo.

REM 获取当前目录
set "PROJECT_DIR=%~dp0"
cd /d "%PROJECT_DIR%"

echo 项目目录: %PROJECT_DIR%
echo.

REM 检查是否有 Python
python --version >nul 2>&1
if %errorlevel% neq 0 (
    echo [错误] 未找到 Python，请安装 Python 3.x
    echo 下载地址: https://www.python.org/downloads/
    echo.
    pause
    exit /b 1
)

echo [✓] Python 环境检查通过
echo.

REM 检查是否有 Node.js (可选)
node --version >nul 2>&1
if %errorlevel% equ 0 (
    echo [✓] Node.js 环境可用
) else (
    echo [!] Node.js 未安装 (可选)
)
echo.

REM 获取本机 IP 地址
for /f "tokens=2 delims=:" %%a in ('ipconfig ^| findstr /c:"IPv4"') do (
    set "LOCAL_IP=%%a"
    goto :found_ip
)
:found_ip
set "LOCAL_IP=%LOCAL_IP: =%"

echo ================================================================
echo                        服务器信息
echo ================================================================
echo 本地访问地址: http://localhost:8000
echo 网络访问地址: http://%LOCAL_IP%:8000
echo.
echo 手机访问: 确保手机和电脑在同一WiFi网络下
echo 然后在手机浏览器输入: http://%LOCAL_IP%:8000
echo.
echo ================================================================
echo                        使用说明
echo ================================================================
echo 1. 服务器启动后会自动打开浏览器
echo 2. 可以测试所有 StarChat 功能
echo 3. 主屏幕时间显示会自动同步系统时间
echo 4. 输入 'q' 然后按回车键退出服务器
echo.
echo ================================================================
echo.

REM 启动 Python HTTP 服务器
echo [启动] 正在启动 Python HTTP 服务器...
echo.

REM 在后台启动服务器
start "" /min cmd /c "python -m http.server 8000"

REM 等待服务器启动
timeout /t 3 /nobreak >nul

REM 自动打开浏览器
echo [启动] 正在打开浏览器...
start "" "http://localhost:8000"

echo.
echo ================================================================
echo                     服务器运行中...
echo ================================================================
echo.
echo StarChat 已启动! 浏览器应该已经自动打开
echo.
echo 如果浏览器没有自动打开，请手动访问:
echo http://localhost:8000
echo.
echo ----------------------------------------------------------------
echo 测试功能:
echo ----------------------------------------------------------------
echo ✓ 主屏幕时间显示 (自动同步系统时间)
echo ✓ 聊天功能 (需要配置 AI API)
echo ✓ 个性化设置 (主题、壁纸等)
echo ✓ 音乐功能 (需要 Spotify 授权)
echo ✓ 世界书系统
echo ✓ 角色管理
echo ✓ 动态朋友圈
echo ✓ PWA 功能 (可添加到桌面)
echo.
echo ----------------------------------------------------------------
echo.

:input_loop
set /p user_input="输入 'q' 退出服务器, 或按回车继续运行: "

if /i "%user_input%"=="q" (
    goto :shutdown
)

if /i "%user_input%"=="quit" (
    goto :shutdown
)

if /i "%user_input%"=="exit" (
    goto :shutdown
)

if "%user_input%"=="" (
    echo.
    echo 服务器继续运行中... 访问地址: http://localhost:8000
    echo.
    goto :input_loop
)

echo.
echo 无效输入。输入 'q' 退出，或直接按回车继续。
echo.
goto :input_loop

:shutdown
echo.
echo ================================================================
echo                        正在关闭服务器...
echo ================================================================
echo.

REM 终止 Python HTTP 服务器进程
echo [关闭] 正在停止 HTTP 服务器...
taskkill /f /im python.exe >nul 2>&1

echo [✓] 服务器已关闭
echo.
echo 感谢使用 StarChat!
echo.
echo ================================================================
echo                        程序已退出
echo ================================================================
echo.
pause