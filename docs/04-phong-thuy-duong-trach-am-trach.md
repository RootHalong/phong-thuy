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

## Những gì dự án này KHÔNG làm ở phần phong thủy

- Không tự kiểm chứng thuật toán lập hướng, phi tinh hay thủy pháp — chỉ ghi
  lại phạm vi tác giả repo gốc tự công bố.
- Không đưa ra kết luận phong thủy cho một nhà/đất cụ thể. Muốn áp dụng thực tế
  cần đo đạc thực địa (la bàn, hướng, địa hình) và đối chiếu thư tịch gốc,
  không thể chỉ dựa vào mô tả tóm tắt trong tài liệu này.
- Không có bản đồ, la bàn hay công cụ đo đạc kèm theo trong repo này; công cụ
  tương tác (nếu có) nằm trong ứng dụng web của repo gốc.
