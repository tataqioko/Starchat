@echo off
chcp 65001 >nul
title starchat - AI角色扮演聊天应用启动器

echo.
echo ========================================
echo    starchat - AI角色扮演聊天应用
echo ========================================
echo.
echo 正在启动本地服务器...
echo.

REM 检查Python是否可用
python --version >nul 2>&1
if %errorlevel% == 0 (
    echo 使用Python启动HTTP服务器...
    echo 服务器地址: http://localhost:8000
    echo.
    echo 提示：
    echo - 服务器启动后，浏览器会自动打开应用
    echo - 按 Ctrl+C 可以停止服务器
    echo - 关闭此窗口也会停止服务器
    echo.
    
    REM 延迟3秒后打开浏览器
    start "" cmd /c "timeout /t 3 /nobreak >nul && start http://localhost:8000"
    
    REM 启动Python HTTP服务器
    python -m http.server 8000
) else (
    echo 错误：未找到Python！
    echo.
    echo 请安装Python或使用以下替代方法：
    echo.
    echo 方法1：使用Node.js
    echo   npx http-server -p 8000
    echo.
    echo 方法2：使用PHP
    echo   php -S localhost:8000
    echo.
    echo 方法3：使用Visual Studio Code
    echo   安装Live Server扩展，右键index.html选择"Open with Live Server"
    echo.
    pause
)