-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th9 25, 2024 lúc 11:06 PM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `db_banhang`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bills`
--

CREATE TABLE `bills` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_customer` int(11) DEFAULT NULL,
  `date_order` date DEFAULT NULL,
  `total` float DEFAULT NULL COMMENT 'tổng tiền',
  `payment` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'hình thức thanh toán',
  `note` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'trạng thái',
  `created_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `bills`
--

INSERT INTO `bills` (`id`, `id_customer`, `date_order`, `total`, `payment`, `note`, `status`, `created_at`, `updated_at`) VALUES
(17, 17, '2019-03-28', 553784000, 'ATM', 'ok tới đây đi em yêu', 'đã xử lý', '2019-05-07 03:55:33', '2019-05-07 03:55:33'),
(18, 18, '2019-03-28', 58900000, 'COD', 'ok nào', 'đã xử lý', '2019-05-07 01:52:00', '2019-03-28 15:39:10'),
(19, 19, '2019-03-28', 1010000, 'COD', 'Giao hàng trước ngày 01/04/2019', 'đã xử lý', '2019-05-07 01:52:05', '2019-03-28 15:51:29'),
(28, 28, '2019-04-28', 6588000, 'COD', 'ok nhanh nhé', 'đã xử lý', '2019-05-07 04:08:05', '2019-05-07 04:08:05'),
(24, 24, '2019-04-01', 177534000, 'COD', 'ok', 'đã xử lý', '2019-05-07 04:08:10', '2019-05-07 04:08:10'),
(26, 26, '2019-04-02', 7420000, 'ATM', 'ok nhớ giao hàng đúng ngày', 'đã hủy', '2019-05-07 01:52:37', '2019-04-02 10:46:50'),
(29, 32, '2019-05-07', 13538000, 'ATM', 'chuyển nhanh cho mình nhé', 'đã hủy', '2019-05-07 04:09:26', '2019-05-07 04:09:26'),
(30, 33, '2019-05-07', 115684000, 'ATM', 'mang nhanh qua cho minh nhé.', 'đã hủy', '2019-05-07 04:09:35', '2019-05-07 04:09:35'),
(31, 34, '2019-05-07', 56931000, 'COD', 'giao hàng cẩn thận cho mình', 'Đang xử lý', '2019-05-07 04:03:53', '2019-05-07 04:03:53'),
(32, 35, '2019-05-07', 6205000, 'COD', 'chuyển hàng cẩn thận nhé', 'đã xử lý', '2019-05-07 04:12:38', '2019-05-07 04:12:38'),
(33, 36, '2019-05-15', 474096000, 'COD', 'Ghi Chú', 'Đang xử lý', '2019-05-15 09:25:28', '2019-05-15 09:25:28'),
(34, 37, '2024-03-03', 6588000, 'COD', 'Ghi Chú', 'Đang xử lý', '2024-03-03 15:25:36', '2024-03-03 15:25:36'),
(35, 39, '2024-03-15', 112676000, 'ATM', 'Ghi Chú', 'Đang xử lý', '2024-03-14 17:31:48', '2024-03-14 17:31:48'),
(36, 40, '2024-03-15', 6588000, 'COD', 'Ghi Chú', 'Đang xử lý', '2024-03-14 17:32:05', '2024-03-14 17:32:05');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill_detail`
--

