<<<<<<< HEAD
# SREC AGENT

Trợ lý AI chạy trên máy bạn. **Người dùng không cần nhập API key** — key cấu hình một lần bởi admin.

## Tính năng

- Chat ngay, không cần nhập API key
- Pet dễ thương hiện khi AI đang suy nghĩ
- Hỗ trợ OpenAI, Gemini, DeepSeek, Groq…
- Rate limit chống spam (40 tin / giờ / IP)
- Mật khẩu truy cập tùy chọn
- Công cụ workspace (đọc / ghi file)

## Cài đặt nhanh (Windows)

1. Cài Python 3.10+ (tick Add to PATH)
2. Giải nén project
3. Mở file **config.json**, dán API key:

```json
{
  "api_key": "KEY_CỦA_BẠN",
  "base_url": "https://generativelanguage.googleapis.com/v1beta/openai/",
  "model": "gemini-2.0-flash",
  "access_password": ""
}
```

4. Nhấp đúp **START_SREC_AGENT.bat**
5. Mở http://127.0.0.1:5000 → chat luôn

## Cấu hình config.json

| Trường | Ý nghĩa |
|--------|---------|
| api_key | API key của bạn (bắt buộc) |
| base_url | Endpoint API |
| model | Tên model |
| access_password | Mật khẩu vào app (để trống = không cần) |

### Base URL phổ biến

| Nhà cung cấp | base_url | model |
|---|---|---|
| Gemini | https://generativelanguage.googleapis.com/v1beta/openai/ | gemini-2.0-flash |
| OpenAI | https://api.openai.com/v1 | gpt-4o-mini |
| DeepSeek | https://api.deepseek.com/v1 | deepseek-chat |
| Groq | https://api.groq.com/openai/v1 | llama-3.3-70b-versatile |

> config.json đã nằm trong .gitignore — không bị đẩy lên GitHub.

## Cho người khác dùng (cùng key của bạn)

### Cloudflare Tunnel

1. Cài cloudflared
2. Chạy app: `py app.py`
3. CMD khác: `cloudflared tunnel --url http://127.0.0.1:5000`
4. Copy link https://xxxx.trycloudflare.com gửi bạn bè
5. (Khuyến nghị) Đặt access_password trong config.json

### Lưu ý

- Bạn chịu toàn bộ chi phí / quota API
- Rate limit: 40 tin / giờ / IP
- Máy bạn phải bật thì người khác mới dùng được

## License

MIT
=======
# AI-AGENT
>>>>>>> 3b373f0a9a1155133f3cf79319bf0ffea2d5c439
