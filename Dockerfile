# 1. Chọn "nền móng" (Base Image)
FROM node:18-alpine

# 2. Tạo thư mục làm việc bên trong container
WORKDIR /app

# 3. Copy file danh sách thư viện vào trước
COPY package*.json ./

# 4. Cài đặt các thư viện cần thiết
RUN npm install

# 5. Copy toàn bộ mã nguồn dự án vào container
COPY . .

# 6. Thông báo cổng mạng mà ứng dụng sẽ sử dụng
EXPOSE 3000

# 7. Lệnh cuối cùng để khởi chạy ứng dụng
CMD ["npm", "start"]