CREATE TABLE `bill_detail` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_bill` int(10) NOT NULL,
  `id_product` int(10) NOT NULL,
  `quantity` int(11) NOT NULL COMMENT 'số lượng',
  `unit_price` double NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `bill_detail`
--

INSERT INTO `bill_detail` (`id`, `id_bill`, `id_product`, `quantity`, `unit_price`, `created_at`, `updated_at`) VALUES
(20, 17, 6, 1, 198716000, '2019-03-28 15:32:44', '2019-03-28 15:32:44'),
(21, 17, 8, 2, 177534000, '2019-03-28 15:32:44', '2019-03-28 15:32:44'),
(22, 18, 2, 1, 9150000, '2019-03-28 15:39:10', '2019-03-28 15:39:10'),
(23, 18, 3, 1, 49750000, '2019-03-28 15:39:10', '2019-03-28 15:39:10'),
(24, 19, 61, 1, 1010000, '2019-03-28 15:51:29', '2019-03-28 15:51:29'),
(32, 25, 2, 1, 9150000, '2019-03-31 17:14:04', '2019-03-31 17:14:04'),
(33, 25, 8, 1, 177534000, '2019-03-31 17:14:04', '2019-03-31 17:14:04'),
(34, 26, 5, 1, 7420000, '2019-04-02 10:46:50', '2019-04-02 10:46:50'),
(19, 16, 1, 1, 7320000, '2019-03-28 15:15:51', '2019-03-28 15:15:51'),
(30, 24, 8, 1, 177534000, '2019-03-31 17:03:46', '2019-03-31 17:03:46'),
(31, 25, 1, 1, 7320000, '2019-03-31 17:14:04', '2019-03-31 17:14:04'),
(35, 27, 4, 1, 29890000, '2019-04-22 07:03:37', '2019-04-22 07:03:37'),
(36, 28, 1, 1, 6588000, '2019-04-28 14:11:03', '2019-04-28 14:11:03'),
(37, 29, 1, 1, 6588000, '2019-05-07 03:28:09', '2019-05-07 03:28:09'),
(38, 29, 7, 1, 6950000, '2019-05-07 03:28:09', '2019-05-07 03:28:09'),
(39, 30, 9, 1, 85794000, '2019-05-07 03:28:44', '2019-05-07 03:28:44'),
(40, 30, 4, 1, 29890000, '2019-05-07 03:28:44', '2019-05-07 03:28:44'),
(41, 31, 49, 1, 56931000, '2019-05-07 04:03:53', '2019-05-07 04:03:53'),
(42, 32, 19, 1, 1855000, '2019-05-07 04:12:14', '2019-05-07 04:12:14'),
(43, 32, 30, 1, 1650000, '2019-05-07 04:12:14', '2019-05-07 04:12:14'),
(44, 32, 33, 1, 2700000, '2019-05-07 04:12:14', '2019-05-07 04:12:14'),
(45, 33, 12, 1, 76664000, '2019-05-15 09:25:28', '2019-05-15 09:25:28'),
(46, 33, 6, 2, 198716000, '2019-05-15 09:25:28', '2019-05-15 09:25:28'),
(47, 34, 1, 1, 6588000, '2024-03-03 15:25:36', '2024-03-03 15:25:36'),
(48, 35, 1, 2, 6588000, '2024-03-14 17:31:48', '2024-03-14 17:31:48'),
(49, 35, 3, 2, 49750000, '2024-03-14 17:31:48', '2024-03-14 17:31:48'),
(50, 36, 1, 1, 6588000, '2024-03-14 17:32:05', '2024-03-14 17:32:05');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_type` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(250) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `id_type`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 'sofa bộ', 'cung cấp các bộ sofa chất lượng', NULL, NULL),
(2, 1, 'sofa góc', 'cung cấp các bộ sofa góc chất lượng', NULL, NULL),
(3, 1, 'sofa băng dài', 'cung cấp các loại sofa băng dài', NULL, NULL),
(4, 1, 'sofa giường', 'cung cấp các loại sofa giường', NULL, NULL),
(5, 1, 'ghế thư giãn', '', NULL, NULL),
(6, 1, 'Armchair', '', NULL, NULL),
(7, 1, 'Bàn trà', '', NULL, NULL),
(8, 1, 'Kệ tivi', '', NULL, NULL),
(9, 1, 'Vách ốp phòng khách', '', NULL, NULL),
(10, 1, 'kệ trang trí tủ sách', '', NULL, NULL),
(11, 2, 'Giường ngủ', 'cung cấp các loại giường ngủ cao cấp', '2019-04-12 11:33:07', '2019-04-12 15:47:39'),
(12, 2, 'Táp đầu giường', '<p>cung cấp c&aacute;c loại tap đầu giường đẹp chuẩn</p>', '2019-04-13 16:44:28', '2019-04-13 16:44:28'),
(13, 2, 'Tủ cá nhân', 'bán các loại tủ cá nhân', '2019-04-13 17:07:58', '2019-04-13 17:07:58'),
(14, 2, 'Tủ quần áo', 'bán các loại tủ quần áo', '2019-04-13 17:08:32', '2019-04-13 17:08:32'),
(15, 2, 'Bàn trang điểm', 'bán các loại bàn trang điểm', '2019-04-13 17:08:58', '2019-04-13 17:08:58'),
(16, 2, 'Kệ tivi phòng ngủ', 'bán các loại kệ tivi', '2019-04-13 17:10:48', '2019-04-13 17:10:48'),
(17, 2, 'Bàn làm việc', 'bán các loại bàn làm việc', '2019-04-13 17:11:11', '2019-04-13 17:11:11'),
(18, 2, 'Ghế', 'bán các loại ghế', '2019-04-13 17:11:34', '2019-04-13 17:11:34'),
(19, 2, 'Vách ốp phòng ngủ', 'bán các loại vách ốp dành cho không gian phòng ngủ của bạn', '2019-04-13 17:12:09', '2019-04-13 17:12:09'),
(20, 3, 'Bàn ăn', 'bán các loại bàn ăn với mẫu mã đẹp phù hợp tất cả không gian của ngôi nhà', '2019-04-13 17:13:07', '2019-04-13 17:13:07'),
(21, 3, 'Ghế ăn', 'bán các loại ghế ăn', '2019-04-13 17:13:28', '2019-04-13 17:13:28'),
(22, 3, 'Tủ buffet', 'cung cấp các loại Tủ buffet', '2019-04-13 17:13:54', '2019-04-13 17:13:54'),
(23, 3, 'Tủ rượu', 'cung cấp các mẫu tủ rượu đẹp', '2019-04-13 17:14:29', '2019-04-13 17:14:29'),
(24, 3, 'Ghế quầy bar', 'cung cấp các mẫu ghế quầy bar', '2019-04-13 17:14:57', '2019-04-13 17:14:57'),
(25, 4, 'Thảm trang trí', 'cung cấp các loại thảm trang trí cho căn phòng của bạn', '2019-04-13 17:15:40', '2019-04-13 17:15:40'),
(26, 4, 'Bình hoa', 'cung cấp các mẫu bình hoa trang trí', '2019-04-13 17:16:06', '2019-04-13 17:16:06'),
(27, 4, 'Bình trang trí', 'cung cấp các mẫu bình trang trí', '2019-04-13 17:16:28', '2019-04-13 17:16:28'),
(28, 4, 'Đèn trang trí', 'cung cấp các mẫu đèn trang trí', '2019-04-13 17:17:05', '2019-04-13 17:17:05'),
(29, 4, 'Tranh in hiện đại', 'cung cấp các mẫu tranh in hiện đại', '2019-04-13 17:17:47', '2019-04-13 17:17:47');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_user` int(10) UNSIGNED NOT NULL,
  `id_product` int(10) UNSIGNED NOT NULL,
  `content` varchar(2000) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `comment`
--

INSERT INTO `comment` (`id`, `id_user`, `id_product`, `content`, `created_at`, `updated_at`) VALUES
(1, 7, 40, 'thiết kế đẹp và sang trọng', '2019-04-14 17:00:00', NULL),
(4, 7, 40, 'oh good', '2019-04-14 17:00:00', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
--

CREATE TABLE `customer` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `note` varchar(200) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `customer`
--

INSERT INTO `customer` (`id`, `name`, `gender`, `email`, `address`, `phone_number`, `note`, `created_at`, `updated_at`) VALUES
(17, 'đỗ văn tuyển', 'nam', 'tuyendo230@gmail.com', '196 mỹ hào', '0369712385', 'ok tới đây đi em yêu', '2019-03-28 15:32:44', '2019-03-28 15:32:44'),
(18, 'tuyển đỗ', 'nam', 'tuyen1412@gmail.com', 'khoái châu - hưng yên', '0361231124', 'ok nào', '2019-03-28 15:39:10', '2019-03-28 15:39:10'),
(19, 'nguyễn ly', 'nữ', 'lynguyen97@gmail.com', '196 mỹ hào - Hưng Yên', '0981123121', 'Giao hàng trước ngày 01/04/2019', '2019-03-28 15:51:29', '2019-03-28 15:51:29'),
(24, 'hoàng linh', 'nữ', 'hoanglinh@gmail.com', '196 mỹ hào hưng yên', '03612311241', 'ok', '2019-04-28 16:00:12', '2019-04-28 16:00:12'),
(26, 'Đỗ Văn Tuyển', 'nam', 'tuyendo1121@gmail.com', 'Đội 7- Thôn Năm Mẫu - Xã Tứ Dân, Huyện Khoái Châu - Tỉnh Hưng Yên', '+84369712385', 'ok nhớ giao hàng đúng ngày', '2019-04-02 10:46:50', '2019-04-02 10:46:50'),
(28, 'Đỗ Văn Tuyển', 'nam', 'dotuyen141297@gmail.com', 'Đội 7- Thôn Năm Mẫu - Xã Tứ Dân, Huyện Khoái Châu - Tỉnh Hưng Yên', '0369712385', 'ok nhanh nhé', '2019-04-28 14:11:03', '2019-04-28 14:11:03'),
(30, 'ngô tùng', 'nam', 'tungngo97@gmail.com', 'Năm Mẫu - Tứ Dân - Khoái Châu - Hưng Yên, An Tháp - Nhân Hòa - Mỹ Hào - Hưng Yên', '03214121412', NULL, '2019-04-28 16:09:24', '2019-04-28 16:09:24'),
(31, 'Đỗ Văn Tuyển', 'nam', 'dotuyen141297@gmail.com', 'Đội 7- Thôn Năm Mẫu - Xã Tứ Dân, Huyện Khoái Châu - Tỉnh Hưng Yên', '0369712385', 'chuyển nhanh cho mình nhé', '2019-05-07 03:25:49', '2019-05-07 03:25:49'),
(32, 'Đỗ Văn Tuyển', 'nam', 'dotuyen141297@gmail.com', 'Đội 7- Thôn Năm Mẫu - Xã Tứ Dân, Huyện Khoái Châu - Tỉnh Hưng Yên', '0369712385', 'chuyển nhanh cho mình nhé', '2019-05-07 03:28:09', '2019-05-07 03:28:09'),
(33, 'Đỗ Văn Tuyển', 'nam', 'dotuyen141297@gmail.com', 'Đội 7- Thôn Năm Mẫu - Xã Tứ Dân, Huyện Khoái Châu - Tỉnh Hưng Yên', '0369712385', 'mang nhanh qua cho minh nhé.', '2019-05-07 03:28:44', '2019-05-07 03:28:44'),
(34, 'hoàng linh', 'nữ', 'linhhoang97@gmail.com', 'tân dân - khoái châu- hưng yên', '0942259234', 'giao hàng cẩn thận cho mình', '2019-05-07 04:03:53', '2019-05-07 04:03:53'),
(35, 'ngô trung', 'nam', 'trungngo1121@gmail.com', 'số 69 đường nguyễn văn linh- tp Hưng Yên', '09133153124', 'chuyển hàng cẩn thận nhé', '2019-05-07 04:12:14', '2019-05-07 04:12:14'),
(36, 'Tuyển đỗ', 'nam', 'dotuyen016@gmail.com', 'hưng yên - khoái châu', '01213219653', 'Ghi Chú', '2019-05-15 09:25:28', '2019-05-15 09:25:28'),
(37, 'Nam Per', 'nam', 'phuongnam@gmail.com', 'Campuchia', '0987654321', 'Ghi Chú', '2024-03-03 15:25:36', '2024-03-03 15:25:36'),
(38, 'Nam Per', 'nam', 'phuongnam@gmail.com', 'Campuchia', '0987654321', 'Ghi Chú', '2024-03-03 15:25:40', '2024-03-03 15:25:40'),
(39, 'Nam Per', 'nam', 'phuongnam@gmail.com', 'Campuchia', '0987654321', 'Ghi Chú', '2024-03-14 17:31:48', '2024-03-14 17:31:48'),
(40, 'Nam Per', 'nam', 'phuongnam@gmail.com', 'Campuchia', '0987654321', 'Ghi Chú', '2024-03-14 17:32:05', '2024-03-14 17:32:05');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `employees`
--

CREATE TABLE `employees` (
  `id` int(10) UNSIGNED NOT NULL,
  `name_employees` varchar(100) NOT NULL COMMENT 'tên nhân viên',
  `email` varchar(100) NOT NULL COMMENT 'email',
  `address` varchar(250) NOT NULL COMMENT 'địa chỉ',
  `phone` varchar(20) NOT NULL COMMENT 'số điện thoại',
  `gender` varchar(10) NOT NULL COMMENT 'giới tính',
  `position` varchar(100) NOT NULL COMMENT 'chức vụ',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `employees`
--

INSERT INTO `employees` (`id`, `name_employees`, `email`, `address`, `phone`, `gender`, `position`, `created_at`, `updated_at`) VALUES
(1, 'tuyển đỗ', 'tuyendo230@gmail.com', 'Khoái châu - Hưng yên', '0369712385', 'nam', 'quản lý', NULL, '2019-05-06 03:16:59'),
(2, 'lê thùy', 'thuyle21@gmail.com', 'từ liêm - hà nội', '0368813131', 'nữ', 'nhân viên bán hàng', '2019-05-06 03:21:47', '2019-05-06 03:21:47');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `import_bill`
--

CREATE TABLE `import_bill` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_import_bill_detail` int(10) UNSIGNED NOT NULL,
  `total_price` float NOT NULL,
  `id_employees` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `import_bill`
--

