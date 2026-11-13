#!/bin/bash
# Kiểm tra nhanh 4 repo gốc của Dự án Phong Thủy còn truy cập được hay không.
# Chỉ gọi GitHub API (HEAD), không tải mã nguồn.
set -u
for repo in godvstoaa/bat-tu-dung-than nmhaaa3218/TuViMCP doanguyen/lasotuvi voidforall/fengshui.skill; do
  code=$(curl -s -o /dev/null -w "%{http_code}" --max-time 15 "https://api.github.com/repos/$repo")
  echo "$repo -> HTTP $code"
done
