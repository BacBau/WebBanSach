-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 25, 2022 lúc 04:03 AM
-- Phiên bản máy phục vụ: 10.4.22-MariaDB
-- Phiên bản PHP: 8.0.13

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
  `created_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `bills`
--

INSERT INTO `bills` (`id`, `id_customer`, `date_order`, `total`, `payment`, `note`, `created_at`, `updated_at`) VALUES
(31, 35, '2022-01-24', 132000, 'ATM', 'Giaop hàng giờ hành chính', '2022-01-24 03:16:11', '2022-01-24 03:16:11'),
(30, 34, '2022-01-22', 63000, 'COD', 'giao giờ hành chính', '2022-01-22 09:44:11', '2022-01-22 09:44:11'),
(29, 33, '2022-01-21', 320000, 'COD', 'ddddd', '2022-01-21 14:55:36', '2022-01-21 14:55:36'),
(28, 31, '2022-01-21', 132000, 'COD', 'dsadads', '2022-01-21 14:38:31', '2022-01-21 14:38:31'),
(16, 19, '2022-01-18', 620000, 'COD', 'nope!', '2022-01-18 10:01:54', '2022-01-18 10:01:54'),
(17, 20, '2022-01-18', 620000, 'COD', 'nope!', '2022-01-18 10:01:54', '2022-01-18 10:01:54'),
(18, 21, '2022-01-18', 150000, 'ATM', 'Giao sớm cho mình !', '2022-01-18 10:11:37', '2022-01-18 10:11:37'),
(19, 22, '2022-01-18', 600000, 'ATM', 'Cẩn thận !', '2022-01-18 12:47:59', '2022-01-18 12:47:59'),
(20, 23, '2022-01-18', 500000, 'COD', 'Trước khi ship gọi điện cho mình', '2022-01-18 12:51:31', '2022-01-18 12:51:31'),
(21, 24, '2022-01-19', 120000, 'ATM', 'Ship trước 11h trưa giùm em!', '2022-01-19 01:21:54', '2022-01-19 01:21:54'),
(22, 25, '2022-01-19', 150000, 'COD', '111', '2022-01-19 01:25:55', '2022-01-19 01:25:55'),
(23, 26, '2022-01-19', 150000, 'COD', 'gói hàng cẩn thận giúp mình', '2022-01-19 01:34:49', '2022-01-19 01:34:49'),
(24, 27, '2022-01-19', 180000, 'COD', 'ưerwer', '2022-01-19 01:35:55', '2022-01-19 01:35:55'),
(25, 28, '2022-01-19', 300000, 'COD', 'ấdsd', '2022-01-19 01:37:24', '2022-01-19 01:37:24'),
(26, 29, '2022-01-19', 160000, 'COD', '1123124', '2022-01-19 01:39:26', '2022-01-19 01:39:26'),
(27, 30, '2022-01-19', 160000, 'COD', '1111111111111', '2022-01-19 04:17:50', '2022-01-19 04:17:50'),
(32, 36, '2022-01-25', 161000, 'COD', '11111111', '2022-01-25 02:57:29', '2022-01-25 02:57:29');

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `bill_detail`
--

INSERT INTO `bill_detail` (`id`, `id_bill`, `id_product`, `quantity`, `unit_price`, `created_at`, `updated_at`) VALUES
(35, 28, 9, 1, 132000, '2022-01-21 14:38:31', '2022-01-21 14:38:31'),
(19, 16, 7, 2, 160000, '2022-01-18 10:01:54', '2022-01-18 10:01:54'),
(20, 16, 13, 1, 300000, '2022-01-18 10:01:54', '2022-01-18 10:01:54'),
(21, 17, 7, 2, 160000, '2022-01-18 10:01:54', '2022-01-18 10:01:54'),
(22, 17, 13, 1, 300000, '2022-01-18 10:01:54', '2022-01-18 10:01:54'),
(23, 18, 1, 1, 150000, '2022-01-18 10:11:37', '2022-01-18 10:11:37'),
(24, 19, 33, 1, 280000, '2022-01-18 12:47:59', '2022-01-18 12:47:59'),
(25, 19, 35, 1, 320000, '2022-01-18 12:47:59', '2022-01-18 12:47:59'),
(26, 20, 15, 1, 350000, '2022-01-18 12:51:31', '2022-01-18 12:51:31'),
(27, 20, 61, 1, 150000, '2022-01-18 12:51:31', '2022-01-18 12:51:31'),
(28, 21, 49, 1, 120000, '2022-01-19 01:21:54', '2022-01-19 01:21:54'),
(29, 22, 19, 1, 150000, '2022-01-19 01:25:55', '2022-01-19 01:25:55'),
(30, 23, 19, 1, 150000, '2022-01-19 01:34:49', '2022-01-19 01:34:49'),
(31, 24, 23, 1, 180000, '2022-01-19 01:35:55', '2022-01-19 01:35:55'),
(32, 25, 13, 1, 300000, '2022-01-19 01:37:24', '2022-01-19 01:37:24'),
(33, 26, 7, 1, 160000, '2022-01-19 01:39:26', '2022-01-19 01:39:26'),
(34, 27, 7, 1, 160000, '2022-01-19 04:17:50', '2022-01-19 04:17:50'),
(36, 29, 25, 1, 320000, '2022-01-21 14:55:36', '2022-01-21 14:55:36'),
(37, 30, 8, 1, 63000, '2022-01-22 09:44:11', '2022-01-22 09:44:11'),
(38, 31, 9, 1, 132000, '2022-01-24 03:16:11', '2022-01-24 03:16:11'),
(39, 32, 23, 1, 98000, '2022-01-25 02:57:29', '2022-01-25 02:57:29'),
(40, 32, 8, 1, 63000, '2022-01-25 02:57:29', '2022-01-25 02:57:29');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
--

CREATE TABLE `customer` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `note` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `customer`
--

INSERT INTO `customer` (`id`, `name`, `gender`, `email`, `address`, `phone_number`, `note`, `created_at`, `updated_at`) VALUES
(35, 'Kim Anh', 'nữ', 'ngothikimanh@gmail.com', 'Hà Nội', '123214124', 'Giaop hàng giờ hành chính', '2022-01-24 03:16:11', '2022-01-24 03:16:11'),
(22, 'Kim Anh', 'nam', 'ngothikimanh@gmail.com', 'Phú Thọ', '0123456789', 'Cẩn thận !', '2022-01-21 14:32:35', '2022-01-21 14:32:35'),
(23, 'Đạt', 'nam', 'dat123@gmail.com', 'Sơn Tây', '8437236723', 'Trước khi ship gọi điện cho mình', '2022-01-21 14:32:35', '2022-01-21 14:32:35'),
(24, 'Minh Đăng', 'nam', 'dang123@gmail.com', 'Việt Trì, Phú thọ', '98766233413', 'Ship trước 11h trưa giùm em!', '2022-01-21 14:32:35', '2022-01-21 14:32:35'),
(25, 'Hoàng Anh', 'nam', 'ngodaibac1012@gmail.com', 'Lâm Thao', '55555555', '111', '2022-01-21 14:32:35', '2022-01-21 14:32:35'),
(26, 'Ngô Đại Bắc', 'nam', 'ngodaibac1012@gmail.com', 'Việt Trì, Phú thọ', '023445635634', 'gói hàng cẩn thận giúp mình', '2022-01-21 14:32:35', '2022-01-21 14:32:35'),
(28, 'Đại Bắc', 'nam', 'baba@gmail.com', 'Phu Tho', '98766233413', 'ấdsd', '2022-01-21 14:32:35', '2022-01-21 14:32:35'),
(29, 'Đạt', 'nam', 'baba@gmail.com', 'Phu Tho', '0123456789', '1123124', '2022-01-21 14:32:35', '2022-01-21 14:32:35'),
(32, 'Bắc', 'nam', 'ngodaibac1012@gmail.com', 'Phu Tho', '98766233413', 'ADASD', '2022-01-21 14:40:53', '2022-01-21 14:40:53'),
(33, 'Đạt', 'nam', 'dat4444@gmail.com', 'Việt Trì, Phú thọ', '3453454354', 'ddddd', '2022-01-21 14:55:36', '2022-01-21 14:55:36');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `id_type` int(10) UNSIGNED NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `unit_price` float NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '.jpg',
  `unit` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'quyển',
  `new` tinyint(4) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `id_type`, `description`, `unit_price`, `image`, `unit`, `new`) VALUES
(1, 'Lại Là Ếch Ộp', 5, '', 92000, 'TEEN1.jpg', 'quyển', 0),
(2, 'Tôi Đi Học (Tái bản năm 2021)', 6, '', 76000, 'TLGD2.jpg', 'quyển', 0),
(3, 'Ra Bờ Suối Ngắm Hoa Kèn Hồng', 5, '', 150000, 'TEEN2.jpg', 'quyển', 0),
(4, 'Chưa kịp lớn đã phải trưởng thành', 1, '', 79000, 'VH1.jpg', 'quyển', 0),
(5, 'Thư Tình Gửi Một Người ', 1, '', 195000, 'VH2.jpg', 'quyển', 0),
(6, 'Sống An Nhiên Đời Bình Yên', 6, '', 74000, 'TLGD3.jpg', 'quyển', 0),
(7, 'A Promised Land - Miền Đất Hứa', 1, '', 768000, 'VH3.jpg', 'quyển', 0),
(8, 'Những Ngày Thứ Ba Với Thầy Morrie', 5, '', 63000, 'TEEN6.jpg', 'quyển', 1),
(9, 'Itachi Chân Truyện', 5, '', 132000, 'TEEN7.jpg', 'quyển', 1),
(11, 'Những Đứa Trẻ Không Có Ô', 1, '', 115000, 'VH4.jpg', 'quyển', 1),
(12, 'Phá Vỡ Vỏ Bọc Đàn Ông', 6, '', 98000, 'TLGD4.jpg', 'quyển', 0),
(13, '40 Loại Mứt Trái Cây Dễ Làm', 7, '', 45000, 'NANT1.jpg', 'quyển', 0),
(14, 'Biết Thì Đã Ngon', 7, '', 87000, 'NANT2.jpg', 'quyển', 0),
(15, 'Kỹ Thuật Trồng Mai', 7, '', 43000, 'NANT6.jpg', 'quyển', 0),
(16, 'Đôi Giày Sân Khấu', 5, '', 155000, 'TEEN3.jpg', 'quyển', 0),
(17, 'Lặng Thầm Đưa Khách Sang Sông', 6, '', 120000, 'TLGD7.jpg', 'quyển', 0),
(18, 'Về Nghe Yêu Kể', 1, '', 90000, 'VH5.jpg', 'quyển', 0),
(19, 'Khúc Nhạc Vĩnh Hằng', 1, '', 199000, 'VH6.jpg', 'quyển', 1),
(20, 'Người Bạn Phi Thường', 1, '', 199000, 'VH7.jpg', 'quyển', 1),
(21, 'Sóc Vàng Núi Thần Cọp', 5, '', 46000, 'TEEN8.jpg', 'quyển', 1),
(22, 'Tình Yêu Bất Tận Của Mẹ', 6, '', 49000, 'TLGD1.jpg', 'quyển', 0),
(23, 'Những Kẻ Đáng Ngờ', 1, '', 98000, 'VH8.jpg', 'quyển', 1),
(24, 'Nghệ Thuật Bán Hàng Bậc Cao', 2, '', 198000, 'KT1.jpg', 'quyển', 0),
(25, 'Mười Vạn Câu Hỏi Vì Sao?', 4, '', 320000, 'TN5.jpg', 'quyển', 1),
(26, 'Đội Nhóm Tuyệt Đỉnh', 2, '', 139000, 'Kt2.jpg', 'quyển', 0),
(27, 'Hoàng Tử Bé', 4, '', 115000, 'TN6.jpg', 'quyển', 1),
(28, 'Blockchain: Cơ Hội Hay Bong Bóng', 2, '', 219000, 'KT3.jpg', 'quyển', 0),
(29, 'Content Marketing 4.0', 2, '', 182000, 'KT4.jpg', 'quyển', 0),
(30, 'Bản Lĩnh Lên', 3, '', 129000, 'KNSD9.jpg', 'quyển', 1),
(31, 'Thơ Cho Bé Học Nói', 4, '', 99000, 'TN9.jpg', 'quyển', 1),
(32, 'Nhật Ký Tarot', 5, '', 199000, 'TEEN9.jpg', 'quyển', 1),
(33, 'Một Cuộc Đời Bất Tận', 6, '', 164000, 'TLGD8.jpg', 'quyển', 1),
(34, '43 Bí Mật Bán Hàng Online Tuyệt Đỉnh', 2, '', 184000, 'KT5.jpg', 'quyển', 1),
(35, 'Các Món Ăn Chay Đặc Sắc', 7, '', 63000, 'NANT3.jpg', 'quyển', 0),
(36, 'Đầu Bếp Tự Do', 7, '', 212000, 'NANT4.jpg', 'quyển', 0),
(37, 'Đĩa Thức Ăn Thứ Ba', 7, '', 154000, 'NANT5.jpg', 'quyển', 1),
(38, 'Món Ăn Dặm Cho Bé', 7, '', 32000, 'NANT7.jpg', 'quyển', 1),
(39, 'Rau Củ Chữa Bệnh', 7, '', 78000, 'NANT8.jpg', 'quyển', 1),
(40, 'Khắc Cốt Ghi Tâm', 1, '', 89000, 'VH9.jpg', 'quyển', 1),
(41, 'The Business Model Book', 2, '', 200000, 'KT9.jpg', 'quyển', 1),
(42, 'Dậy Thì Mới Kì Làm Sao', 5, '', 98000, 'TEEN5.jpg', 'quyển', 1),
(43, 'Vì Sao Đơn Giản Lại Hiệu Quả', 2, '', 130000, 'KT6.jpg', 'quyển', 1),
(44, 'Bán Hàng Cảm Xúc', 2, '', 140000, 'KT7.jpg', 'quyển', 1),
(45, 'Ảo Tưởng Của Sự Bất Khả Chiến Bại', 2, '', 155000, 'KT8.jpg', 'quyển', 1),
(46, 'Thay Đổi Tí Hon, Hiệu Quả Bất Ngờ ', 3, '', 170000, 'KNSD1.jpg', 'quyển', 0),
(47, 'Ta Trong Ta', 3, '', 50000, 'KNSD2.jpg', 'quyển', 0),
(48, 'Bởi Ta Chưa Tự Biết Mình', 3, '', 140000, 'KNSD3.jpg', 'quyển ', 0),
(49, 'Evie Và Biệt Tài Bí Mật', 4, '', 139000, 'TN7.jpg', 'quyển', 1),
(50, 'Tôi Vẽ Em Trai Tôi', 4, '', 68000, 'TN8.jpg', 'quyển', 1),
(51, 'Hack Tốc Độ Hoàn Thành Công Việc', 3, '', 110000, 'KNSD4.jpg', 'quyển', 0),
(52, 'Người Thành Công Làm Gì Buổi Tối?', 3, '', 90000, 'KNSD5.jpg', 'quyển', 1),
(53, 'Đi Đường Cũ Không Thể Tới Nơi Mới', 3, '', 99000, 'KNSD6.jpg', 'quyển', 1),
(54, 'Bước Ra Khỏi Vùng An Toàn', 3, '', 125000, 'KNSD7.jpg', 'quyển', 1),
(55, 'Chủ Động Trong Thế Giới Bị Động', 3, '', 89000, 'KNSD8.jpg', 'quyển', 1),
(56, 'Con Chim Mất Tích', 4, '', 28000, 'TN1.jpg', 'quyển', 0),
(57, 'Bức Tranh Huyền Bí', 4, '', 90000, 'TN2.jpg', 'quyển', 0),
(58, 'Giải Mã Giấc Mơ', 6, '', 199000, 'TLGD5.jpg', 'quyển', 1),
(59, 'Đôi Giày Trượt Băng', 4, '', 109000, 'TN3.jpg', 'quyển', 0),
(60, 'Chuyện Con Chó Tên Là Trung Thành ', 4, '', 45000, 'TN4.jpg', 'quyển', 0),
(61, 'Con Tàu Bất Bại', 5, '', 420000, 'TEEN4.jpg', 'quyển', 0),
(62, 'Live In Love - Sống Đời Yêu Thương', 6, '', 250000, 'TLGD6.jpg', 'quyển', 1),
(63, 'Căn Bếp Màu Xanh', 7, '', 98000, 'NANT9.jpg', 'quyển', 0),
(64, 'Con Mèo Đi Giày Cao Gót', 4, '', 168000, 'TN10.jpg', 'quyển', 1),
(65, 'Sông Núi Chưa Già', 1, '', 139000, 'VH10.jpg', 'quyển', 0),
(66, 'Keanu Reeves: Ma Trận Cuộc Đời', 1, '', 168000, 'VH11.jpg', 'quyển', 0),
(67, 'Với Ngày Như Lá Tháng Như Mây...', 1, '', 122000, 'VH12.jpg', 'quyển', 0),
(68, 'Lê La Từ Nhà Ra Ngõ', 1, '', 89000, 'Vh13.jpg', 'quyển', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slide`
--

