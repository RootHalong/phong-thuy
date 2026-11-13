# Danh mục nguồn — Dự án Phong Thủy

Mốc khảo sát: **13/11/2026** (số liệu lấy qua GitHub API cùng ngày).
Sau mốc này các repo gốc có thể đã thay đổi — cần kiểm tra lại trước khi dùng.

## 1. bat-tu-dung-than — godvstoaa/bat-tu-dung-than

- Link: https://github.com/godvstoaa/bat-tu-dung-than
- Mô tả của tác giả: “Bát Tự Dụng Thần — luận mệnh Tử Bình + Nghiệm chứng gia tộc
  (家族八字交叉验证) + hiệu chỉnh giờ sinh”.
- Ngôn ngữ chính: **JavaScript** (Vite + vanilla JavaScript, không framework).
- Nhánh mặc định: `main`. Tạo ngày 21/06/2026; lần đẩy gần nhất 12/11/2026.
- Quy mô: khoảng **1 GB** (1.005.783 KB theo GitHub API), **1.998 mục** trong cây thư mục.
  Repo lớn chủ yếu do thư mục làm việc tạm `_neo_tmp/` (nhiều file JSON/log dung lượng
  lớn), thư mục `docs/` rất dày (nghiên cứu, đặc tả game, hồ sơ kiểm chứng) và
  `src/main.js` khoảng 593 KB.
- Sao / fork: 1 sao, 1 fork. Có GitHub Pages.
- Giấy phép: **không công bố** (GitHub API trả `license: null`).
- Nội dung chính theo README của repo (25.904 byte):
  - **Mệnh:** Bát Tự/Tứ Trụ (lập Tứ Trụ, Cách Cục, Dụng Thần 4 tầng Dụng–Hỷ–Kỵ–Thù,
    Thập Thần, Đại Vận, Lưu Niên/Nguyệt/Nhật, Mangpai, Tam Thế Thư, Ngũ Cách họ tên);
    Tử Vi Đẩu Số (12 cung, 14 chính tinh, Tứ Hóa); Thất Chính Tứ Dư (thiên văn thực).
  - **Bốc:** Mai Hoa Dịch Số, Lục Diệu, Kỳ Môn Độn Giáp, Đại Lục Nhâm, Trắc Tự, Nhất Chưởng Kinh.
  - **Tướng:** Diện tướng 12 cung, tướng nốt ruồi, Lưu niên bộ vị.
  - **Sơn (Phong Thủy):** Dương Trạch (Bát Trạch, Huyền Không, Tam Sát, Thái Tuế,
    Thủy Pháp) và Âm Trạch (Nhị Thập Tứ Sơn, lập hướng phân kim).
  - **Trạch Nhật:** Thiên Xá, Tứ Đức, Thiên Y, Nguyệt Ân, Thiên Nguyện, Hung nhật,
    Hoàng Đạo Thập Nhị Thần.
  - Tích hợp AI luận giải qua LLM tương thích OpenAI (mặc định GLM-5.2 của Z.ai);
    bộ tự kiểm chứng `selftest.mjs` với hơn 1.740 kiểm chứng theo tác giả.
  - Có cả phần game huyền học (`src/game/`, tài liệu `docs/GAME-*`) — không thuộc
    phạm vi luận mệnh/phong thủy cốt lõi.
- Yêu cầu chạy theo README: Node.js ≥ 18; `npm install`, `npm run dev`, `npm run build`.

## 2. TuViMCP — nmhaaa3218/TuViMCP

- Link: https://github.com/nmhaaa3218/TuViMCP
- Trang chủ: https://tuvi-mcp.vercel.app/
- Tài liệu: https://tuvimcp.readthedocs.io/en/latest/
- Mô tả của tác giả: “Tử Vi Horoscope MCP Server — a Python MCP server for generating,
  analyzing, and managing Vietnamese Tử Vi astrology charts with clean JSON output
  for LLM agents.”
- Ngôn ngữ chính: **Python**. Nhánh mặc định: `main`.
  Tạo ngày 10/06/2026; lần đẩy gần nhất 08/10/2026.
- Quy mô: 13.364 KB, **139 mục** trong cây thư mục.
- Sao / fork: 7 sao, 6 fork. Giấy phép: **Apache License 2.0**.
- Có trên PyPI: `tuvi-mcp-server`.
- Tính năng chính theo README của repo (33.760 byte):
  - Lập lá số Tử Vi đầy đủ từ ngày/giờ sinh dương lịch hoặc âm lịch
    (Thiên Bàn, Địa Bàn, 12 cung, hơn 100 sao), xuất JSON gọn cho LLM.
  - Đánh giá **51 Cách Cục** (Trung Châu Phái) kèm mô tả, cổ ca, bình chú, ưu/khuyết điểm.
  - Vẽ ảnh lá số (màu theo Ngũ Hành, khung Tuần/Triệt, đường nối Mệnh–Thân).
  - Vận hạn: sao lưu, Đại Hạn (10 năm), Tiểu Hạn, Nguyệt Hạn, Nhật Hạn.
  - Xem ngày giờ tốt: Hoàng Đạo/Hắc Đạo, 12 Trực, 28 Tú (phần này xem thêm
    trong `tuvi_mcp/_auspicious.py`).
  - Chuyển đổi lịch, ngày lễ Việt Nam, lịch vạn niên.
- Cấu trúc đáng chú ý: thư mục `tuvi_mcp/_engine/` có các file trùng tên với
  `lasotuvi` (AmDuong.py, App.py, DiaBan.py, Lich_EPHEM.py, Lich_HND.py, Sao.py,
  ThienBan.py) — khi dùng lại cần đối chiếu giấy phép và ghi chú nguồn của repo này.
- Có bộ test trong `tests/` (19 file) và ví dụ JSON mẫu trong `examples/`.

## 3. lasotuvi — doanguyen/lasotuvi

- Link: https://github.com/doanguyen/lasotuvi
- Trang chủ: http://doanguyen.pythonanywhere.com
- Mô tả của tác giả: “Phần mềm an sao tử vi mã nguồn mở”.
- Ngôn ngữ chính: **Python**. Nhánh mặc định: `master`.
  Tạo ngày 09/09/2016 — nguồn lâu đời nhất trong 3 nguồn.
  Lần đẩy gần nhất 13/04/2026; trang repo cập nhật lần cuối 06/11/2026.
- Quy mô: 5.858 KB, **25 mục** trong cây thư mục — gọn nhất trong 3 nguồn.
- Sao / fork: **50 sao, 70 fork** — được dùng lại nhiều nhất trong 3 nguồn.
- Giấy phép: **MIT License**.
- Nội dung: chỉ chứa **API an sao Tử Vi**, chưa có frontend trong repo này.
  Frontend riêng xem tại [lasotuvi-django](https://github.com/doanguyen/lasotuvi-django)
  (do tác giả ghi trong README).
- Các module chính trong `lasotuvi/`:
  - `AmDuong.py` — âm dương, can chi; `App.py` — API lập lá số;
    `DiaBan.py` — địa bàn 12 cung; `ThienBan.py` — thiên bàn;
    `Sao.py` — các sao; `Lich_HND.py` / `Lich_EPHEM.py` — lịch âm (Hoàng Nam Địa / thiên văn).
  - `docs/lich.md` — ghi chú về lịch; `tests/` — 3 file test.
- Đây là nguồn gốc phù hợp nhất nếu chỉ cần **thuật toán an sao cốt lõi**,
  gọn nhẹ, giấy phép thoáng (MIT).
