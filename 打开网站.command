#!/bin/bash
cd "$(dirname "$0")"

PORT=8765
echo "正在启动 Dessel 官网..."
echo ""
echo "浏览器将自动打开: http://localhost:$PORT"
echo "关闭此窗口即可停止网站预览"
echo ""

open "http://localhost:$PORT"
ruby -run -ehttpd . -p$PORT
