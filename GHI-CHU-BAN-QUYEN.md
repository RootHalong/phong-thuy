# Ghi chú bản quyền và xác minh — Dự án Phong Thủy

## 1. Giấy phép từng nguồn (khảo sát 13/11/2026)

| Nguồn | Giấy phép theo GitHub API | Được phép làm gì (tóm tắt, không thay thế toàn văn giấy phép) |
|-------|---------------------------|------------------------------------------------------------------|
| bat-tu-dung-than | **Không có** (`license: null`) | Không có giấy phép công bố thì **mặc định giữ toàn quyền** cho tác giả. Repo này **không sao chép mã** của nguồn này, chỉ liên kết và trỏ submodule. Muốn dùng lại mã phải xin phép tác giả godvstoaa. |
| TuViMCP | **Apache-2.0** | Được dùng, sửa, phân phối (kể cả thương mại) với điều kiện giữ lại thông báo bản quyền và giấy phép, ghi rõ thay đổi; xem toàn văn `LICENSE` trong repo gốc. |
| lasotuvi | **MIT** | Được dùng, sửa, phân phối (kể cả thương mại) với điều kiện giữ lại thông báo bản quyền và giấy phép MIT trong mọi bản sao/phân phối. |
| fengshui.skill | **Không thấy file giấy phép** (truy cập `LICENSE` trả 404 ngày 13/11/2026) | Không có giấy phép công bố thì **mặc định giữ toàn quyền** cho tác giả. Repo này **không sao chép mã** của nguồn này, chỉ liên kết và trỏ submodule. Muốn dùng lại mã phải xin phép tác giả voidforall hoặc chờ tác giả công bố giấy phép. |

> Khi đưa repo này lên GitHub, **đừng xóa** file này và đừng đổi giấy phép của
> các nguồn gốc. Nếu sau này có sao chép mã từ TuViMCP hay lasotuvi vào repo,
> phải kèm đúng giấy phép tương ứng và ghi rõ nguồn.

## 2. Cách repo này dùng lại các nguồn

- **Submodule, không copy mã:** `.gitmodules` trỏ tới đúng 4 repo gốc. Người dùng
  lấy mã gốc trực tiếp từ tác giả, kèm đúng giấy phép và lịch sử của họ.
- **Tài liệu tổng hợp (`docs/`):** do dự án này tự soạn, chỉ tóm tắt và đối chiếu
  những gì các repo gốc tự mô tả; không sao chép nguyên văn dài các file của họ.
- **Tên tác giả và link gốc** được giữ trong `NGUON.md` và từng file `docs/`.

## 3. Điểm chưa xác minh

1. **Tính đúng đắn của thuật toán** (an sao, định Dụng Thần, lập hướng phong thủy,
   chọn ngày…) chưa được dự án này kiểm chứng độc lập — chỉ ghi lại theo mô tả
   của tác giả từng repo. Các repo dùng phái/phương pháp khác nhau nên kết quả
   có thể khác nhau cho cùng một ngày sinh.
2. **bat-tu-dung-than** có nhiều nội dung ngoài luận mệnh (game, tài liệu nghiên cứu
   AI, file tạm `_neo_tmp/` dung lượng lớn). Dự án này chỉ tổng hợp phần huyền học
   cốt lõi; phần game không đưa vào tài liệu.
3. **TuViMCP `_engine/`** có các file trùng tên với `lasotuvi`. Mối quan hệ chính xác
   (kế thừa, fork hay viết lại) chưa được đối chiếu từng dòng mã — chỉ ghi nhận
   sự trùng tên file để người dùng tự kiểm tra khi dùng lại.
4. Số liệu sao/fork/dung lượng/ngày cập nhật chỉ đúng tại **mốc 13/11/2026**.
5. **fengshui.skill viết bằng tiếng Trung.** Tài liệu tổng hợp trong repo này
   dịch/tóm tắt ý chính sang tiếng Việt; khi cần đối chiếu chính xác thuật ngữ
   hay trích dẫn cổ văn, phải đọc bản gốc tiếng Trung trong repo gốc, không
   dùng bản tóm tắt tiếng Việt làm căn cứ trích dẫn.

## 4. Giới hạn sử dụng

Nội dung huyền học trong dự án chỉ mang tính tham khảo văn hóa/tín ngưỡng.
Không dùng làm căn cứ duy nhất cho các quyết định về sức khỏe, tài chính,
pháp lý, xây dựng hay hôn nhân. Khi áp dụng vào thực tế, cần đối chiếu thư
tịch gốc và ý kiến người có chuyên môn.
