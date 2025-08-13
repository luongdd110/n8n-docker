# Sử dụng image chính thức của n8n
FROM n8nio/n8n:latest

# Cài thêm thư viện ngoài
USER root
RUN apk add --no-cache ffmpeg \
    && npm install -g puppeteer axios cheerio fs-extra tmp

# Chuyển lại quyền cho user n8n
USER node

# Mặc định n8n chạy bằng entrypoint của image