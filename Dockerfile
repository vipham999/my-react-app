# Sử dụng Node.js phiên bản LTS mới nhất
FROM node:18-alpine

# Thiết lập thư mục làm việc trong container
WORKDIR /app

# Sao chép package.json và package-lock.json
COPY package*.json ./

# Cài đặt các dependencies
RUN npm install

# Sao chép tất cả các file còn lại
COPY . .

# Mở cổng 3000 cho ứng dụng React
EXPOSE 3000

# Khởi chạy ứng dụng
CMD ["npm", "start"]