INSERT INTO `import_bill` (`id`, `id_import_bill_detail`, `total_price`, `id_employees`, `created_at`, `updated_at`) VALUES
(1, 2, 91000000, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `import_bill_detail`
--

CREATE TABLE `import_bill_detail` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_product` int(10) UNSIGNED NOT NULL COMMENT 'mã sản phẩm',
  `id_type_product` int(10) UNSIGNED NOT NULL COMMENT 'mã loại sp',
  `id_category` int(10) UNSIGNED NOT NULL COMMENT 'mã danh mục',
  `id_supplier` int(10) UNSIGNED NOT NULL COMMENT 'mã nhà cung cấp',
  `quantity` int(10) NOT NULL COMMENT 'số lượng',
  `unit_price` float NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `import_bill_detail`
--

INSERT INTO `import_bill_detail` (`id`, `id_product`, `id_type_product`, `id_category`, `id_supplier`, `quantity`, `unit_price`, `created_at`, `updated_at`) VALUES
(1, 33, 4, 27, 1, 100, 1290000, NULL, NULL),
(2, 34, 1, 7, 6, 20, 4550000, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id` int(10) NOT NULL,
  `title` varchar(2000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'tiêu đề',
  `summary` varchar(2000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tóm tắt',
  `content` varchar(5000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'nội dung',
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'hình',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`id`, `title`, `summary`, `content`, `image`, `created_at`, `updated_at`) VALUES
(1, 'NỘI THẤT HOÀN MỸ TUYỂN DỤNG HÀNG LOẠT VỊ TRÍ, ĐÃI NGỘ HẤP DẪN', '<p><strong><em>Nằm trong định hướng kinh doanh, C&ocirc;ng ty CP Tập đo&agrave;n Nội thất Ho&agrave;n Mỹ cần tuyển th&ecirc;m 03 vị tr&iacute; l&agrave;m việc tại H&agrave; Nội gồm Nh&acirc;n vi&ecirc;n b&aacute;n h&agrave;ng Online, Nh&acirc;n vi&ecirc;n kế to&aacute;n ki&ecirc;m b&aacute;n h&agrave;ng v&agrave; Nh&acirc;n vi&ecirc;n kinh doanh.</em></strong></p>', '<ul>\r\n	<li>Vị tr&iacute; B&aacute;n h&agrave;ng Online\r\n	<ul>\r\n		<li>Nhiệm vụ: Trả lời comment Facebook, tư vấn b&aacute;n h&agrave;ng online, Tư vấn trực tiếp cho kh&aacute;ch h&agrave;ng đến tham quan v&agrave; mua sản phẩm tại Showroom, đ&oacute;ng g&oacute;p &yacute; tưởng v&agrave; triển khai c&aacute;c chương tr&igrave;nh khuyến mại.</li>\r\n		<li>Địa điểm l&agrave;m việc tại Gian h&agrave;ng B2 &ndash; R1 &ndash; 21 &ndash; 22, TTTM Vincom Megamall Royal City, 72A Nguyễn Tr&atilde;i, Thanh Xu&acirc;n. Tổng thu nhập từ 7 &ndash; 15 triệu/th&aacute;ng gồm lương cứng v&agrave; hoa hồng.</li>\r\n	</ul>\r\n	</li>\r\n	<li>Nh&acirc;n vi&ecirc;n Kế to&aacute;n ki&ecirc;m b&aacute;n h&agrave;ng\r\n	<ul>\r\n		<li>Nhiệm vụ: Kiểm tra số lượng h&agrave;ng h&oacute;a,t&iacute;nh lương cho nh&acirc;n vi&ecirc;n tại Showroom, hỗ trợ nh&acirc;n vi&ecirc;n b&aacute;n h&agrave;ng của Showroom.</li>\r\n		<li>Địa điểm l&agrave;m việc tại Showroom Royal city (Gian h&agrave;ng B2 &ndash; R1 &ndash; 21 &ndash; 22, TTTM Vincom Megamall Royal City, 72A Nguyễn Tr&atilde;i, Thanh Xu&acirc;n) hoặc Showroom Ho&agrave;n Mỹ Phạm Văn Đồng.&nbsp; Tổng thu nhập của nh&acirc;n vi&ecirc;n kế to&aacute;n dao động từ 10 &ndash; 15 triệu đồng/th&aacute;ng bao gồm lương cứng 7,5 triệu/th&aacute;ng &nbsp;v&agrave; thưởng doanh số.</li>\r\n	</ul>\r\n	</li>\r\n	<li>Nh&acirc;n vi&ecirc;n kinh doanh\r\n	<ul>\r\n		<li>Nhiệm vụ: T&igrave;m kiếm, chăm s&oacute;c kh&aacute;ch h&agrave;ng, tư vấn sản phẩm &amp; dịch vụ của c&ocirc;ng ty, đảm bảo ho&agrave;n th&agrave;nh chỉ ti&ecirc;u doanh số theo th&aacute;ng, qu&yacute;,năm.</li>\r\n		<li>Địa điểm l&agrave;m việc tại Trụ sở ch&iacute;nh &ndash; số nh&agrave; 1A, ng&otilde; 199 Trường Chinh, Thanh Xu&acirc;n, H&agrave; Nội. Tổng thu nhập b&igrave;nh qu&acirc;n h&agrave;ng th&aacute;ng sẽ ở mức 10-30 triệu gồm lương cứng v&agrave; hoa hồng.</li>\r\n	</ul>\r\n	</li>\r\n	<li>Nh&acirc;n vi&ecirc;n thiết kế đồ họa\r\n	<ul>\r\n		<li>Nhiệm vụ:&nbsp;Thiết kế h&igrave;nh ảnh sản phẩm phục vụ Marketing online ,&nbsp;Thiết kế biển quảng c&aacute;o, trang tr&iacute; Showroom,&nbsp;Đề xuất &yacute; tưởng s&aacute;ng tạo, lựa chọn chất liệu, phương &aacute;n thi c&ocirc;ng ph&ugrave; hợp y&ecirc;u cầu, đạt hiệu quả</li>\r\n		<li>Địa điểm l&agrave;m việc tại Trụ sở ch&iacute;nh &ndash; số nh&agrave; 1A, ng&otilde; 199 Trường Chinh, Thanh Xu&acirc;n, H&agrave; Nội. Tổng thu nhập từ 8 -15 triệu/th&aacute;ng gồm lương cứng v&agrave; hoa hồng.<img alt=\"\" src=\"/ckfinder/ckfinder/images/tin-tuc-1.jpg\" style=\"width: 550px; height: 467px;\" /></li>\r\n	</ul>\r\n	</li>\r\n</ul>', 'tin-tuc-1.jpg', '2019-04-14 16:48:10', '2019-04-14 16:48:10'),
(2, 'THI CÔNG NỘI THẤT – TẶNG SOFA CHẤT.', '<p>Hạng mục thi c&ocirc;ng &ndash; thiết kế nh&agrave; ở lu&ocirc;n l&agrave; niềm tự h&agrave;o của Thương hiệu Nội thất Ho&agrave;n Mỹ, với loạt c&ocirc;ng tr&igrave;nh thực tế theo phong c&aacute;ch Ch&acirc;u &Acirc;u hiện đại sang trọng, đạt độ ch&iacute;nh x&aacute;c cao, chuẩn bản phối dựng 3D v&agrave; đem lại sự h&agrave;i l&ograve;ng tuyệt đối cho Kh&aacute;ch h&agrave;ng.</p>', '<p>Hạng mục thi c&ocirc;ng &ndash; thiết kế nh&agrave; ở lu&ocirc;n l&agrave; niềm tự h&agrave;o của Thương hiệu Nội thất Ho&agrave;n Mỹ, với loạt c&ocirc;ng tr&igrave;nh thực tế theo phong c&aacute;ch Ch&acirc;u &Acirc;u hiện đại sang trọng, đạt độ ch&iacute;nh x&aacute;c cao, chuẩn bản phối dựng 3D v&agrave; đem lại sự h&agrave;i l&ograve;ng tuyệt đối cho Kh&aacute;ch h&agrave;ng</p>\r\n\r\n<p>Nh&acirc;n dịp đầu xu&acirc;n năm mới, Nội thất Ho&agrave;n Mỹ xin gửi tới Qu&yacute; Kh&aacute;ch h&agrave;ng chương tr&igrave;nh ưu đ&atilde;i &ldquo;v&agrave;ng&rdquo; đầu ti&ecirc;n của năm Kỷ Hợi 2019 thay cho những lời ch&uacute;c t&agrave;i lộc, may mắn v&agrave; th&agrave;nh c&ocirc;ng.</p>\r\n\r\n<p>Thời gian: Từ 18/02/2019</p>\r\n\r\n<p>100 kh&aacute;ch h&agrave;ng đầu ti&ecirc;n k&iacute; kết Hợp đồng trọn g&oacute;i Thiết kế &ndash; Sản xuất &ndash; Thi C&ocirc;ng của Ho&agrave;n Mỹ Decor c&oacute; tổng gi&aacute; trị từ 100 triệu đồng trở l&ecirc;n sẽ được tặng ghế Sofa từ thương hiệu Nội thất Ho&agrave;n Mỹ c&oacute; gi&aacute; trị tương ứng 15% gi&aacute; trị sản xuất gỗ (kh&ocirc;ng bao gồm gi&aacute; trị phụ kiện v&agrave; c&aacute;c vật liệu kh&aacute;c) trong hợp đồng.</p>\r\n\r\n<p>Quy định kh&aacute;c</p>\r\n\r\n<p>&ndash; Kh&aacute;ch h&agrave;ng k&yacute; hợp đồng v&agrave; đặt cọc theo quy định của Ho&agrave;n Mỹ trong thời gian diễn ra chương tr&igrave;nh.</p>\r\n\r\n<p>&ndash; Sản phẩm được tặng sẽ được giao khi Kh&aacute;ch h&agrave;ng thanh to&aacute;n tối thiểu 85% gi&aacute; trị Hợp đồng sản xuất.</p>\r\n\r\n<p>&ndash; Gi&aacute; trị Sofa được x&aacute;c định theo đ&uacute;ng gi&aacute; ni&ecirc;m yết tr&ecirc;n Website noithathoanmy.com.vn; v&agrave; kh&ocirc;ng c&oacute; gi&aacute; trị quy đổi th&agrave;nh tiền mặt.</p>\r\n\r\n<p>&ndash; Chương tr&igrave;nh kh&ocirc;ng &aacute;p dụng đối với c&aacute;c set sản phẩm.</p>\r\n\r\n<p>&ndash; Kh&aacute;ch h&agrave;ng c&oacute; thể thanh to&aacute;n th&ecirc;m phần ch&ecirc;nh lệch tăng để chọn Sofa c&oacute; gi&aacute; trị cao hơn; trong trường hợp chọn Sofa c&oacute; gi&aacute; trị thấp hơn, Kh&aacute;ch h&agrave;ng kh&ocirc;ng được ho&agrave;n tiền phần ch&ecirc;nh lệch giảm.</p>\r\n\r\n<p>Li&ecirc;n hệ</p>\r\n\r\n<p>Hotline: 1800 6971 &ndash; 0922 06 6969</p>\r\n\r\n<p>Website: noithathoanmy.com.vn</p>\r\n\r\n<p>hoặc</p>\r\n\r\n<p>HỆ THỐNG SHOWROOM NỘI THẤT HO&Agrave;N MỸ tại H&agrave; Nội v&agrave; TP. Hồ Ch&iacute; Minh<br />\r\nShowroom 1 &ndash; H&Agrave; NỘI [C&oacute; căn hộ mẫu]<br />\r\nGian h&agrave;ng 313, tầng 3, TTTM Vincom Plaza Long Bi&ecirc;n, Phường Việt Hưng, Quận Long Bi&ecirc;n.</p>\r\n\r\n<p>Showroom 2 &ndash; H&Agrave; NỘI<br />\r\nTầng 2, TTTM M&ecirc; Linh Plaza, Km số 8, Đường cao tốc Thăng Long &ndash; Nội B&agrave;i.</p>\r\n\r\n<p>Showroom 3 &ndash; H&Agrave; NỘI<br />\r\nGian h&agrave;ng B2 &ndash; R1 &ndash; 21 &ndash; 22, TTTM Vincom Megamall Royal City, 72A Nguyễn Tr&atilde;i, Thanh Xu&acirc;n.</p>\r\n\r\n<p>Showroom 1 &ndash; HỒ CH&Iacute; MINH [C&oacute; căn hộ mẫu]<br />\r\nSố nh&agrave; 12 Đường Nguyễn Cơ Thạch (khu đ&ocirc; thị Sala Đại Quang Minh), Phường An Lợi Đ&ocirc;ng, Quận 2.</p>\r\n\r\n<p>Showroom 2 &ndash; HỒ CH&Iacute; MINH<br />\r\nLầu 4, Khu Mua Sắm Đệ Nhất Phan Khang. Số 431A Đường Ho&agrave;ng Văn Thụ, P.4, Q. T&acirc;n B&igrave;nh.</p>', 'tin-tuc-2.jpg', '2019-04-14 17:43:09', '2019-04-14 17:43:09'),
(4, 'NỘI THẤT HOÀN MỸ KHAI TRƯƠNG SHOWROOM THỨ 10 TẠI QUẢNG NINH', '<p>Nội thất Ho&agrave;n Mỹ đ&aacute;nh dấu một năm 2018 ph&aacute;t triển rực rỡ với showroom nội thất cao cấp, mang phong c&aacute;ch Ch&acirc;u &Acirc;u hiện đại tr&ecirc;n &ldquo;đất mỏ&rdquo; Quảng Ninh.</p>', '<p>Nội thất Ho&agrave;n Mỹ đ&aacute;nh dấu một năm 2018 ph&aacute;t triển rực rỡ với showroom nội thất cao cấp, mang phong c&aacute;ch Ch&acirc;u &Acirc;u hiện đại tr&ecirc;n &ldquo;đất mỏ&rdquo; Quảng Ninh.<br />\r\nV&agrave;o 09h30 ng&agrave;y 01/01/2019, showroom thứ 10 trong hệ thống ph&acirc;n phối nội thất cao cấp của Nội thất Ho&agrave;n Mỹ với diện t&iacute;ch 900m2 tại trung t&acirc;m th&agrave;nh phố biển Hạ Long, ch&iacute;nh thức ra mắt. C&aacute;c sản phẩm trưng b&agrave;y đồng nhất với to&agrave;n bộ hệ thống showroom tr&ecirc;n to&agrave;n quốc, đến từ c&aacute;c thương hiệu nổi tiếng của &Yacute;, Malaysia v&agrave; c&aacute;c thiết kế mới nhất của ch&iacute;nh Ho&agrave;n Mỹ. Phong c&aacute;ch Ch&acirc;u &Acirc;u hiện đại ph&ugrave; hợp với phần lớn kh&ocirc;ng gian sống của c&aacute;c căn hộ, nh&agrave; phố, biệt thự hạng sang. Sự kiện khai trương thu h&uacute;t nhiều kh&aacute;ch mời l&agrave; đại diện những thương hiệu nội thất cao cấp, kiến tr&uacute;c sư, nh&agrave; thiết kế, c&aacute;c kh&aacute;ch h&agrave;ng th&acirc;n thiết của Ho&agrave;n Mỹ trong v&agrave; ngo&agrave;i nước. Tham dự chương tr&igrave;nh, kh&aacute;ch mời c&oacute; thể trực tiếp ngắm nh&igrave;n đường n&eacute;t thiết kế tinh tế v&agrave; trải nghiệm chất lượng cao cấp của từng d&ograve;ng sản phẩm, kết hợp c&ugrave;ng sự tư vấn từ đội ngũ KTS, nh&acirc;n vi&ecirc;n tư vấn chuy&ecirc;n nghiệp, từ đ&oacute; đưa ra những quyết định ph&ugrave; hợp nhất cho kh&ocirc;ng gian sống của gia đ&igrave;nh. Ho&agrave;n Mỹ cam kết mang lại mức gi&aacute; cạnh tranh nhất, lu&ocirc;n v&igrave; lợi &iacute;ch của người ti&ecirc;u d&ugrave;ng Việt. V&agrave; để đ&aacute;nh dấu mốc ph&aacute;t triển vượt bậc c&ugrave;ng Showroom thứ 10 &ldquo;tr&ograve;n trĩnh&rdquo;, c&aacute;c kh&aacute;ch h&agrave;ng đều được hưởng mức chiết khấu 10% trực tiếp khi mua h&agrave;ng tại Showroom từ 01 đến 31/01/2019. K&egrave;m theo đ&oacute; l&agrave; loạt chương tr&igrave;nh qu&agrave; tặng hấp dẫn như: &ndash; Tặng Gift voucher 10% cho c&aacute;c lần mua h&agrave;ng tiếp theo; &ndash; Tặng thẻ VIP cho ho&aacute; đơn mua sắm tr&ecirc;n 100 triệu đồng; &ndash; Cơ hội tham gia bốc thăm tr&uacute;ng thưởng với c&aacute;c phần thưởng c&oacute; gi&aacute; trị: Iphone XS Max, sofa Toscana, b&agrave;n ăn Ho&agrave;n Mỹ.<br />\r\n&ldquo;Việc ra mắt showroom thứ 10 tại Quảng Ninh kh&ocirc;ng chỉ thể hiện sự lớn mạnh của thương hiệu m&agrave; c&ograve;n l&agrave; sự nỗ lực của đội ngũ Ho&agrave;n Mỹ mong muốn hiện thực h&oacute;a c&aacute;c l&yacute; tưởng sống sang trọng, tiện nghi, thẩm mỹ cao v&agrave; chất lượng quốc tế đến với rộng r&atilde;i người ti&ecirc;u d&ugrave;ng Việt, đến mọi tỉnh th&agrave;nh, v&ugrave;ng miền của Việt Nam&rdquo;, &ocirc;ng Ho&agrave;ng Quốc H&ugrave;ng &ndash; Tổng gi&aacute;m đốc Nội thất Ho&agrave;n Mỹ cho biết.<br />\r\nNội thất Ho&agrave;n Mỹ l&agrave; nơi quy tụ những sản phẩm nội thất nổi tiếng thế giới tại Việt Nam, đặc biệt l&agrave; c&aacute;c thương hiệu lớn, như nội thất Calia của &Yacute;, Nieri của &Yacute;, Livani, Omega của Malaysia, &hellip; c&ugrave;ng c&aacute;c thiết bị c&ocirc;ng năng, phụ kiện từ c&aacute;c h&atilde;ng Malloca (T&acirc;y Ban Nha), Hafele, Hettich, Imundex (Đức)&hellip;<br />\r\nVới 20 năm hoạt động, Nội thất Ho&agrave;n Mỹ cung cấp nội thất v&agrave; dịch vụ thi c&ocirc;ng &ndash; thiết kế trọn g&oacute;i cho to&agrave;n bộ kh&ocirc;ng gian sống. Kh&ocirc;ng chỉ đầu tư mạnh về cơ sở vật chất, doanh nghiệp c&ograve;n ch&uacute; trọng ph&aacute;t triển đội ngũ nh&acirc;n sự chuy&ecirc;n nghiệp, kỹ năng l&agrave;m việc nh&oacute;m cao, đảm bảo c&ocirc;ng tr&igrave;nh lu&ocirc;n đạt đ&uacute;ng tiến độ ở mức chất lượng tốt nhất.</p>\r\n\r\n<p><img alt=\"\" src=\"/ckfinder/ckfinder/images/Quang-Ninh_1_4.jpg\" style=\"height:467px; width:700px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"/ckfinder/ckfinder/images/Quang-Ninh_2_4.jpg\" style=\"height:467px; width:700px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"/ckfinder/ckfinder/images/Quang-Ninh_3_4.jpg\" style=\"height:467px; width:700px\" /></p>', 'tin-tuc-4.jpg', '2019-04-21 17:46:30', '2019-04-21 17:46:30'),
(3, 'THÔNG BÁO LỊCH NGHỈ TẾT NGUYÊN ĐÁN 2019', '<p>Nội thất Ho&agrave;n Mỹ xin gửi tới đến to&agrave;n thể Qu&yacute; kh&aacute;ch h&agrave;ng LỊCH NGHỈ TẾT Nguy&ecirc;n Đ&aacute;n 2019 như sau:</p>', '<p>Hệ thống Showroom Nội thất Ho&agrave;n Mỹ tại H&agrave; Nội v&agrave; TP. Hồ Ch&iacute; Minh<br />\r\nShowroom 1 &ndash; H&Agrave; NỘI [C&oacute; căn hộ mẫu]<br />\r\nGian h&agrave;ng 313, tầng 3, TTTM Vincom Plaza Long Bi&ecirc;n, Phường Việt Hưng, Quận Long Bi&ecirc;n.<br />\r\nL&agrave;m việc hết ng&agrave;y 03/02/2019 (tức 29 &Acirc;m lịch) &ndash; mở cửa trở lại ng&agrave;y 09/02/2019 (tức m&ugrave;ng 5 &Acirc;m lịch).</p>\r\n\r\n<p>&nbsp;Showroom 2 &ndash; H&Agrave; NỘI<br />\r\nTầng 2, TTTM M&ecirc; Linh Plaza, Km số 8, Đường cao tốc Thăng Long &ndash; Nội B&agrave;i.<br />\r\nL&agrave;m việc hết ng&agrave;y 03/02/2019 (tức 29 &Acirc;m lịch) &ndash; mở cửa trở lại ng&agrave;y 10/02/2019 (tức m&ugrave;ng 6 &Acirc;m lịch).</p>\r\n\r\n<p>Showroom 3 &ndash; H&Agrave; NỘI<br />\r\nGian h&agrave;ng B2 &ndash; R1 &ndash; 21 &ndash; 22, TTTM Vincom Megamall Royal City, 72A Nguyễn Tr&atilde;i, Thanh Xu&acirc;n.<br />\r\nL&agrave;m việc hết ng&agrave;y 03/02/2019 (tức 29 &Acirc;m lịch) &ndash; mở cửa trở lại ng&agrave;y 08/02/2019 (tức m&ugrave;ng 4 &Acirc;m lịch).</p>\r\n\r\n<p>Showroom 1 &ndash; HỒ CH&Iacute; MINH [C&oacute; căn hộ mẫu]<br />\r\nSố nh&agrave; 12 Đường Nguyễn Cơ Thạch (khu đ&ocirc; thị Sala Đại Quang Minh), Phường An Lợi Đ&ocirc;ng, Quận 2.<br />\r\nL&agrave;m việc đến 12h ng&agrave;y 02/02/2019 (tức 28 &Acirc;m lịch) &ndash; mở cửa trở lại ng&agrave;y 11/02/2019 (tức m&ugrave;ng 7 &Acirc;m lịch).</p>\r\n\r\n<p>Showroom 2 &ndash; HỒ CH&Iacute; MINH<br />\r\nLầu 4, Khu Mua Sắm Đệ Nhất Phan Khang, Số 431A Đường Ho&agrave;ng Văn Thụ, P.4, Q. T&acirc;n B&igrave;nh.<br />\r\nL&agrave;m việc đến 12h ng&agrave;y 02/02/2019 (tức 28 &Acirc;m lịch) &ndash; mở cửa trở lại ng&agrave;y 11/02/2019 (tức m&ugrave;ng 7 &Acirc;m lịch).</p>\r\n\r\n<p>Hệ thống b&aacute;n h&agrave;ng Online v&agrave; Chăm s&oacute;c kh&aacute;ch h&agrave;ng l&agrave;m việc đến 12h ng&agrave;y 02/02/2019 (tức 28 &Acirc;m lịch) v&agrave; hoạt động trở lại ng&agrave;y 11/02/2019 (tức m&ugrave;ng 7 &Acirc;m lịch).<br />\r\nMọi nhu cầu đặt h&agrave;ng, tư vấn, bảo tr&igrave; sản phẩm, Qu&yacute; kh&aacute;ch vui l&ograve;ng để lại th&ocirc;ng tin tại:<br />\r\n<a href=\"https://www.noithathoanmy.com.vn/?fbclid=IwAR2Gt3f6kM9ZPqHmc1MEHh-xnTMQicqdnyDede1ItMlX0aS8NdEtdtOpe3w\" rel=\"noopener nofollow\" target=\"_blank\">https://www.noithathoanmy.com.vn/</a>&nbsp;,<br />\r\n<a href=\"https://www.facebook.com/noithathoanmy.com.vn/\">https://www.facebook.com/noithathoanmy.com.vn/</a></p>\r\n\r\n<p>K&iacute;nh ch&uacute;c Qu&yacute; kh&aacute;ch h&agrave;ng c&ugrave;ng gia đ&igrave;nh năm mới Kỷ Hợi:<br />\r\nSức khoẻ dồi d&agrave;o &ndash; Hạnh ph&uacute;c vi&ecirc;n m&atilde;n &ndash; May mắn ngập tr&agrave;n &ndash; Th&agrave;nh c&ocirc;ng vượt trội.<br />\r\nCh&uacute;c Mừng Năm Mới!</p>', 'tết-02.jpg', '2019-04-21 17:49:39', '2019-04-21 17:49:39');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `id_type` int(10) UNSIGNED DEFAULT NULL,
  `id_category` int(10) UNSIGNED DEFAULT NULL,
  `id_supplier` int(11) UNSIGNED DEFAULT NULL,
  `description` text DEFAULT NULL,
  `Parameter` varchar(500) NOT NULL COMMENT 'thông số',
  `origin` varchar(100) NOT NULL COMMENT 'xuất xứ',
  `material` varchar(250) NOT NULL COMMENT 'chất liệu',
  `unit_price` float DEFAULT NULL COMMENT 'giá gốc',
  `promotion_price` float DEFAULT NULL COMMENT 'giá sale',
  `image` varchar(255) DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL COMMENT 'đơn vị',
  `new` tinyint(4) DEFAULT 0,
  `status` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `id_type`, `id_category`, `id_supplier`, `description`, `Parameter`, `origin`, `material`, `unit_price`, `promotion_price`, `image`, `unit`, `new`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Táp đầu giường - BRS-H062-ST', 2, 12, 3, 'mẫu mã đẹp, kiểu dáng sang trọng', 'KÍCH THƯỚC L 700   W 435   H 510 (mm', 'Gỗ công nghiệp, cạnh viền bọc da Chân kim loại', 'Xuất xứ Malaysia', 7320000, 6588000, 'brs-h062.5.jpg', 'bộ', 1, 'đã hủy', '2016-10-26 03:00:16', '2019-05-09 07:39:18'),
(2, 'Táp đầu giường - BRS-W028-ST', 2, 12, NULL, 'thiết kế sang trọng và đẹp mắt', 'L 800   W 450   H 650 (mm)', 'Xuất xứ Malaysia', 'Gỗ công nghiệp. Bề mặt phủ laminate. Hai mặt bên ốp da. Chân kim loại', 9150000, 8235000, 'brs-w028.5.jpg', 'bộ', 1, NULL, '2016-10-26 03:00:16', '2019-04-14 11:17:10'),
(3, 'Giường da - HA319', 2, 11, NULL, 'màu sắc đẹp , độ rộng phù hợp với căn phòng ngủ của bạn.', 'KÍCH THƯỚC L 2120   W 2230   H 970 (mm).KÍCH THƯỚC ĐỆM 1800x2000 (mm)', 'Xuất xứ Trung Quốc. Thương hiệu Hoàn Mỹ', 'Khung giường bằng gỗ tự nhiên Dát giường: plywood kết hợp với khung đỡ bằng sắt sơn tĩnh điện Đầu gi', 49750000, 0, 'ha319.1.jpg', 'bộ', 0, NULL, '2016-10-26 03:00:16', '2019-04-14 11:19:15'),
(4, 'Giường-BRS-H062-KB', 2, 11, NULL, 'ĐẶC ĐIỂM NỔI BẬT CỦA GIƯỜNG - BRS-H062-KB\r\nGỗ chưa bao giờ là “hết thời” trong thiết kế phòng ngủ, đặc biệt là dành cho một chiếc giường vững chắc và bền bỉ với thời gian. Các thanh gỗ mộc mạc dưới bàn tay người thợ tạo nên một kết cấu phóng khoáng, trẻ trung mà vẫn giữ được sự ấm áp cho không gian.\r\nYếu tố quan trọng trong các thiết kế giường hiện đại chính là vừa có sự đơn giản, phóng khoáng song vẫn phải thể hiện được sự sang trọng và đẳng cấp không hề thua kém các thiết kế cổ điển hay tân cổ điển. Vì vậy các chi tiết da và nỉ bọc với màu sắc thuần nhất được thêm vào một cách khéo léo, đủ để tạo nên sự khác biệt trong phong cách và vẫn tạo được hiệu ứng thẩm mỹ tinh tế, thanh lịch cùng sự sang trọng vốn hiện hữu của phong cách châu Âu hiện đại. \r\nĐiểm nhấn thú vị trong bộ sưu tập các mẫu giường lần này nằm ở phần kệ đầu giường kiểu cách, được sáng tạo với nhiều hình dạng và kết cấu khác nhau, giúp không gian phòng ngủ có diện mạo hoàn hảo hơn. Phần kệ đầu giường này khi kết hợp hài hào với tổng thể sẽ đem đến một làn gió mới, một ấn tượng mới dành riêng cho không gian. Sở hữu những đường nét thiết kế sang trọng, hiện đại cùng màu sắc tinh tế, thanh lịch, bộ sưu tập giường ngủ mới nhất tại Nội thất Hoàn Mỹ chắc chắn sẽ không khiến bạn thất vọng.', 'KÍCH THƯỚC\r\nL 1988   W 2170   H 1478 (mm)', 'Xuất xứ Malaysia', 'Khung gỗ công nghiệp bọc da và vải màu 6012-4\r\nChân kim loại', 29890000, 0, 'brs-h062.1_1.jpg', 'bộ', 1, NULL, '2016-10-26 03:00:16', '2019-04-14 11:29:19'),
(5, ' Bàn trà - BCP-NK-SON-106SH-INOX', 1, 7, NULL, '', '', '', '', 7420000, 0, 'bcp-nk-son-106sh-inox.1.jpg', 'cái', 1, NULL, '2016-10-26 03:00:16', '2016-10-24 22:11:00'),
(6, 'Ghế sofa góc Nieri - 100300186', 1, 2, NULL, 'Là bộ sản phẩm độc quyền bán chạy nhất của thương hiệu Nieri từ năm 1992 đến nay, Sofa Corniche có thiết kế mang đậm phong cách cổ điển và truyền thống, phần khung với viền trang trí bằng gỗ óc chó sang trọng, mang đến nét chấm phá mới cho cuộc sống hiện đại. ', '', '', '', 283880000, 198716000, 'ghe-sofa-goc-nieri-10030018-noi-that-hoan-my_1_.jpg', 'bộ', 0, NULL, '2016-10-26 03:00:16', '2016-10-24 22:11:00'),
(7, 'Bàn trà mặt đá-BCP-MDV-DCT-CS', 1, 7, NULL, '', '', '', '', 6950000, 0, 'bcp-mdv-dct-cs.1a.jpg', 'cái', 1, NULL, '2016-10-26 03:00:16', '2016-10-24 22:11:00'),
(8, 'Ghế sofa da bộ Nieri - 100300113', 1, 1, NULL, '', '', '', '', 253620000, 177534000, 'ghe-sofa-da-bo-nieri-10030011-noi-that-hoan-my_1_.jpg', 'bộ', 0, NULL, '2016-10-26 03:00:16', '2016-10-24 22:11:00'),
(9, 'Tủ rượu AFLATUS - VS-13', 3, 23, NULL, '', '', '', '', 142990000, 85794000, 'tu_ruou_vs-13_rsz_compressed.jpg', 'bộ', 0, NULL, '2016-10-26 03:00:16', '2016-10-24 22:11:00'),
(11, 'Ghế ăn - HD6789[DH813]', 3, 21, NULL, '', '', '', '', 2170000, 0, 'dh6789.2.jpg', 'cái', 0, NULL, '2016-10-12 02:00:00', '2016-10-27 02:24:00'),
(12, 'Ghế sofa bộ Baopo - MG-A2032A-2', 1, 1, NULL, '', '', '', '', 109520000, 76664000, 'bo_sofa_ban_tra_mg_a2032a2_2_rsz_compressed.jpg', 'cái', 0, NULL, '2016-10-12 02:00:00', '2016-10-27 02:24:00'),
(13, 'Ghế ăn - 9-09M', 3, 21, NULL, '', '', '', '', 1950000, 0, '9-09m.2.jpg', 'cái', 1, NULL, '2016-10-12 02:00:00', '2016-10-27 02:24:00'),
(14, 'Bàn làm việc Baopo - MG-A2020', 2, 17, NULL, '', '', '', '', 40860000, 28602000, 'ban_mg-a2020_rsz_compressed.jpg', 'cái', 0, NULL, '2016-10-12 02:00:00', '2016-10-27 02:24:00'),
(15, 'Ghế ăn - 7-10MZ', 3, 21, NULL, '', '', '', '', 1400000, 0, '7-10mz.2.jpg', 'cái', 1, NULL, '2016-10-12 02:00:00', '2016-10-27 02:24:00'),
(16, 'Bàn ăn Baopo - MG-2050A-1', 3, 20, NULL, '', '', '', '', 40780000, 28546000, 'ban_an_mg-2050a-1_rsz_compressed.jpg', 'cái', 0, NULL, '2016-10-12 02:00:00', '2016-10-27 02:24:00'),
(17, 'Bàn soạn Status - HMPEDIVB305', 2, 17, NULL, '', '', '', '', 47360000, 28416000, 'b.soan_hmpedivb305_1_rsz_compressed.jpg', 'cái', 0, NULL, '2016-10-12 02:00:00', '2016-10-27 02:24:00'),
(18, 'Bàn trang điểm - BRS-H062-DS', 2, 15, NULL, '', '', '', '', 25620000, 0, 'brs-h062.12.jpg', 'cái', 0, NULL, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(19, 'Bình trang trí - CG641', 4, 27, NULL, '', '', '', '', 1855000, 0, 'cg-641.1.jpg', 'cái', 1, NULL, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(20, 'Bàn trang điểm - BP-ARC-PARC09-M2', 2, 15, NULL, '', '', '', '', 21420000, 0, 'bp-arc-parc09-m2_rsz_compressed.jpg', 'cái', 0, NULL, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(21, 'Bàn ăn Baopo - JL-A1050b', 3, 20, NULL, '', '', '', '', 37160000, 26012000, 'ban_an_jl-a1050b_rsz_compressed.jpg', 'cái', 0, NULL, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(22, '\r\nBình trang trí - CG642', 4, 27, NULL, '', '', '', '', 1290000, 0, 'cg-642.3.jpg', 'cái', 1, NULL, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(23, 'Bàn làm việc - BLV-MFC-204SH', 2, 17, NULL, '', '', '', '', 12280000, 0, 'blv-1.jpg', 'cái', 0, NULL, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(24, 'Bàn học Hoàn Mỹ - BH-MFC-030SH/941SL', 2, 17, NULL, '', '', '', '', 5250000, 0, 'bh-mfc-030-941sl_gs-mfc-941sl-1_2.jpg', 'cái', 0, NULL, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(25, 'Bộ bàn trà phòng ngủ Baopo ', 2, 7, NULL, '', '', '', '', 36130000, 25291000, 'ghe_mg_a2010a_3_rsz_compressed.jpg', 'bộ', 0, NULL, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(26, 'Vách ốp phòng ngủ - VOP04-ARC-PARC02', 2, 19, NULL, '', '', '', '', 2880000, 0, '4_40_1.jpg', 'bộ', 0, NULL, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(27, 'Ghế bàn ăn Segis - 521001304050', 3, 21, NULL, '', '', '', '', 1290000, 903000, 'ghe-ban-an-segis-52100130-noi-that-hoan-my_1_.jpg', 'cái', 0, NULL, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(28, 'Bàn trà - BCP-CN-VHT19-CS (1)', 1, 7, NULL, '', '', '', '', 5660000, 0, 'bcp-cn-vht19-cs.1_1.jpg', 'cái', 1, NULL, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(29, 'Vách ốp phòng ngủ - VOP01-MFC-221SH', 2, 19, NULL, '', '', '', '', 2530000, 0, '7_41_3.jpg', 'bộ', 0, NULL, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(30, 'Ghế ăn - HD001-BL103', 3, 21, NULL, '', '', '', '', 1650000, 0, 'hd001.2.jpg', 'cái', 1, NULL, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(31, 'Tủ rượu Status - HMAVDBLCMP01', 3, 23, NULL, '', '', '', '', 56240000, 33744000, 'hmavdblcmp01-1.jpg', 'cái', 0, NULL, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(32, 'Ghế sofa đơn Calia - CAL1018/4410', 1, 5, NULL, '', '', '', '', 41160000, 32928000, '1_10_2.jpg', 'cái', 0, NULL, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(33, 'Bình trang trí - CF2204', 4, 27, NULL, '', '', '', '', 2700000, 0, 'cf-2204.1.jpg', 'cái', 1, NULL, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(34, 'Bàn trà - BCP-T-VHT19-CS (3)', 1, 7, NULL, '', '', '', '', 4550000, 0, 'bcp-t-vht19-cs.1_1.jpg', 'cái', 1, NULL, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(35, 'Sofa vải 2,5 chỗ - A10M/A08-20A', 1, 3, NULL, '', '', '', '', 16820000, 0, 'a08-20a_b_.1.jpg', 'bộ', 1, NULL, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(36, 'Ghế sofa góc Omega - KH153L/3005', 1, 2, NULL, '', '', '', '', 63580000, 31790000, 'ghe-sofa-goc-omega-kh153l-3005-noi-that-hoan-my_1_.jpg', 'cái', 0, NULL, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(37, 'Bàn ăn Laminate-LK2118I', 3, 20, NULL, '', '', '', '', 21650000, 0, 'ba-3m-ctg-lk2118i.3.jpg', 'cái', 1, NULL, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(38, 'Tủ rượu Status - HMPEDIVV105', 3, 23, NULL, '', '', '', '', 52820000, 31692000, 't_hmpediw105_rsz_compressed.jpg', 'cái', 0, NULL, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(39, 'Sofa 2 chỗ Calia - 756/115 (2)', 1, 3, NULL, '', '', '', '', 60960000, 30480000, '6_40_1.jpg', 'bộ', 0, NULL, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(40, 'Bộ bàn trà phòng ngủ AFLATUS - VS-27', 2, 7, NULL, '', '', '', '', 50290000, 30174000, 'bo_ban_tra_vs-27_rsz_compressed.jpg', 'bộ', 0, NULL, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(41, 'Ghế sofa đơn Calia - 52020020', 1, 5, NULL, '', '', '', '', 42520000, 29764000, 'ghe-sofa-don-calia-52020020-noi-that-hoan-my_1__1.jpg', 'cái', 0, NULL, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(42, 'Ghế sofa da bộ Omega - 10090181225', 1, 1, NULL, '', '', '', '', 73890000, 59112000, 'ghe-sofa-da-bo-omega-10090181-noi-that-hoan-my_1_.jpg', 'bộ', 0, NULL, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(43, 'Sofa da bộ Calia - CAL1013/115', 1, 1, NULL, '', '', '', '', 150180000, 0, 'cal1013_115.jpg', 'bộ', 1, NULL, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(44, 'kệ tivi - HKTV01-MFC-106SH', 1, 8, NULL, '', '', '', '', 14930000, 0, '1_22.jpg', 'cái', 0, NULL, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(45, 'Kệ tivi Melamine - 21120190', 1, 8, NULL, '', '', '', '', 38050000, 0, 'ke-tivi-melamine-21120190-noi-that-hoan-my_1_.jpg', 'cái', 0, NULL, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(46, 'Kệ tivi - KTVM01-MFC-333PL/204SH', 2, 16, NULL, '', '', '', '', 9750000, 0, 'ktvm01-mfc-333pl-204sh-_1950x420x480_.1a.jpg', 'cái', 0, NULL, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(47, 'Tủ buffet Marte - 650000144', 3, 22, NULL, ' ', '', '', '', 29600000, 0, 'marte_sideboad_white_pigmented_solid_veneer_oak_4_drawers_2_doors_dr.jpg', 'cái', 0, NULL, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(48, 'Tủ buffet Acrylic - 35120020', 3, 22, NULL, '', '', '', '', 20150000, 0, 'tbf-arc-earc11_kt_900x490x1036_1_rsz_compressed.jpg', 'cái', 0, NULL, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(49, 'Giường ngủ IMAB - T40258YA', 2, 11, NULL, '', '', '', '', 81330000, 56931000, 'giuong_t40258ya_rsz_compressed.jpg', 'cái', 0, NULL, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(50, 'Ghế sofa da bộ Livani - 1007015123', 1, 1, NULL, '', '', '', '', 114090000, 57045000, 'ghe-sofa-da-bo-livani-10070151-noi-that-hoan-my_1_.jpg', 'cái', 0, NULL, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(51, 'Sofa 2 chỗ Hoàn Mỹ - Verola/TL-13 (1)', 1, 3, NULL, '', '', '', '', 30080000, 0, 'verola_tl_13_bo_.7c.jpg', 'bộ', 0, NULL, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(52, 'Sofa góc Hoàn Mỹ - Veneto (M)-223', 1, 2, NULL, '', '', '', '', 56720000, 0, 'veneto-223_goc_don_.2z.jpg', 'bộ', 0, NULL, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(53, 'Ghế armchair - FS17-1', 1, 6, NULL, '', '', '', '', 4200000, 0, 'fs17-1.1.jpg', 'cái', 0, NULL, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(54, 'Tranh trang trí - Q-G14044-1', 4, 29, NULL, '', '', '', '', 2600000, 0, '3_23.jpg', 'bức', 1, NULL, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(55, 'Ghế armchair - FS16-1', 1, 6, NULL, '', '', '', '', 4550000, 0, 'fs16-1.7.jpg', 'cái', 0, NULL, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(56, 'Ghế armchair - 1064A-1P-TX1235', 1, 6, NULL, '', '', '', '', 10360000, 0, '1064a-1p-tx1235-1.jpg', 'cái', 0, NULL, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(57, 'Bình trang trí - PE362', 4, 27, NULL, '', '', '', '', 710000, 0, 'pe362.1.jpg', 'bộ', 1, NULL, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(58, 'Tủ rượu Baopo - JL-A1054', 3, 23, NULL, '', '', '', '', 36680000, 25676000, 'tu_ruou_jl_a1054_rsz_compressed.jpg', '', 0, NULL, '2016-10-26 17:00:00', '2016-10-11 17:00:00'),
(59, 'Tủ quần áo Melamine - TA03', 2, 14, NULL, '', '', '', '', 21650000, 0, 'ta03-mfc-873ev-106sh_rsz_compressed_1.jpg', '', 0, NULL, '2016-10-26 17:00:00', '2016-10-11 17:00:00'),
(60, 'Tủ quần áo Acrylic - 35120010', 2, 14, NULL, '', '', '', '', 45080000, 0, 'tu-quan-ao-acrylic-35120010-noi-that-hoan-my_1_.jpg', '', 0, 'đã hủy', '2016-10-26 17:00:00', '2019-05-09 07:07:32'),
(61, '\r\nBình trang trí - CK741', 4, 27, NULL, '', '', '', '', 1010000, 950000, 'ck741.2.jpg', 'cái', 1, NULL, NULL, NULL),
(62, 'Ghế sofa góc Zolano - 1013006766', 1, 2, NULL, 'Với khả năng nâng - hạ phần tựa đầu cùng thiết kế bọc mút tựa lưng tiện dụng, bộ Sofa góc Zolano này chắc chắn mang lại những phút giây thư giãn cho người sử dụng. Chất liệu da bò 100% nhập khẩu Ý mềm mại, màu sắc thời thượng, bộ sofa này sẽ là điểm nhấn độc đáo cho mọi không gian phòng khách!', 'Đôn: L/W 835   P/D 600 (mm) Góc: L/W 3130  P/D 2020  D 1030  H 800 (chưa nâng tựa đầu) /900 (đã nâng tựa đầu) (mm)', 'Zolano, Malaysia', 'Chất liệu: 100% da bò Ý. Khung sofa: Làm bằng gỗ dầu đã qua xử lý và plywood. Chân: Thép mạ crom.', 66220000, 46354000, 'ghe-sofa-goc-zolano-10130067-noi-that-hoan-my_1_.jpg', 'bộ', 1, 'đã hủy', NULL, '2019-05-09 06:57:45');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slide`
--

CREATE TABLE `slide` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `link` varchar(100) DEFAULT NULL,
  `image` varchar(100) NOT NULL,
  `description` varchar(500) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `slide`
--

INSERT INTO `slide` (`id`, `name`, `link`, `image`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Sang Trọng', 'https://www.noithathoanmy.com.vn/thiet-ke-noi-that', 'banner5.jpg', 'noi that dep', '2019-04-18 15:32:09', '0000-00-00 00:00:00'),
(2, 'Tinh Tế', 'https://www.noithathoanmy.com.vn/thiet-ke-noi-that', 'veneto_web-01.jpg', 'noi that hoan my', '2019-04-18 15:32:16', '0000-00-00 00:00:00'),
(3, 'Hoàn Mỹ', 'https://www.noithathoanmy.com.vn/thiet-ke-noi-that', 'web_tcnt-rsfc-01_1.jpg', 'noi that cho gia dinh', '2019-04-18 15:32:26', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `supplier`
--

CREATE TABLE `supplier` (
  `id` int(11) UNSIGNED NOT NULL,
  `name_supplier` varchar(250) NOT NULL,
  `address` varchar(1000) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `supplier`
--

INSERT INTO `supplier` (`id`, `name_supplier`, `address`, `phone`, `email`, `created_at`, `updated_at`) VALUES
(1, 'Công Ty TNHH Sản Xuất Và Thương Mại Mộc Việt', '109/1164/A10 Lê Đức Thọ, P. 13, Q. Gò Vấp, Tp. Hồ Chí Minh (TPHCM), Việt Nam', '0939396578', 'noithatmocviet@yahoo.com', '2019-04-28 14:50:54', '2019-04-28 14:50:54'),
(2, 'Công Ty TNHH Thương Mại Sản Xuất Vận Chuyển Hợp Phát', '132/12 Song Hành, Phường Tân Hưng Thuận, Quận 12, Tp. Hồ Chí Minh (TPHCM), Việt Nam', '(028) 62982999', 'noithathopphat@gmail.com', '2019-04-28 14:49:18', '0000-00-00 00:00:00'),
(3, 'Công Ty Cổ Phần Xây Dựng Và Nội Thất Minh Tiến', 'Văn Phòng: Tầng 8, Tòa Nhà Bitexco, 19-25 Nguyễn Huệ, P. Bến Nghé, Q. 1, Tp. Hồ Chí Minh (TPHCM), Việt Nam', '0908 359 888', 'minhtien@mtic.vn', '2019-04-28 14:49:18', '0000-00-00 00:00:00'),
(6, 'Aconcept - Công Ty TNHH Aconcept Việt Nam', '<p>206 Nam Kỳ Khởi Nghĩa, P. 6, Q. 3,&nbsp;<strong>Tp. Hồ Ch&iacute; Minh (TPHCM)</strong>&nbsp;<br />\r\nTầng 3 - 5, 279 Nguyễn Văn Trỗi, P. 10, Q. Ph&uacute; Nhuận,&nbsp;<em><strong>Tp. Hồ Ch&iacute; Minh (TPHCM)&nbsp;</strong></em>, Việt Nam</p>', '(028)39303312', 'contact@trangvangvietnam.com', '2019-04-28 15:20:28', '2019-04-28 15:20:28');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `type_products`
--

CREATE TABLE `type_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `type_products`
--

INSERT INTO `type_products` (`id`, `name`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Nội thất phòng khách', 'Những đồ nội thất đẹp dành cho phòng khách\r\n', 'anh1.jpg', NULL, NULL),
(2, 'Nội thất phòng ngủ', 'Những đồ nội thất cho phòng ngủ bao gồm. giường, tủ quần áo, bàn làm việc, bàn học, bàn trang điểm,...\r\n', 'anh2.jpg', '2016-10-12 02:16:15', '2016-10-13 01:38:35'),
(3, 'Nội thất phòng ăn', 'Những đồ nội thất cho phòng ăn bao gồm: bàn ăn , ghế ăn ăn, tủ bếp, tủ rượu, bàn buffer. vvv...\r\n', 'anh3.jpg', '2016-10-18 00:33:33', '2016-10-15 07:25:27'),
(4, 'Đồ trang trí', 'Những đồ trang trí cho nội thất như bình thủy tinh, tranh ảnh, v.v...\r\n', 'anh4.jpg', '2016-10-26 03:29:19', '2016-10-26 02:22:22');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `level` int(3) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `full_name`, `email`, `password`, `phone`, `address`, `level`, `remember_token`, `created_at`, `updated_at`) VALUES
(7, 'Tuyển Đỗ', 'dotuyen12@gmail.com', '$2y$10$SOhkSh8eFkE6O0Zh466kl.nOEmn/qv8aucKrm7uetg5Vgu4eV7r7e', '0369712385', NULL, 0, NULL, '2019-03-28 17:05:41', '2019-03-28 17:05:41'),
(9, 'Tuyển Đỗ', 'tuyen1412@gmail.com', '$2y$10$qRmWOsZgnB.ePY4yr8o1F.AWMCqqs.YPXDyeC94t6x/.vdHGxiQCa', '1213121', 'hà nội', 0, NULL, '2019-03-28 17:09:58', '2019-03-28 17:09:58'),
(10, 'tuyen do', 'tuyendo1@gmail.com', '$2y$10$XU6reb8tCHPBWgMJI/ALMeSH7FpYvVPGR5niTNU5Ql0Ss8f/SPTEu', '121232123', '196 hưng yên', 0, 'M9uSBX0feUwP2KpeWfoJpcRfdlLx1sFyMdDANELQJZfo6Q4LHq41bAir3c7W', '2019-03-29 09:31:58', '2019-03-29 09:31:58'),
(13, 'do van tuyen', 'tuyen97@gmail.com', '$2y$10$5vc5l1ZliR1l9jTZt3SskOFS7eUT/DWA1vMTfWz2cgJdBrgtTasi.', '+84369712385', 'hung yen', 0, NULL, '2019-04-02 10:29:19', '2019-04-02 10:29:19'),
(14, 'Đỗ Văn Tuyển', 'dotuyen141297@gmail.com', '$2y$10$jyMVpSXGx5FD95IdszfOZuJKNiIlxjoiIlYQv9LU4YdK8hmY.Alsa', '0369712385', 'Đội 7- Thôn Năm Mẫu - Xã Tứ Dân, Huyện Khoái Châu - Tỉnh Hưng Yên', 1, 'QkvziPr6af1HeZIVyI9gdifllH5IBWPVvDfmLYwkwjFTveTy9nnUaj3hhRrm', '2019-04-08 07:42:21', '2019-04-19 16:40:28'),
(15, 'Tuyển đỗ', 'dotuyen016@gmail.com', '$2y$10$IQFzC9eToX8cA40j26j5BuJ9AcT3o34bK2CLtN5wDtCDKRaOcXPGC', '01213219653', 'hưng yên - khoái châu', 1, 'nCjh8wqU5Ax5i8AevBSZvf6e8sndjywoFOlegrgVUCEMURuvuZ3m8zsLyzo0', '2019-04-28 13:09:48', '2019-04-28 13:09:48'),
(16, 'Đỗ Tuyển', 'tuyen197@gmail.com', '$2y$10$6jLFWobP/QtFF.7UrfY4BOKpUak9lt.m87bO288w.duaEaMSdg6jC', '036971238511', 'Hưng yên', NULL, 'y5WURdyWTsPsxkv8TZ1UzTrUGZgoge39cugEvJ5gyqozpHB0DwqxFYUgYhUs', '2019-05-08 07:39:07', '2019-05-08 07:39:07'),
(17, 'Nguyễn Tùng Dương', 'tungduong@gmail.com', '$2y$10$N8MrFYbLXIAVE2nQeeDQpOR66OqRtpDGqDOIvpFVqQX9GrFWMpcRq', '0869105256', 'Thái Nguyên', 1, 'f8NcsNdkh1qCldxFSh9kouPgYPRPFcIBnS7CnLMiz8LLsOHEiSGG2aNvBM1b', '2024-02-26 07:29:59', '2024-09-25 20:49:51'),
(18, 'Nam Per', 'phuongnam@gmail.com', '$2y$10$8nKmsda0UK105KBQ9ZsUouyA18giOyBkzc/dy34gtl0r5RTH.4kNG', '0987654321', 'Campuchia', NULL, 'PbbJUavoWBeQHnlQliU69K6Av6kl0DfYJd06Pw37z9loBUwKvIS6pHb38g4n', '2024-02-26 07:30:52', '2024-02-26 07:30:52'),
(19, 'Bắc Phoi', 'huubac@gmail.com', '$2y$10$xmuStAHjAogCi/sTEDSpA.xLh7Or17fRxqfn6hMzQeBNqyja5OMz2', '0987654321', 'Campuchia', NULL, 'x7SMTNdobAyrgn5HTReXZTeVVeTCXnUDEQEoAjvD5bKADIV8C9ORx7hqIizJ', '2024-02-26 07:32:33', '2024-02-26 07:32:33'),
(20, 'Demo01', 'demotest01@gmail.com', '$2y$10$JS9KqNabvxHgHjJCTWi1De5N/R33DXtG8o54NdNX57ugpwHV1.6hW', '0987654321', 'Thai Nguyen', NULL, NULL, '2024-02-26 08:11:58', '2024-02-26 08:11:58'),
(21, '7865856', 'concac@gmail.com', '$2y$10$1pcP3.Wdx8bbxJfYDzOsGupWJLsmUhdF0MZf/FpWGigh1200ob1v2', '0869105256', '54646465', NULL, NULL, '2024-03-14 14:53:23', '2024-03-14 14:53:23'),
(22, '7865856', 'con@gmail.com', '$2y$10$QYuNp7gDBZi41KfvtTjztO9uSxxYclQEab5JLPlAwa7gxDC278Bgi', '0869105256', '54646465', NULL, NULL, '2024-03-14 14:54:06', '2024-03-14 14:54:06'),
(23, '2375423', 'abcd@gmail.com', '$2y$10$T6etAkS5EZ7319ZFn2pAPeTJKypRdIcNeY5obeqFNL1XVBD6M5ES2', '5727528437', NULL, NULL, NULL, '2024-03-14 14:59:19', '2024-03-14 14:59:19'),
(24, 'tungduong', 'abcde@gmail.com', '$2y$10$XoN9T8IW9RwdwGup9o2h8.FvFsGy3CnTc/Ew1DHXY0HP7oJQgt1nW', 'namper', NULL, NULL, NULL, '2024-03-14 15:01:51', '2024-03-14 15:01:51'),
(25, 'tungduong', 'abcded@gmail.com', '$2y$10$GbdkgGN.nyJMYdkIBfknAuCqzWppAcL2SOzkjy4yJnV5SzM.XRRgu', '869105256', NULL, NULL, NULL, '2024-03-14 15:02:55', '2024-03-14 15:02:55'),
(26, 'tungduong', 'abcdd@gmail.com', '$2y$10$HklzITrnYKwp8uWKmunG2OMA2MaUitvQac6KBKGs/WeUFDqbQbO3a', '1', NULL, NULL, NULL, '2024-03-14 15:03:35', '2024-03-14 15:03:35'),
(27, '55555555', 'abcdddd@gmail.com', '$2y$10$1iF8hKFv51PRt1Bld6buKegaC.zq5R.3kz6dLVfO1aRADsP8a39XK', '0869105256', 'vietnam', NULL, NULL, '2024-03-14 16:39:34', '2024-03-14 16:39:34');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bills_ibfk_1` (`id_customer`);

--
-- Chỉ mục cho bảng `bill_detail`
--
ALTER TABLE `bill_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bill_detail_ibfk_2` (`id_product`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_type` (`id_type`);

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_product` (`id_product`),
  ADD KEY `id_user` (`id_user`);

--
-- Chỉ mục cho bảng `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `import_bill`
--
ALTER TABLE `import_bill`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_employees` (`id_employees`),
  ADD KEY `id_import_bill_detail` (`id_import_bill_detail`);

--
-- Chỉ mục cho bảng `import_bill_detail`
--
ALTER TABLE `import_bill_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_product` (`id_product`),
  ADD KEY `id_type_product` (`id_type_product`),
  ADD KEY `id_category` (`id_category`),
  ADD KEY `id_supplier` (`id_supplier`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_id_type_foreign` (`id_type`),
  ADD KEY `id_category` (`id_category`),
  ADD KEY `id_supplier` (`id_supplier`);

--
-- Chỉ mục cho bảng `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `type_products`
--
ALTER TABLE `type_products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bills`
--
ALTER TABLE `bills`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT cho bảng `bill_detail`
--
ALTER TABLE `bill_detail`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT cho bảng `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `import_bill`
--
ALTER TABLE `import_bill`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `import_bill_detail`
--
ALTER TABLE `import_bill_detail`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT cho bảng `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `type_products`
--
ALTER TABLE `type_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `category`
--
ALTER TABLE `category`
  ADD CONSTRAINT `category_ibfk_1` FOREIGN KEY (`id_type`) REFERENCES `type_products` (`id`);

--
-- Các ràng buộc cho bảng `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `import_bill`
--
ALTER TABLE `import_bill`
  ADD CONSTRAINT `import_bill_ibfk_1` FOREIGN KEY (`id_employees`) REFERENCES `employees` (`id`),
  ADD CONSTRAINT `import_bill_ibfk_2` FOREIGN KEY (`id_import_bill_detail`) REFERENCES `import_bill_detail` (`id`);

--
-- Các ràng buộc cho bảng `import_bill_detail`
--
ALTER TABLE `import_bill_detail`
  ADD CONSTRAINT `import_bill_detail_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `import_bill_detail_ibfk_2` FOREIGN KEY (`id_type_product`) REFERENCES `type_products` (`id`),
  ADD CONSTRAINT `import_bill_detail_ibfk_3` FOREIGN KEY (`id_category`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `import_bill_detail_ibfk_4` FOREIGN KEY (`id_supplier`) REFERENCES `supplier` (`id`);

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`id_type`) REFERENCES `type_products` (`id`),
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`id_category`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `products_ibfk_3` FOREIGN KEY (`id_supplier`) REFERENCES `supplier` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
