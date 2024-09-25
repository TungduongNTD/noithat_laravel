# Dự Án Website Nội Thất - Laravel

Đây là một dự án website quản lý nội thất được xây dựng bằng Laravel. Dự án cung cấp các chức năng quản lý sản phẩm, người dùng, và đơn hàng, với giao diện thân thiện và dễ sử dụng.

## 1. Giới Thiệu

Dự án này là một ví dụ điển hình về lập trình mã nguồn mở, nơi mã nguồn của website được chia sẻ công khai để mọi người có thể sử dụng và đóng góp. Mục tiêu của dự án là cung cấp một nền tảng quản lý nội thất hoàn chỉnh, với tính năng quản trị và khả năng tùy biến cao.

## 2. Yêu Cầu Hệ Thống

- **PHP**: 7.4 trở lên
- **Laravel**: 8.x
- **Composer**: 2.x
- **MySQL**: 5.7 trở lên
- **XAMPP** hoặc **WAMP** để quản lý môi trường phát triển web cục bộ.

## 3. Cài Đặt

### 3.1. Cài Đặt Môi Trường

1. **Bật XAMPP hoặc WAMP**:
   - Khởi động Apache và MySQL từ XAMPP hoặc WAMP.

2. **Giải nén file**:
   - Giải nén source code vào thư mục `htdocs` của XAMPP hoặc `www` của WAMP.

3. **Thiết Lập Cơ Sở Dữ Liệu**:
   - Truy cập `localhost/phpmyadmin`.
   - Tạo một cơ sở dữ liệu mới (ví dụ: `noithat`).
   - Nhập dữ liệu từ file `.sql` đi kèm trong thư mục `database` vào cơ sở dữ liệu mới tạo.

4. **Cài Đặt Các Thư Viện Cần Thiết**:
   - Mở terminal tại thư mục gốc của dự án và chạy lệnh sau để cài đặt các thư viện cần thiết:
     ```bash
     composer install
     ```

5. **Cấu Hình Tệp `.env`**:
   - Tạo một bản sao của tệp `.env.example` và đổi tên thành `.env`.
   - Cấu hình thông tin kết nối cơ sở dữ liệu trong tệp `.env` như sau:
     ```
     DB_CONNECTION=mysql
     DB_HOST=127.0.0.1
     DB_PORT=3306
     DB_DATABASE=noithat
     DB_USERNAME=root
     DB_PASSWORD=
     ```
   - Tạo APP_KEY cho dự án:
     ```bash
     php artisan key:generate
     ```

6. **Chạy Ứng Dụng**:
   - Khởi động server Laravel:
     ```bash
     php artisan serve
     ```
   - Truy cập trang chủ của website theo địa chỉ:
     ```
     http://localhost/noithat/public/index
     ```

### 3.2. Truy Cập Trang Quản Trị

- Truy cập trang quản trị theo địa chỉ:
  ---
       http://localhost/noithat/public/admin/layout/trangchu
  ---
- Thông tin đăng nhập:
- Email: `tungduong@gmail.com`
- Mật khẩu: `abcxyz`

## 4. Cấu Trúc Thư Mục

- `app`: Chứa mã nguồn chính của ứng dụng.
- `resources`: Chứa các tài nguyên như views, CSS, JavaScript.
- `routes`: Chứa định nghĩa các route của ứng dụng.
- `database`: Chứa các migration và file `.sql` cho cơ sở dữ liệu.
- `public`: Chứa file index.php và tài nguyên công khai như ảnh, CSS, JS.

## 5. Đóng Góp

Đây là một dự án mã nguồn mở và rất hoan nghênh các đóng góp từ cộng đồng. Bạn có thể đóng góp bằng cách:

- Fork dự án này và tạo một Pull Request với các tính năng hoặc sửa lỗi mới.
- Tạo issue nếu bạn gặp lỗi hoặc có đề xuất tính năng mới.

## 6. Giấy Phép

Dự án này được phát hành dưới giấy phép MIT. Vui lòng xem tệp [LICENSE](LICENSE) để biết thêm chi tiết.

## 7. Thông Tin Liên Hệ

Nếu bạn có bất kỳ câu hỏi nào, vui lòng liên hệ qua email: `tungduongtn2003@gmail.com`.

---

Cảm ơn bạn đã quan tâm và sử dụng dự án của chúng tôi!

