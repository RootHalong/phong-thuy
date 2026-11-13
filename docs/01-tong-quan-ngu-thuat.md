# 01. Tổng quan: hệ Ngũ Thuật (五术)

Khung chung mà nguồn `bat-tu-dung-than` dùng để tổ chức toàn bộ nội dung — và cũng
là khung để đọc 2 nguồn còn lại. Ngũ Thuật là cách phân loại tri thức huyền học
phương Đông từ đời Hán về sau, gồm 5 nhánh:

| Ngũ Thuật | Chữ Hán | Nghĩa | Trong 3 nguồn này |
|-----------|---------|-------|-------------------|
| **Mệnh** | 命 | Luận mệnh theo ngày giờ sinh | Bát Tự, Tử Vi, Thất Chính Tứ Dư (`bat-tu-dung-than`); Tử Vi (`TuViMCP`, `lasotuvi`) |
| **Bốc** | 卜 | Bói toán, gieo quẻ hỏi việc | Mai Hoa, Lục Diệu, Kỳ Môn, Lục Nhâm (`bat-tu-dung-than`) |
| **Tướng** | 相 | Xem tướng người, vật | Diện tướng 12 cung, tướng nốt ruồi (`bat-tu-dung-than`) |
| **Sơn** | 山 | Phong thủy (địa lý) | Dương Trạch, Âm Trạch (`bat-tu-dung-than`) — đây là phần **Phong Thủy** đúng nghĩa của dự án |
| **Trạch Nhật** | 择日 | Chọn ngày giờ tốt | Thiên Xá, Tứ Đức, Hoàng Đạo… (`bat-tu-dung-than`, một phần trong `TuViMCP`) |

## Đọc bản đồ này như thế nào

- Muốn **lập lá số theo ngày sinh**: đọc `docs/02-tu-vi-dau-so.md` (Tử Vi)
  và `docs/03-bat-tu-tu-binh.md` (Bát Tự).
- Muốn **xem nhà, xem đất, chọn hướng**: đọc `docs/04-phong-thuy-duong-trach-am-trach.md`.
- Muốn **gieo quẻ hỏi việc, chọn ngày**: đọc `docs/05-boi-toan-va-trach-nhat.md`.
- Muốn **chạy thử mã nguồn**: đọc `docs/06-huong-dan-cai-dat.md`.
- Chưa biết chọn nguồn nào: đọc `docs/07-so-sanh-va-lua-chon.md`.

## Một lưu ý về tên gọi

Tên dự án là **Phong Thủy**, nhưng 3 nguồn gộp lại bao trùm cả Ngũ Thuật, trong đó
phần Phong Thủy (Sơn) chỉ là 1 trong 5 nhánh và chủ yếu nằm trong
`bat-tu-dung-than`. Hai nguồn Python (`TuViMCP`, `lasotuvi`) chuyên về **Tử Vi**,
không làm phong thủy nhà đất. Tài liệu trong repo giữ đúng phạm vi từng nguồn,
không gán cho nguồn này những gì chỉ nguồn kia mới có.
