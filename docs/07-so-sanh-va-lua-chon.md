# 07. So sánh 4 nguồn và gợi ý lựa chọn

Số liệu tại mốc khảo sát **13/11/2026**. 3 nguồn đầu qua GitHub API;
nguồn thứ 4 (`fengshui.skill`) qua trang repo GitHub và file gốc, vì GitHub API
đã hết hạn mức truy vấn ẩn danh lúc khảo sát nguồn này.

## Bảng so sánh

| Tiêu chí | bat-tu-dung-than | TuViMCP | lasotuvi | fengshui.skill |
|----------|------------------|---------|----------|---------------|
| Tác giả | godvstoaa | nmhaaa3218 | doanguyen | voidforall |
| Ngôn ngữ | JavaScript | Python | Python | Python (script) + Markdown, tài liệu tiếng Trung |
| Tuổi repo | Từ 21/06/2026 | Từ 10/06/2026 | Từ 09/09/2016 | Từ 11/04/2026 |
| Cập nhật gần nhất | 12/11/2026 | 08/10/2026 | 13/04/2026 (đẩy); trang cập nhật 06/11/2026 | Commit hiện tại 3d9d349 (29 commit, v2.2.0) |
| Quy mô | ~1 GB, 1.998 mục | 13.364 KB, 139 mục | 5.858 KB, 25 mục | Chưa đo qua API (hết hạn mức); cấu trúc: SKILL.md + scripts/kanyu + references + tests |
| Sao / fork | 1 / 1 | 7 / 6 | **50 / 70** | **417 / 57** |
| Giấy phép | **Chưa có** | Apache-2.0 | MIT | **Chưa thấy file giấy phép** |
| Phạm vi | Ngũ Thuật đầy đủ | Tử Vi + ngày tốt | Chỉ an sao Tử Vi | Phong thủy + trạch nhật chuyên sâu |
| Dạng dùng | Web cho người dùng cuối | MCP server cho LLM | Thư viện nhúng | Skill cho AI agent |
| Đối tượng | Người xem lá số/phong thủy trực tiếp | Người làm AI/agent | Lập trình viên làm app Tử Vi | Người dùng AI agent muốn tư vấn phong thủy |

## Gợi ý chọn theo nhu cầu

- **Chỉ muốn xem, tra cứu trực tiếp trên web** (Bát Tự, Tử Vi, phong thủy,
  bói, chọn ngày): dùng `bat-tu-dung-than`. Nhược điểm: repo rất nặng (~1 GB),
  chưa có giấy phép nên không được sao chép mã khi chưa xin phép tác giả.
- **Muốn AI luận giải lá số Tử Vi** (trả JSON cho LLM): dùng `TuViMCP`.
  Có sẵn 51 Cách Cục, vận hạn, vẽ ảnh lá số, tài liệu đầy đủ.
- **Muốn nhúng thuật toán an sao vào app của mình**: dùng `lasotuvi` — gọn nhất,
  lâu đời nhất, được fork nhiều nhất (70 fork), giấy phép MIT thoáng.
- **Muốn làm phong thủy nhà đất**: chọn `fengshui.skill` trước — chuyên sâu nhất
  (Huyền Không Phi Tinh, Bát Trạch, Loan Đầu, Trạch Nhật), tính toán xác định
  bằng script, mỗi quy tắc ghi rõ nguồn đối chiếu, và được quan tâm nhiều nhất
  (417 sao). Nhược điểm: tài liệu tiếng Trung, chưa có giấy phép công bố.
  `bat-tu-dung-than` là lựa chọn thứ hai, bao quát hơn (cả Ngũ Thuật) nhưng
  phần phong thủy ít chuyên sâu hơn; 2 nguồn Python không làm phong thủy.

## Điểm trùng lặp và khác biệt cần nhớ

- Cả 3 nguồn đầu đều có **Tử Vi**, nhưng mức độ khác nhau: `lasotuvi` chỉ an sao,
  `TuViMCP` thêm cách cục + vận hạn + JSON cho AI, `bat-tu-dung-than` thêm
  giao diện web và đặt Tử Vi cạnh Bát Tự.
- Chỉ `bat-tu-dung-than` có **Bát Tự đầy đủ, phong thủy, bói toán** (theo nghĩa
  bao quát cả Ngũ Thuật); `fengshui.skill` có Bát Tự ở mức phối hợp với phong thủy,
  không luận mệnh đầy đủ như `bat-tu-dung-than`.
- `TuViMCP` và `lasotuvi` có các file engine trùng tên nhau — cần đối chiếu
  kỹ trước khi dùng lại (xem `GHI-CHU-BAN-QUYEN.md`).
- Kết quả luận giải giữa các nguồn có thể khác nhau vì khác phái/phương pháp.
  Dự án này không kết luận nguồn nào “đúng” hơn.
