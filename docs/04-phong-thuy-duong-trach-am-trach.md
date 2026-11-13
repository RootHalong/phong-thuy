# 04. Phong Thủy: Dương Trạch và Âm Trạch

Đây là phần **Phong Thủy đúng nghĩa** của dự án — nhánh **Sơn (山)** trong hệ
Ngũ Thuật. Toàn bộ nội dung dưới đây tóm tắt theo README của repo
`bat-tu-dung-than` (https://github.com/godvstoaa/bat-tu-dung-than).
Hai nguồn Python (`TuViMCP`, `lasotuvi`) chuyên về Tử Vi, **không** làm
phong thủy nhà đất, nên không có gì để đối chiếu ở phần này.

## Dương Trạch (阳宅) — nhà ở, công trình dương

Theo mô tả của tác giả, app triển khai:

- **Bát Trạch (八宅):** chia nhà theo 8 hướng/quẻ, xác định cung tốt – xấu
  theo mệnh quái của gia chủ.
- **Huyền Không (玄空):** Huyền Không Phi Tinh theo vận (thời vận) và hướng nhà,
  xem sao bay theo thời gian.
- **Tam Sát (三煞), Thái Tuế (太岁):** các yếu tố kiêng kỵ theo năm, theo hướng.
- **Thủy Pháp (水法):** xem nước (đường nước, vị trí nước) quanh nhà đất.

## Âm Trạch (阴宅) — mộ phần

- **Nhị Thập Tứ Sơn (二十四山):** chia vòng tròn la bàn thành 24 sơn/hướng.
- **Lập hướng, phân kim:** chọn hướng đặt mộ theo sơn, theo long mạch (theo
  mô tả của tác giả; chi tiết thuật toán nằm trong mã nguồn gốc, repo này
  không sao chép lại).

## Nguồn chuyên sâu: fengshui.skill (bổ sung 13/11/2026)

Đây là nguồn **chuyên sâu nhất về Phong Thủy** trong dự án — Skill “Kham Dư Tử”
(堪舆子 · 传统风水顾问) của voidforall, viết bằng tiếng Trung, phiên bản 2.2.0,
417 sao / 57 fork. Khác với `bat-tu-dung-than` (ứng dụng web bao quát cả Ngũ Thuật),
nguồn này chỉ tập trung vào phong thủy và trạch nhật, dưới dạng Skill cho AI agent.

### Phương pháp

- **Tam Nguyên Huyền Không Phi Tinh:** xếp bàn phi tinh theo hướng nhà và thời gian
  nhập trạch; xét vận bàn, sơn tinh, hướng tinh; xét格局 vượng sơn vượng hướng,
  thượng sơn hạ thủy, song tinh, phục/phản ngâm, hợp thập, tam ban quái; kiêm hướng,
  không vong, thế quái.
- **Bát Trạch Minh Kính:** mệnh quái (nam ngũ gửi Khôn, nữ ngũ gửi Cấn, phân năm
  theo Lập Xuân), du niên, 4 cát 4 hung phương, phối hợp mệnh trạch.
- **Hình Thế Loan Đầu:** long huyệt sa thủy hướng, tàng phong tụ khí; ngoại sát
  như lộ xung, thiên trảm, bích đao và cách hóa giải.
- **Trạch Nhật:** xem `docs/05-boi-toan-va-trach-nhat.md`.

### Cách nguồn này đảm bảo tính toán đúng

- Mọi xếp bàn, tra bảng, lịch pháp đều do script Python `scripts/fengshui.py`
  tính **xác định** (không để mô hình tự tính nhẩm): các lệnh `feixing` (phi tinh),
  `bazhai` (bát trạch), `mingua` (mệnh quái), `liunian` (lưu niên), `day` (một ngày),
  `zeri` (trạch nhật), `bazi` (bát tự) — xem `docs/06-huong-dan-cai-dat.md`.
- Có test hồi quy và snapshot đầu ra trong `tests/`; test lấy từ các kết luận
  có thể đối chiếu công khai (ca quyết du niên, bảng vượng sơn vượng hướng…).
  Chỗ nào các phái còn tranh cãi thì không đưa vào test mà ghi rõ trong đầu ra.
- Mỗi quy tắc/trích dẫn đều ghi **nguồn và trạng thái đối chiếu** trong
  `references/sources.md` (đã đối chiếu nguyên văn / đã tính toán kiểm chứng /
  xuất xứ công nhận / khẩu kính lưu phái / đã loại bỏ). Khi trích dẫn cổ văn
  phải đọc bản gốc tiếng Trung, không dùng bản tóm tắt tiếng Việt trong repo này
  làm căn cứ trích dẫn.
- Tác giả lưu ý: v1.0.0 có nhiều lỗi ở Bát Trạch, mệnh quái và phi tinh, đã sửa
  trong v2.0.0 — dùng v2 trở lên (hiện tại v2.2.0).

### Giới hạn riêng của nguồn này

- Nội dung gốc **tiếng Trung**; người dùng không đọc được tiếng Trung sẽ cần
  dịch và đối chiếu thuật ngữ cẩn thận.
- Bàn phi tinh tương tác đã có; la bàn định hướng, đối chiếu mặt bằng, lịch
  trạch nhật và bàn Bát Tự tương tác vẫn đang trong kế hoạch (theo README gốc).
- Giấy phép: **không thấy file giấy phép** — chỉ trỏ tới, không sao chép mã
  (xem `GHI-CHU-BAN-QUYEN.md`).

## Những gì dự án này KHÔNG làm ở phần phong thủy

- Không tự kiểm chứng thuật toán lập hướng, phi tinh hay thủy pháp — chỉ ghi
  lại phạm vi tác giả repo gốc tự công bố.
- Không đưa ra kết luận phong thủy cho một nhà/đất cụ thể. Muốn áp dụng thực tế
  cần đo đạc thực địa (la bàn, hướng, địa hình) và đối chiếu thư tịch gốc,
  không thể chỉ dựa vào mô tả tóm tắt trong tài liệu này.
- Không có bản đồ, la bàn hay công cụ đo đạc kèm theo trong repo này; công cụ
  tương tác (nếu có) nằm trong ứng dụng web của repo gốc.
