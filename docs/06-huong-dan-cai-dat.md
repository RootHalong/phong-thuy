# 06. Hướng dẫn cài đặt và chạy thử

Repo này dùng **submodule** để trỏ tới 4 repo gốc. Không cần tải mã gốc về
nếu chỉ đọc tài liệu trong `docs/`.

## Lấy toàn bộ (repo này + 4 nguồn gốc)

```bash
git clone --recurse-submodules https://github.com/RootHalong/phong-thuy.git
cd phong-thuy

# Nếu đã clone mà thiếu submodule:
git submodule update --init --recursive
```

Sau đó mã gốc nằm ở:

- `nguon/bat-tu-dung-than/` — ứng dụng web Bát Tự (JavaScript)
- `nguon/TuViMCP/` — MCP server Tử Vi (Python)
- `nguon/lasotuvi/` — thư viện an sao Tử Vi (Python)

## Chạy bat-tu-dung-than (web)

Theo README gốc — yêu cầu Node.js ≥ 18:

```bash
cd nguon/bat-tu-dung-than
npm install
npm run dev      # http://localhost:5173
npm run build    # build production
npm test         # chạy bộ tự kiểm chứng (theo tác giả: 1.740+ kiểm chứng)
```

Lưu ý của tác giả: AI luận giải cần LLM qua proxy (`/zai`, `/openai`…) để
tránh CORS; ở production cần tự đặt backend/proxy tương đương. Không có API key
thì phần AI sẽ không chạy — phần lập lá số vẫn xem được.

## Chạy TuViMCP (Python MCP server)

Xem tài liệu chính thức: https://tuvimcp.readthedocs.io/en/latest/
và file `README.md`, `examples/quick_start.py` trong repo gốc.
Gói PyPI: `tuvi-mcp-server`. Repo có sẵn ví dụ JSON mẫu trong `examples/`
(`sample_horoscope_output.json`, `sample_van_han_output.json`).

## Dùng fengshui.skill (Skill phong thủy cho AI agent)

Cài đặt theo README gốc (cần `npx`):

```bash
npx skills add voidforall/fengshui.skill
```

Sau đó dùng trong Claude Code, Codex CLI hoặc agent hỗ trợ chuẩn Agent Skills
bằng ngôn ngữ tự nhiên (ví dụ hỏi về hướng nhà, chọn ngày nhập trạch).
Muốn chạy riêng script tính toán (cần Python, và `lunar_python` cho lệnh
`day` / `zeri` / `bazi`):

```bash
cd nguon/fengshui.skill
python3 scripts/fengshui.py feixing --facing 180 --year 2018-09 --annual 2026
python3 scripts/fengshui.py bazhai --facing 90 --birth 1988-05-01 --gender m
python3 scripts/fengshui.py mingua --birth 1990-01-20 --gender f
python3 scripts/fengshui.py liunian --year 2026 --span 5
python3 scripts/fengshui.py zeri --event 入宅 --start 2026-05-10 --end 2026-05-31 --birth-year 1988
python3 -m unittest discover -s tests   # chạy test của repo gốc
```

Lưu ý: tài liệu và ví dụ của nguồn này bằng **tiếng Trung**.

## Dùng lasotuvi (thư viện Python)

Repo gốc chỉ có API; xem `README.md` và `lasotuvi/App.py` trong repo gốc.
Muốn có giao diện web, tác giả chỉ tới repo riêng
[lasotuvi-django](https://github.com/doanguyen/lasotuvi-django).
Cài đặt theo `requirements.txt` / `setup.py` trong repo gốc.

## Kiểm tra nhanh 4 nguồn còn truy cập được không

```bash
bash scripts/kiem-tra-nguon.sh
```
