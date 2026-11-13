# 03. Bát Tự / Tứ Trụ và Dụng Thần — phái Tử Bình

Bát Tự (Tứ Trụ) lập 4 trụ Niên – Nguyệt – Nhật – Thời từ ngày giờ sinh, mỗi trụ
gồm 1 Thiên Can + 1 Địa Chi. Luận mệnh theo phái Tử Bình (tên gọi từ sách
《子平真诠》) xoay quanh 3 việc: định **Cách Cục**, định **Dụng Thần** và xem
**Đại Vận / Lưu Niên**.

## Nguồn chính: bat-tu-dung-than

Toàn bộ nội dung dưới đây tóm tắt theo README của repo
https://github.com/godvstoaa/bat-tu-dung-than (JavaScript, chưa có giấy phép —
chỉ tóm tắt, không sao chép mã). Các nguồn Python trong dự án này không làm Bát Tự.

### Lập Tứ Trụ

- 4 trụ theo Thiên Can – Địa Chi, tự nhận tháng nhuận âm lịch.
- Tính Thập Thần, Ngũ Hành vượng suy kèm tỉ lệ, giải thích theo đắc lệnh /
  đắc địa / đắc thế.

### Cách Cục (格局)

- 8 chính cách: Chính Ấn, Thiên Ấn, Chính Quan, Thất Sát, Thực Thần, Thương Quan,
  Chính Tài, Thiên Tài; thêm Kiến Lộc / Nguyệt Kiếp / Nguyệt Nhận và ngoại cách
  (Tòng, Chuyên Vượng…).

### Dụng Thần (用神) — 4 tầng

Repo này nhấn mạnh **đầy đủ 4 tầng Dụng – Hỷ – Kỵ – Thù** (用喜忌仇), không chỉ
tính một Dụng Thần đơn lẻ, với 3 phép định dụng và cơ chế Điều Hậu
(《窮通寶鑑》). Đây là điểm tác giả nêu là khác biệt so với các app chỉ tính
một dụng thần.

### Các lớp luận giải khác

- Hình – Xung – Hội – Hợp (can ngũ hợp, chi lục hợp/tam hợp/tam hội, lục xung,
  tam hình, lục hại); Thần Sát (Thiên Ất Quý Nhân, Thiên Đức, Nguyệt Đức, Đào Hoa,
  Dịch Mã, Hoa Cái…); tổ hợp Thập Thần (Quan Ấn tương sinh, Sát Ấn tương sinh,
  Thực Thần chế Sát, Thương Quan kiến Quan…).
- Đại Vận + Lưu Niên (đa trường phái), Lưu Nguyệt, Lưu Nhật.
- Mangpai (phái mù), Tam Thế Thư, Lục Thân, hôn nhân, họ tên học Ngũ Cách,
  12 pháp cải vận (Nghịch Thiên Cải Mệnh).

### Ngoài Bát Tự: Thất Chính Tứ Dư

Nhánh Mệnh thứ ba trong repo: dùng thiên văn thực (thư viện `astronomy-engine`)
tính vị trí 7 sao (Nhật, Nguyệt, Kim, Mộc, Thủy, Hỏa, Thổ) và 4 điểm dư
(La Hầu, Kế Đô, Thái Bạch, Tử Khí), 28 tú, 12 cung.

## Giới hạn cần nhớ

- Mỗi phái Tử Bình có cách định Cách Cục/Dụng Thần khác nhau; kết quả của app
  này là theo cách hiểu của tác giả repo, chưa được dự án này kiểm chứng độc lập
  với thư tịch gốc.
- `TuViMCP` có module `EightChar` (Bát Tự) trong phần lịch âm
  (`_lunar_calendar/sino_vn_huyen_hoc/`), nhưng tính năng Bát Tự không phải
  trọng tâm được quảng bá của repo đó — muốn luận Bát Tự đầy đủ thì nguồn chính
  vẫn là `bat-tu-dung-than`.
