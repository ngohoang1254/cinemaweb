-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 18, 2018 lúc 10:20 AM
-- Phiên bản máy phục vụ: 10.1.35-MariaDB
-- Phiên bản PHP: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `web`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `showtime`
--

CREATE TABLE `showtime` (
  `id` int(255) NOT NULL,
  `id_movie` int(255) DEFAULT NULL,
  `date_show` date DEFAULT NULL,
  `id_time` int(255) DEFAULT NULL,
  `id_cinema` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `showtime`
--

INSERT INTO `showtime` (`id`, `id_movie`, `date_show`, `id_time`, `id_cinema`) VALUES
(1, 9, '2018-11-18', 1, 4),
(2, 17, '2018-11-18', 2, 5),
(7, 8, '2018-11-07', 4, 6),
(8, 9, '2018-11-18', 2, 5),
(9, 8, '2018-11-30', 2, 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblcinema`
--

CREATE TABLE `tblcinema` (
  `id` int(10) NOT NULL,
  `id_city` int(10) DEFAULT NULL,
  `id_district` int(10) DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `anh` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `address` varchar(200) COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `tblcinema`
--

INSERT INTO `tblcinema` (`id`, `id_city`, `id_district`, `name`, `anh`, `address`) VALUES
(4, 1, NULL, 'Lotte Cinema', 'upload/tải xuống.jpg', '6 Nguyễn Lương Bằng quận 7'),
(5, 1, NULL, 'CGV ', 'upload/rap-chieu-phim1.jpg', 'Vivo city'),
(6, 1, NULL, 'BHD', 'upload/qt41513590298_0104.jpg', 'Quận 1, thành phố Hồ Chí Minh');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblcity`
--

CREATE TABLE `tblcity` (
  `id_city` int(10) NOT NULL,
  `city` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `tblcity`
--

INSERT INTO `tblcity` (`id_city`, `city`) VALUES
(1, 'Thành phố Hồ Chí Minh'),
(2, 'Cần Thơ'),
(3, 'Hà Nội');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblphim`
--

CREATE TABLE `tblphim` (
  `id` int(10) NOT NULL,
  `tenphim` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(500) COLLATE utf8_vietnamese_ci NOT NULL,
  `noidung` varchar(500) COLLATE utf8_vietnamese_ci NOT NULL,
  `poster` varchar(200) COLLATE utf8_vietnamese_ci NOT NULL,
  `daodien` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL,
  `dienvien` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL,
  `theloai` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL,
  `ngaykhoichieu` date NOT NULL,
  `status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `tblphim`
--

INSERT INTO `tblphim` (`id`, `tenphim`, `link`, `noidung`, `poster`, `daodien`, `dienvien`, `theloai`, `ngaykhoichieu`, `status`) VALUES
(8, 'NGƯỜI BẤT TỬ', '', '', 'upload/160_5_4.jpg', 'ac', 'ngohoang', 'Lịch Sử, Tâm Lý', '2018-10-12', 0),
(9, 'CÂU CHUYỆN LÚC NỬA ĐÊM 2: HALLOWEEN QUỶ ÁM', '', '', 'upload/160_3_16.jpg', 'Damien Chazelle', 'ngo hoang', 'Lịch Sử, Tâm Lý', '2018-10-25', 1),
(10, 'PHI VỤ TIỀN GIẢ', '', '', 'upload/160_5_3.jpg', 'Felix Chong', 'Châu Nhuận Phát, Quách Phú Thành', 'Hành Động, Tội phạm', '2018-10-25', 0),
(11, 'DẠ QUỶ', '', '', 'upload/160_3_10.jpg', 'Kim Sung-hoon', ' Hyun Bin, Jang Dong Gun', 'Ma quỉ', '2018-10-22', 0),
(12, 'DREAM MAN - LỜI KẾT BẠN CHẾT CHÓC', '', '', 'upload/160_4_1.jpg', 'Roland Nguyễn', 'Thanh Duy, Đàm Phương Linh, Anh Tú', 'Hồi hộp', '2018-10-31', 0),
(13, 'THE GRINCH', '', '', 'upload/grinch160x237_2.jpg', 'Damien Chazelle', 'Châu Nhuận Phát, Quách Phú Thành', 'Lịch Sử, Tâm Lý', '2018-10-23', 1),
(14, 'MẬT VỤ GIẢI CỨU', '', '', 'upload/160_5_6.jpg', 'Damien Chazelle', 'Châu Nhuận Phát, Quách Phú Thành', 'Hành Động', '2016-10-12', 0),
(17, 'CÔ GÁI TRONG LƯỚI NHỆN ẢO', '<iframe width=\"652\" height=\"367\" src=\"https://www.youtube.com/embed/jEvFkNl_RCU\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Được chuyển thể từ loạt tiểu thuyết trinh thám bán chạy nhất của Thuỵ Điển, sê-ri phim The Girl with the Dragon Tattoo từng được yêu thích trên màn ảnh rộng', 'upload/160_3_5.jpg', 'Fede Alvarez', 'Claire Foy, Sverrir Gudnason, Sylvia Hoeks,...', 'Hành Động, Tội phạm', '2018-11-09', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblphiminfo`
--

CREATE TABLE `tblphiminfo` (
  `id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblslider`
--

CREATE TABLE `tblslider` (
  `id` int(10) NOT NULL,
  `title` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `anh` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `thongtin` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `tblslider`
--

INSERT INTO `tblslider` (`id`, `title`, `anh`, `thongtin`, `status`) VALUES
(1, 'ácc', 'csca', 'upload/carousel1.jpg', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbluser`
--

CREATE TABLE `tbluser` (
  `id` int(10) NOT NULL,
  `taikhoan` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `tbluser`
--

INSERT INTO `tbluser` (`id`, `taikhoan`, `password`, `email`, `name`, `phone`, `address`, `status`) VALUES
(1, 'ngohoang2601', '531bc2300862d1c8d9860b2ece78ba69', '', 'Ngo Hoang', '0942781518', '6 Nguyen Luong Bang quan 7', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `time`
--

CREATE TABLE `time` (
  `id` int(255) NOT NULL,
  `time_showing` time DEFAULT NULL,
  `time` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `time`
--

INSERT INTO `time` (`id`, `time_showing`, `time`) VALUES
(1, '09:00:00', '9:00'),
(2, '12:00:00', '12:00'),
(3, '16:00:00', '16:00'),
(4, '19:00:00', '19:00'),
(5, '22:00:00', '22:00');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `showtime`
--
ALTER TABLE `showtime`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_time` (`id_time`),
  ADD KEY `fk_movie` (`id_movie`),
  ADD KEY `fk_cinema` (`id_cinema`);

--
-- Chỉ mục cho bảng `tblcinema`
--
ALTER TABLE `tblcinema`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_city` (`id_city`),
  ADD KEY `id_district` (`id_district`);

--
-- Chỉ mục cho bảng `tblcity`
--
ALTER TABLE `tblcity`
  ADD PRIMARY KEY (`id_city`);

--
-- Chỉ mục cho bảng `tblphim`
--
ALTER TABLE `tblphim`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tblphiminfo`
--
ALTER TABLE `tblphiminfo`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tblslider`
--
ALTER TABLE `tblslider`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `time`
--
ALTER TABLE `time`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `showtime`
--
ALTER TABLE `showtime`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `tblcinema`
--
ALTER TABLE `tblcinema`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `tblcity`
--
ALTER TABLE `tblcity`
  MODIFY `id_city` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `tblphim`
--
ALTER TABLE `tblphim`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `tblphiminfo`
--
ALTER TABLE `tblphiminfo`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tblslider`
--
ALTER TABLE `tblslider`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `time`
--
ALTER TABLE `time`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `showtime`
--
ALTER TABLE `showtime`
  ADD CONSTRAINT `fk_cinema` FOREIGN KEY (`id_cinema`) REFERENCES `tblcinema` (`id`),
  ADD CONSTRAINT `fk_movie` FOREIGN KEY (`id_movie`) REFERENCES `tblphim` (`id`),
  ADD CONSTRAINT `fk_time` FOREIGN KEY (`id_time`) REFERENCES `time` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
