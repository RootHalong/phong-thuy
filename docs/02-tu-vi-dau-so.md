# 02. Tử Vi Đẩu Số — lasotuvi và TuViMCP

Tử Vi Đẩu Số lập lá số từ ngày, giờ, tháng, năm sinh (âm lịch) rồi an các sao
vào 12 cung: Mệnh, Huynh Đệ, Phu Thê, Tử Tức, Tài Bạch, Tật Ách, Thiên Di,
Nô Bộc, Quan Lộc, Điền Trạch, Phúc Đức, Phụ Mẫu. Luận giải dựa vào vị trí sao,
sự kết hợp sao (cách cục) và vận hạn theo thời gian.

## lasotuvi — thư viện an sao gốc (Python, MIT, từ 2016)

- Repo: https://github.com/doanguyen/lasotuvi — 25 file, 5.858 KB, 50 sao / 70 fork.
- Chỉ có **API an sao**, không có giao diện trong repo. Muốn có web/app phải tự
  làm frontend hoặc dùng repo riêng `lasotuvi-django` của cùng tác giả.
- Module chính: `AmDuong.py` (âm dương/can chi), `App.py` (API lập lá số),
  `DiaBan.py` (địa bàn 12 cung), `ThienBan.py` (thiên bàn), `Sao.py` (các sao),
  `Lich_HND.py` / `Lich_EPHEM.py` (đổi lịch âm – dương).
- Phù hợp khi: cần thuật toán an sao gọn, nhẹ, giấy phép MIT thoáng, để nhúng
  vào một ứng dụng khác của mình.

## TuViMCP — MCP server Tử Vi cho LLM (Python, Apache-2.0, từ 2026)

- Repo: https://github.com/nmhaaa3218/TuViMCP — 139 file, 13.364 KB, 7 sao / 6 fork.
- Trang chủ https://tuvi-mcp.vercel.app/ ; tài liệu https://tuvimcp.readthedocs.io/en/latest/ ;
  gói PyPI `tuvi-mcp-server`.
- Khác `lasotuvi` ở chỗ đây là **máy chủ MCP hoàn chỉnh**, sinh lá số rồi trả về
  JSON sạch để các trợ lý AI (LLM agent) đọc và luận giải, chứ không chỉ là thư viện.
- Tính năng nổi bật:
  - Lập lá số từ ngày sinh dương hoặc âm, hơn 100 sao, 12 cung.
  - Nhận diện **51 Cách Cục** (Trung Châu Phái) kèm mô tả, cổ ca, bình chú.
  - Vẽ ảnh lá số (màu theo Ngũ Hành, khung Tuần/Triệt).
  - Vận hạn: sao lưu, Đại Hạn 10 năm, Tiểu Hạn, Nguyệt Hạn, Nhật Hạn.
  - Xem ngày giờ tốt, chuyển đổi lịch, ngày lễ Việt Nam.
- Lưu ý: thư mục `tuvi_mcp/_engine/` có các file trùng tên với `lasotuvi`
  (AmDuong, App, DiaBan, Lich_EPHEM, Lich_HND, Sao, ThienBan). Mối quan hệ chính
  xác chưa được đối chiếu từng dòng — xem `GHI-CHU-BAN-QUYEN.md`.

## bat-tu-dung-than cũng có Tử Vi

Trong `bat-tu-dung-than`, Tử Vi là 1 trong 3 nhánh Mệnh (cùng Bát Tự và
Thất Chính Tứ Dư): 12 cung, 14 chính tinh, Tứ Hóa (Hóa Lộc/Quyền/Khoa/Kỵ),
lưu niên Tứ Hóa, độ sáng sao theo miếu vượng. Đây là bản web tương tác,
không phải thư viện Python.

## Đối chiếu nhanh

| Tiêu chí | lasotuvi | TuViMCP | bat-tu-dung-than (phần Tử Vi) |
|----------|----------|---------|-------------------------------|
| Dạng | Thư viện/API Python | MCP server Python + JSON | Ứng dụng web JavaScript |
| Giấy phép | MIT | Apache-2.0 | Chưa công bố |
| Giao diện | Không (cần tự làm) | JSON + ảnh lá số | Web đầy đủ |
| Cách cục | An sao cơ bản | 51 Cách Cục | Cục hình, song tinh, tam hợp |
| Vận hạn | Không rõ trong README | Có, đầy đủ 4 tầng | Có (qua Bát Tự/Tử Vi) |
| Dùng cho | Nhúng vào app riêng | Cho AI luận giải | Người dùng cuối xem trực tiếp |
