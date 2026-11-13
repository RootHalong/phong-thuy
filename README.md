# Dự án Phong Thủy

Dự án tổng hợp, đối chiếu và hướng dẫn sử dụng 3 nguồn mã mở về huyền học phương Đông
(Tử Vi, Bát Tự, Phong Thủy), **khảo sát đến ngày 13/11/2026**.

> **Lưu ý quan trọng:** Nội dung trong repo này mang tính **tham khảo văn hóa, tín ngưỡng
> và nghiên cứu**, phục vụ học tập và tra cứu. Tử Vi, Bát Tự, Phong Thủy không phải là
> khoa học thực chứng và không thay thế tư vấn chuyên môn về y tế, tài chính, pháp lý
> hay xây dựng. Mọi luận giải chỉ nên xem là gợi ý tham khảo, không dùng làm căn cứ
> duy nhất để quyết định việc quan trọng.

## 3 nguồn của dự án

| # | Nguồn | Tác giả | Ngôn ngữ | Giấy phép | Vai trò trong dự án |
|---|-------|---------|----------|-----------|---------------------|
| 1 | [bat-tu-dung-than](https://github.com/godvstoaa/bat-tu-dung-than) | godvstoaa | JavaScript | **Chưa có giấy phép công bố** | Ứng dụng web toàn diện theo hệ Ngũ Thuật: Mệnh, Bốc, Tướng, Sơn (Phong Thủy), Trạch Nhật |
| 2 | [TuViMCP](https://github.com/nmhaaa3218/TuViMCP) | nmhaaa3218 | Python | Apache-2.0 | MCP server lập lá số Tử Vi, xuất JSON cho LLM, kèm 51 Cách Cục và xem vận hạn |
| 3 | [lasotuvi](https://github.com/doanguyen/lasotuvi) | doanguyen | Python | MIT | Thư viện/API gốc để an sao lá số Tử Vi (chỉ API, chưa có frontend trong repo này) |

Chi tiết từng nguồn, số liệu khảo sát và điều kiện sử dụng lại xem tại
[`NGUON.md`](NGUON.md) và [`GHI-CHU-BAN-QUYEN.md`](GHI-CHU-BAN-QUYEN.md).

## Vì sao repo này không copy toàn bộ mã nguồn?

- `bat-tu-dung-than` rất lớn (khoảng **1 GB** theo số liệu GitHub API, 1.998 mục trong cây
  thư mục) và **không công bố giấy phép** — sao chép toàn bộ mã của repo này vào đây
  sẽ vi phạm bản quyền của tác giả. Repo này chỉ **trỏ tới nguồn gốc bằng submodule
  và liên kết**, không nhân bản mã.
- `TuViMCP` (Apache-2.0) và `lasotuvi` (MIT) cho phép sử dụng lại có điều kiện — điều
  kiện cụ thể ghi trong `GHI-CHU-BAN-QUYEN.md`. Việc dùng submodule cũng giữ cho
  dự án này luôn trỏ đúng bản gốc và dễ cập nhật khi tác giả sửa đổi.

## Cấu trúc repo

| Thư mục / tập tin | Nội dung |
|---|---|
| `README.md` | Tổng quan dự án, 3 nguồn, cấu trúc repo |
| `NGUON.md` | Danh mục đầy đủ 3 nguồn: mô tả, số liệu khảo sát, liên kết |
| `GHI-CHU-BAN-QUYEN.md` | Giấy phép, điều kiện sử dụng lại, điểm chưa xác minh |
| `.gitmodules` | Trỏ tới 3 repo gốc dưới dạng submodule (`nguon/bat-tu-dung-than`, `nguon/TuViMCP`, `nguon/lasotuvi`) |
| `docs/01-tong-quan-ngu-thuat.md` | Khung chung: Ngũ Thuật (Mệnh – Bốc – Tướng – Sơn – Trạch Nhật) |
| `docs/02-tu-vi-dau-so.md` | Tử Vi Đẩu Số: lasotuvi và TuViMCP làm gì, khác nhau ở đâu |
| `docs/03-bat-tu-tu-binh.md` | Bát Tự / Tứ Trụ và Dụng Thần theo phái Tử Bình |
| `docs/04-phong-thuy-duong-trach-am-trach.md` | Phong Thủy: Dương Trạch và Âm Trạch trong nguồn bat-tu-dung-than |
| `docs/05-boi-toan-va-trach-nhat.md` | Bói toán (Mai Hoa, Lục Diệu, Kỳ Môn, Lục Nhâm…) và chọn ngày |
| `docs/06-huong-dan-cai-dat.md` | Cách lấy mã nguồn gốc và chạy thử từng nguồn |
| `docs/07-so-sanh-va-lua-chon.md` | So sánh 3 nguồn và gợi ý chọn nguồn theo nhu cầu |
| `scripts/kiem-tra-nguon.sh` | Script kiểm tra nhanh 3 repo gốc còn truy cập được hay không |

## Cách dùng nhanh

```bash
# Lấy repo này kèm cả 3 nguồn gốc
git clone --recurse-submodules https://github.com/RootHalong/phong-thuy.git

# Nếu đã clone mà chưa có submodule
git submodule update --init --recursive

# Chỉ đọc tài liệu tổng hợp, không cần chạy mã nguồn:
# mở các file trong docs/ — bắt đầu từ docs/01-tong-quan-ngu-thuat.md
```

Hướng dẫn chạy thử từng nguồn xem tại [`docs/06-huong-dan-cai-dat.md`](docs/06-huong-dan-cai-dat.md).

## Mốc khảo sát và giới hạn xác minh

- **Mốc cắt: 13/11/2026.** Số liệu (số sao, số fork, ngày cập nhật, dung lượng) lấy qua
  GitHub API ngày 13/11/2026; sau mốc này các repo gốc có thể đã thay đổi.
- Dự án này **không tự kiểm chứng tính đúng đắn của các thuật toán huyền học**
  (an sao, định Dụng Thần, lập hướng…) — chỉ tổng hợp và đối chiếu những gì các
  repo gốc tự mô tả trong README và tài liệu của họ. Muốn dùng vào việc thực tế,
  cần đối chiếu thêm với thư tịch gốc và người có chuyên môn.
- Tên dự án là **Phong Thủy** theo yêu cầu của người lập dự án, nhưng phạm vi thực
  tế của 3 nguồn rộng hơn: bao trùm cả Tử Vi, Bát Tự và bói toán (hệ Ngũ Thuật).
  Riêng phần Phong Thủy (Sơn) chủ yếu nằm trong nguồn `bat-tu-dung-than`.
