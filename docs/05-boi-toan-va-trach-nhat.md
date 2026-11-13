# 05. Bói toán và Trạch Nhật (chọn ngày)

## Bói toán (卜) — theo bat-tu-dung-than

Repo `bat-tu-dung-than` triển khai các môn bói sau (tóm tắt theo README gốc):

| Môn | Ghi chú theo tác giả |
|-----|----------------------|
| Mai Hoa Dịch Số (梅花易数) | Gieo theo giờ hoặc theo số, luận quẻ (truyền thuyết Thiệu Ung) |
| Lục Diệu (六爻) | Bói quẻ 6 hào theo Dịch |
| Kỳ Môn Độn Giáp (奇门遁甲) | Xếp bàn kỳ môn |
| Đại Lục Nhâm (大六壬) | Xếp bàn lục nhâm |
| Trắc Tự / Chảm Tự (测字) | Bói qua chữ Hán, gỡ chữ |
| Nhất Chưởng Kinh (一掌经) | Bói Phật giáo cổ, 4 cung niên/nguyệt/nhật/thời |

Các nguồn Python trong dự án không triển khai các môn bói này.

## Trạch Nhật (择日) — chọn ngày giờ tốt

Theo README của `bat-tu-dung-than`, các yếu tố chọn ngày gồm:

- Thiên Xá, Tứ Đức, Thiên Y, Nguyệt Ân, Thiên Nguyện (cát thần);
- Hung nhật; Hoàng Đạo Thập Nhị Thần (12 vị thần Hoàng Đạo).

`TuViMCP` cũng có một phần xem ngày giờ tốt (Hoàng Đạo/Hắc Đạo, 12 Trực,
28 Tú) trong module `_auspicious.py` — xem `docs/02-tu-vi-dau-so.md`.
Hai nguồn dùng hệ tiêu chí khác nhau nên kết quả chọn ngày có thể không trùng nhau.

## Lưu ý

- Bói toán và chọn ngày mang tính tham khảo tín ngưỡng; không dùng làm căn cứ
  duy nhất cho quyết định quan trọng.
- Dự án này không kiểm chứng độ chính xác của các thuật toán gieo quẻ/xếp bàn.