CREATE TABLE `slide` (
  `id` int(11) NOT NULL,
  `link` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `slide`
--

INSERT INTO `slide` (`id`, `link`, `image`) VALUES
(1, '', 'ban2.jpg'),
(2, '', 'ban1.jpg'),
(3, '', 'ban3.jpg'),
(4, '', 'ban4.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `type_products`
--

CREATE TABLE `type_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `type_products`
--

INSERT INTO `type_products` (`id`, `name`, `image`) VALUES
(1, 'Sách Văn học', 'VH.jpg'),
(2, 'Sách Kinh tế/Kinh doanh', 'KT.jpg'),
(3, 'Sách Kỹ năng/Sống đẹp', 'KNSD.jpg'),
(4, 'Sách Thiếu nhi', 'TN.jpg'),
(5, 'Sách \"Teen\"', 'TEEN.jpg'),
(6, 'Sách Tâm lý/Giáo dục', 'TLGD.jpg'),
(7, 'Sách Nấu ăn/Nuôi trồng', 'NANT.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `full_name`, `email`, `password`, `phone`, `address`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Đại Bắc', 'ngodaibac1012@gmail.com', '$2y$10$4f5sE1eN8/m8cu5a0IA3jeb3dF.yHk8s5T4EoSgW8VRJ7l61EFJT6', '0368368368', 'Phú Thọ', NULL, '2022-01-22 08:46:50', '2022-01-22 08:46:50'),
(2, 'Đại Bắc', 'ngodaibac@gmail.com', '$2y$10$HSOtvLoLUZRvUvyCUzeWCO..hg1H5.LFgmScgpmMML7ss6SIdkszC', '123123132', 'Phu Tho', NULL, '2022-01-24 03:14:05', '2022-01-24 03:14:05');

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
-- Chỉ mục cho bảng `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_id_type_foreign` (`id_type`);

--
-- Chỉ mục cho bảng `slide`
--
ALTER TABLE `slide`
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
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bills`
--
ALTER TABLE `bills`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT cho bảng `bill_detail`
--
ALTER TABLE `bill_detail`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT cho bảng `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT cho bảng `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `type_products`
--
ALTER TABLE `type_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_id_type_foreign` FOREIGN KEY (`id_type`) REFERENCES `type_products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
