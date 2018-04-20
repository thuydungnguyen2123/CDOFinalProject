-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2017 at 08:24 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `noi_that`
--

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `idBanner` int(11) NOT NULL,
  `TenBanner` varchar(255) NOT NULL,
  `UrlHinh` varchar(255) NOT NULL,
  `sapxep` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`idBanner`, `TenBanner`, `UrlHinh`, `sapxep`) VALUES
(1, 'Sôfa cho phòng khách', 'banner1.jpg', 1),
(2, 'Sôfa cho phòng làm việc', 'banner3.jpg', 2),
(3, 'Bộ bàn ghế phòng khách', 'banner2.jpg', 3),
(4, 'Sôfa phòng khách - Màu nâu ', 'banner4.jpg', 4),
(5, 'Bộ bàn ghế gỗ sang trọng', 'banner5.jpg', 5);

-- --------------------------------------------------------

--
-- Table structure for table `chungloai`
--

CREATE TABLE `chungloai` (
  `idCL` int(12) NOT NULL,
  `TenCL` varchar(100) NOT NULL DEFAULT '',
  `TenCL_KD` varchar(100) NOT NULL,
  `ThuTu` int(4) NOT NULL DEFAULT '1',
  `AnHien` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `chungloai`
--

INSERT INTO `chungloai` (`idCL`, `TenCL`, `TenCL_KD`, `ThuTu`, `AnHien`) VALUES
(1, 'Bàn', 'Ban', 1, 1),
(2, 'Ghế', 'Ghe', 2, 1),
(3, 'Giường', 'Giuong', 3, 1),
(4, 'Kệ', 'Ke', 4, 1),
(5, 'Tủ', 'Tu', 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `counter`
--

CREATE TABLE `counter` (
  `counter` int(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `counter`
--

INSERT INTO `counter` (`counter`) VALUES
(180);

-- --------------------------------------------------------

--
-- Table structure for table `donhang`
--

CREATE TABLE `donhang` (
  `idDH` int(4) NOT NULL,
  `idUser` int(4) NOT NULL DEFAULT '0',
  `ThoiDiemDatHang` date NOT NULL DEFAULT '0000-00-00',
  `TenNguoiNhan` varchar(100) NOT NULL DEFAULT '',
  `DiaDiemGiaoHang` varchar(255) NOT NULL DEFAULT '',
  `TinhTrang` tinyint(1) NOT NULL DEFAULT '0',
  `GhiChu` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `donhang`
--

INSERT INTO `donhang` (`idDH`, `idUser`, `ThoiDiemDatHang`, `TenNguoiNhan`, `DiaDiemGiaoHang`, `TinhTrang`, `GhiChu`) VALUES
(97, 22, '2004-01-13', 'sd', 'sdsd', 0, 'sdsd'),
(96, 22, '2004-01-13', 'aaaa', 'aaaaa', 0, 'sdsdsd');

-- --------------------------------------------------------

--
-- Table structure for table `donhangchitiet`
--

CREATE TABLE `donhangchitiet` (
  `idChiTiet` int(4) NOT NULL,
  `idDH` int(4) NOT NULL DEFAULT '0',
  `idSP` int(4) NOT NULL DEFAULT '0',
  `SoLuong` int(4) NOT NULL DEFAULT '0',
  `ThanhTien` int(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `donhangchitiet`
--

INSERT INTO `donhangchitiet` (`idChiTiet`, `idDH`, `idSP`, `SoLuong`, `ThanhTien`) VALUES
(148, 97, 507, 1, 5000000);

-- --------------------------------------------------------

--
-- Table structure for table `lienket`
--

CREATE TABLE `lienket` (
  `idWebLink` int(4) NOT NULL,
  `Ten` varchar(255) NOT NULL DEFAULT '',
  `Url` varchar(255) NOT NULL DEFAULT '',
  `ThuTu` int(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lienket`
--

INSERT INTO `lienket` (`idWebLink`, `Ten`, `Url`, `ThuTu`) VALUES
(1, 'Tìm kiếm', 'http://www.google.com.vn', 1),
(11, 'Giầy thể thao', 'http://www.adidas.com', 2),
(12, 'Du Lịch', 'http://www.vietrantour.com.vn', 3),
(13, 'Mua sắm', 'http://thoitrang.com/', 4),
(14, 'Thời trang châu á', 'http://www.thoitrangchaua.com/', 5),
(15, 'Tạp chí làm đẹp', 'http://www.thoitrangchaua.com/', 6);

-- --------------------------------------------------------

--
-- Table structure for table `loaisp`
--

CREATE TABLE `loaisp` (
  `idLoai` int(12) NOT NULL,
  `idCL` int(12) NOT NULL DEFAULT '0',
  `TenLoai` varchar(100) NOT NULL DEFAULT '',
  `TenLoai_KD` varchar(100) NOT NULL,
  `ThuTu` int(4) NOT NULL DEFAULT '1',
  `AnHien` int(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `loaisp`
--

INSERT INTO `loaisp` (`idLoai`, `idCL`, `TenLoai`, `TenLoai_KD`, `ThuTu`, `AnHien`) VALUES
(1, 1, 'Bàn Ăn', 'Ban-An', 1, 1),
(2, 1, 'Bàn Console', 'Ban_console', 2, 1),
(3, 1, 'Bàn Đầu Giường', 'Ban-Dau-Giuong', 3, 1),
(4, 1, 'Bàn Làm Việc', 'Ban-Lam-Viec', 4, 1),
(5, 1, 'Bàn Ngoài Trời', 'Ban-Ngoai-Troi', 5, 1),
(6, 1, 'Bàn Sofa', 'Ban-Sofa', 6, 1),
(7, 1, 'Bàn Trang Điểm', 'Ban-Trang-Diem', 7, 1),
(21, 5, 'Tủ Giày', 'Tu-Giay', 21, 1),
(20, 5, 'Tủ Áo', 'Tu-Ao', 20, 1),
(18, 5, 'Tủ Âm Tường', 'Tu-Am-Tuong', 18, 1),
(16, 3, 'Giường Sofa Thư Giản', 'Giuong-Sofa-Thu_Gian', 16, 1),
(8, 2, 'Ghế Game', 'Ghe-Game', 8, 1),
(9, 2, 'Ghế Sofa', 'Ghe-Sofa', 9, 1),
(10, 2, 'Ghế Gỗ', 'Ghe-Go', 10, 1),
(11, 2, 'Ghế Văn Phòng', 'Ghe-Van-Phong', 11, 1),
(12, 3, 'Giường Gỗ', 'Giuong-Go', 12, 1),
(13, 3, 'Giường Sofa', 'Giuong-Sofa', 13, 1),
(15, 3, 'Giường Xếp', 'Giuong-Xep', 15, 1),
(19, 5, 'Tủ Bếp', 'Tu-Bep', 19, 1),
(17, 4, 'Kệ Sách', 'Ke-Sach', 17, 1),
(14, 3, 'Giường Trẻ Em', 'Giuong-Tre-Em', 14, 1),
(22, 5, 'Tủ Ly', 'Tu-Ly', 22, 1),
(23, 5, 'Tủ Tivi', 'Tu-Tivi', 23, 1);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `idMenu` int(11) NOT NULL,
  `TenMenu` varchar(225) NOT NULL,
  `AnHien` int(11) NOT NULL DEFAULT '0',
  `Link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`idMenu`, `TenMenu`, `AnHien`, `Link`) VALUES
(1, 'Trang Chủ', 0, 'index'),
(2, 'Giới Thiệu', 0, 'gioithieu'),
(3, 'Nội Thất', 1, 'noithat'),
(4, 'Tin Tức', 0, 'tintuc'),
(5, 'Hướng dẫn', 0, 'huongdan'),
(6, 'Khuyến Mãi', 0, 'khuyenmai'),
(7, 'Liên hệ', 0, 'lienhe');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `idPage` int(11) NOT NULL,
  `pageName` varchar(100) NOT NULL,
  `fileName` varchar(100) NOT NULL,
  `pageTitle` varchar(100) DEFAULT NULL,
  `metaKeyword` varchar(100) DEFAULT NULL,
  `metaDescription` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`idPage`, `pageName`, `fileName`, `pageTitle`, `metaKeyword`, `metaDescription`) VALUES
(1, 'trangchu', 'index1.php', 'Shopping online', 'Thời trang cho nam nữ và trẻ em', 'Bông tai, dây chuyền, nhẫn, vòng, quần áo, túi xách, ví , vớ, mắt kính, thắt lưng...'),
(2, 'trangloai', 'loaisp.php', 'Shopping online', 'Thời trang cho nam nữ và trẻ em', 'Bông tai, dây chuyền, nhẫn, vòng, quần áo, túi xách, ví , vớ, mắt kính, thắt lưng...'),
(3, 'trangchitiet', 'chitietsp.php', 'Shopping online', 'Thời trang cho nam nữ và trẻ em', 'Bông tai, dây chuyền, nhẫn, vòng, quần áo, túi xách, ví , vớ, mắt kính, thắt lưng...'),
(4, 'dangnhap', 'login.php', 'Thành viên đăng nhập', NULL, NULL),
(5, 'donhang', 'muahang.php', NULL, NULL, NULL),
(6, 'camon', 'muahangxong.php', 'Shopping online', NULL, NULL),
(7, 'dangkythanhvien', 'dangky.php', 'Đăng ký thành viên', NULL, NULL),
(8, 'logout', 'thoat.php', 'Thoát', NULL, NULL),
(9, '', 'index1.php', 'Shopping online', 'Thời trang cho nam nữ và trẻ em', 'Bông tai, dây chuyền, nhẫn, vòng, quần áo, túi xách, ví , vớ, mắt kính, thắt lưng...');

-- --------------------------------------------------------

--
-- Table structure for table `quang_cao`
--

CREATE TABLE `quang_cao` (
  `idQC` int(4) NOT NULL,
  `MoTa` varchar(255) NOT NULL DEFAULT '',
  `Url` varchar(255) NOT NULL DEFAULT '',
  `urlHinh` varchar(255) NOT NULL DEFAULT '',
  `idLT` int(11) NOT NULL DEFAULT '0',
  `idViTri` int(4) NOT NULL DEFAULT '1',
  `SoLanClick` int(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quang_cao`
--

INSERT INTO `quang_cao` (`idQC`, `MoTa`, `Url`, `urlHinh`, `idLT`, `idViTri`, `SoLanClick`) VALUES
(42, 'LOGO ADIDAS', 'http://www.adidas.com', 'adidas_1.jpg', 0, 1, 0),
(43, 'LOGO BURBERRY', 'http://www.burberry.com', 'burberry_1.jpg', 0, 2, 0),
(44, 'LOGO KAPPA', 'http://www.kappa.com', 'kappa_1.jpg', 0, 3, 0),
(45, 'LOGO PUMA', 'http://www.puma.com', 'puma_1.jpg', 0, 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `idSP` int(12) NOT NULL,
  `idLoai` int(12) NOT NULL DEFAULT '0',
  `idCL` int(9) NOT NULL DEFAULT '0',
  `TenSP` varchar(100) NOT NULL DEFAULT '',
  `TenSP_KD` varchar(100) NOT NULL,
  `NhaSX` varchar(255) NOT NULL,
  `BaoHanh` int(11) DEFAULT '12',
  `MoTa` varchar(255) NOT NULL DEFAULT '',
  `NgayCapNhat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Gia` int(4) NOT NULL DEFAULT '0',
  `UrlHinh` varchar(255) NOT NULL DEFAULT '',
  `baiviet` text,
  `SoLanXem` int(4) DEFAULT '0',
  `SoLuongTonKho` int(4) DEFAULT '0',
  `GhiChu` varchar(255) DEFAULT NULL,
  `SoLanMua` int(4) DEFAULT '0',
  `AnHien` int(1) DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`idSP`, `idLoai`, `idCL`, `TenSP`, `TenSP_KD`, `NhaSX`, `BaoHanh`, `MoTa`, `NgayCapNhat`, `Gia`, `UrlHinh`, `baiviet`, `SoLanXem`, `SoLuongTonKho`, `GhiChu`, `SoLanMua`, `AnHien`) VALUES
(70, 7, 1, 'bàn trang điểm 10', 'ban_trang_diem_10', 'Phung', 12, 'bàn trang điểm', '2017-02-13 17:00:00', 2000000, 'ban_trangdiem10.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 4, NULL, 0, 1),
(68, 7, 1, 'bàn trang điểm 8', 'ban_trang_diem_8', 'Minh', 12, 'bàn trang điểm', '2017-03-19 17:00:00', 4000000, 'ban_trangdiem8.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 2, NULL, 0, 1),
(69, 7, 1, 'bàn trang điểm 9', 'ban_trang_diem_9', 'Tri', 12, 'bàn trang điểm', '2017-05-16 17:00:00', 30000000, 'ban_trangdiem9.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 2, NULL, 0, 1),
(67, 7, 1, 'bàn trang điểm 7', 'ban_trang_diem_7', 'Han', 12, 'bàn trang điểm', '2017-02-20 17:00:00', 4000000, 'ban_trangdiem7.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 23, NULL, 0, 1),
(66, 7, 1, 'bàn trang điểm 6', 'ban_trang_diem_6', 'Tri', 12, 'bàn trang điểm', '2017-03-20 02:00:00', 2000000, 'ban_trangdiem6.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 2, NULL, 0, 1),
(64, 7, 1, 'bàn trang điểm 4', 'ban_trang_diem_4', 'Phung', 12, 'bàn trang điểm', '2017-05-15 17:00:00', 3000000, 'ban_trangdiem4.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 2, NULL, 0, 1),
(65, 7, 1, 'bàn trang điểm 5', 'ban_trang_diem_5', 'Phung', 12, 'bàn trang điểm', '2017-04-03 17:00:00', 2000000, 'ban_trangdiem5.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 2, NULL, 0, 1),
(63, 7, 1, 'bàn trang điểm 3', 'ban_trang_diem_3', 'Tri', 12, 'bàn trang điểm', '2017-04-30 17:00:00', 3000000, 'ban_trangdiem3.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 2, NULL, 0, 1),
(62, 6, 1, 'bàn trang điểm 2', 'ban_trang_diem_2', 'Minh', 12, 'bàn trang điểm', '2017-02-12 17:00:00', 30000000, 'ban_trangdiem2.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 2, NULL, 0, 1),
(61, 7, 1, 'bàn trang điểm 1', 'ban_trang_diem_1', 'Minh', 12, 'bàn trang điểm', '2017-01-11 01:00:00', 2000000, 'ban_trangdiem1.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 2, NULL, 0, 1),
(59, 6, 1, 'bàn sofa 9', 'ban_sofa_9', 'Tri', 12, 'bàn sofa', '2017-02-14 17:00:00', 40000000, 'ban_sofa9.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 2, NULL, 0, 1),
(60, 6, 1, 'bàn sofa 10', 'ban_sofa_10', 'Minh', 12, 'bàn sofa', '2017-05-01 17:00:00', 30000000, 'ban_sofa10.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 4, NULL, 0, 1),
(57, 6, 1, 'bàn sofa 7', 'ban_sofa_7', 'Phung', 12, 'bàn sofa ', '2016-12-07 03:00:00', 40000000, 'ban_sofa7.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 7, NULL, 0, 1),
(58, 6, 1, 'bàn sofa 8', 'ban_sofa_8', 'Minh', 12, 'bàn sofa', '2017-02-13 17:00:00', 2000000, 'ban_sofa8.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 2, NULL, 0, 1),
(56, 6, 1, 'bàn sofa 6', 'ban_sofa_6', 'Minh', 12, 'bàn sofa', '2017-02-13 17:00:00', 35000000, 'ban_sofa6.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 6, NULL, 0, 1),
(55, 6, 1, 'bàn sofa 5', 'ban_sofa_5', 'Tri', 12, 'bàn sofa', '2017-05-09 02:21:12', 20000000, 'ban_sofa5.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 2, NULL, 0, 1),
(53, 6, 1, 'bàn sofa 3', 'ban_sofa_3', 'Phung', 12, 'bàn sofa', '2017-05-16 17:00:00', 20000000, 'ban_sofa3.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 3, NULL, 0, 1),
(54, 6, 1, 'bàn sofa 4', 'ban_sofa_4', 'Han', 12, 'bàn sofa', '2017-05-01 17:00:00', 40000000, 'ban_sofa4.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 2, NULL, 0, 1),
(51, 6, 1, 'bàn sofa 1', 'ban_sofa_1', 'Minh', 12, 'bàn sofa', '2017-02-14 17:00:00', 2000000, 'ban_sofa1.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 2, NULL, 0, 1),
(52, 6, 1, 'bàn sofa 2', 'ban_sofa_2', 'Minh', 12, 'bàn sofa', '2017-01-08 17:00:00', 2000000, 'ban_sofa2.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 1, NULL, 0, 1),
(50, 5, 1, 'bàn ngoài trời 10', 'ban_ngoai_troi_10', 'Tri', 12, 'bàn ngoài trời', '2017-03-06 17:00:00', 20000000, 'ban_ngoaitroi10.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 2, NULL, 0, 1),
(49, 5, 1, 'bàn ngoài trời 9', 'ban_ngoai_troi_9', 'Han', 12, 'bàn ngoài trời', '2017-05-03 17:00:00', 20000000, 'ban_ngoaitroi9.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 3, NULL, 0, 1),
(47, 5, 1, 'bàn ngoài trời 7', 'ban_ngoai_troi_7', 'Phung', 12, 'bàn ngoài trời', '2017-01-08 17:00:00', 2000000, 'ban_ngoaitroi7.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 6, NULL, 0, 1),
(48, 5, 1, 'bàn ngoài trời 8', 'ban_ngoai_troi_8', 'Tri', 12, 'bàn ngoài trời', '2017-05-09 17:00:00', 20000000, 'ban_ngoaitroi8.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 3, NULL, 0, 1),
(46, 5, 1, 'bàn ngoài trời 6', 'ban_ngoai_troi_6', 'Minh', 12, 'bàn ngoài trời', '2017-01-10 17:00:00', 2000000, 'ban_ngoaitroi6.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 2, NULL, 0, 1),
(44, 50, 10, 'bàn ngoài trời 4', 'ban_ngoai_troi_4', 'Han', 12, 'bàn ngoài trời', '2017-04-30 17:00:00', 20000000, 'ban_ngoaitroi4.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 6, NULL, 0, 1),
(45, 5, 1, 'bàn ngoài trời 5', 'ban_ngoai_troi_5', 'Tri', 12, 'bàn ngoài trời', '2017-05-29 07:53:51', 2000000, 'ban_ngoaitroi5.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 5, NULL, 0, 1),
(43, 5, 1, 'bàn ngoài trời 3', 'ban_ngoai_troi_3', 'Phung', 12, 'bàn ngoài trời', '2017-04-03 17:00:00', 2000000, 'ban_ngoaitroi3.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 2, NULL, 0, 1),
(42, 5, 1, 'bàn ngoài trời 2', 'ban_ngoai_troi_2', 'Minh', 12, 'bàn ngoài trời', '2017-02-06 02:17:00', 3500000, 'ban_ngoaitroi2.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 2, NULL, 0, 1),
(40, 4, 1, 'bàn làm việc 10', 'ban_lam_viec_10', 'Hân', 12, 'bàn làm việc', '2017-02-07 04:00:00', 2500000, 'ban_lamviec10.jpg', NULL, 0, 4, NULL, 0, 1),
(41, 5, 1, 'bàn ngoài trời 1', 'ban_ngoai_troi_1', 'Tri', 12, 'bàn ngoài trời', '2017-02-06 08:00:00', 2000000, 'ban_ngoaitroi1.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 4, NULL, 0, 1),
(38, 4, 1, 'bàn làm việc 8', 'ban_lam_viec_8', 'Phung', 12, 'bàn làm việc', '2017-05-16 17:00:00', 25000000, 'ban_lamviec8.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 3, NULL, 0, 1),
(39, 4, 1, 'bàn làm việc 9', 'ban_lam_viec_9', 'Tri', 12, 'bàn làm việc', '2017-05-15 17:00:00', 30000000, 'ban_lamviec9.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 5, NULL, 0, 1),
(37, 4, 1, 'bàn làm việc 7', 'ban_lam_viec_7', 'Minh', 12, 'bàn làm việc', '2017-02-06 17:00:00', 20000000, 'ban_lamviec7.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 8, NULL, 0, 1),
(36, 4, 1, 'bàn làm việc 6', 'ban_lam_viec_6', 'Tri', 12, 'bàn làm việc', '2017-05-25 06:00:00', 20000000, 'ban_lamviec6.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 4, NULL, 0, 1),
(34, 4, 1, 'bàn làm việc 4', 'ban_lam_viec_4', 'Minh', 12, 'bàn làm việc', '2016-11-30 17:00:00', 20000000, 'ban_lamviec4.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 3, NULL, 0, 1),
(35, 4, 1, 'bàn làm việc 5', 'ban)lam_viec_5', 'Phung', 12, 'bàn làm việc', '2017-02-28 07:00:00', 1500000, 'ban_lamviec5.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 2, NULL, 0, 1),
(33, 4, 1, 'bàn làm việc 3', 'ban_lam_viec_3', 'Phụng', 12, 'bàn làm việc', '2017-02-08 09:31:00', 20000000, 'ban_lamviec3.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 2, NULL, 0, 1),
(31, 4, 1, 'bàn làm việc 1', 'ban_lam_viec_1', 'Tri', 12, 'bàn làm việc', '2017-05-15 23:00:00', 2000000, 'ban_lamviec1.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 2, NULL, 0, 1),
(32, 4, 1, 'bàn làm việc 2', 'ban_lam_viec_2', 'Minh', 12, 'bàn làm việc', '2017-02-06 02:22:00', 15000000, 'ban_lamviec2.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 2, NULL, 0, 1),
(30, 3, 1, 'bàn đầu giường 10', 'ban_dau_giuong_10', 'Trí', 12, 'bàn đầu giường', '2017-05-07 20:00:00', 15000000, 'ban_daugiuong10.jpg', '', 0, 3, NULL, 0, 1),
(29, 3, 1, 'bàn đầu giường 9', 'ban_dau_giuong_9', 'Minh', 12, 'bàn đầu giường', '2017-02-07 01:00:00', 2000000, 'ban_daugiuong9.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 2, NULL, 0, 1),
(28, 3, 1, 'bàn đầu giường 8', 'ban_dau_truong_8', 'Phụng', 12, 'bàn đầu giường', '2017-04-30 23:28:48', 30000000, 'ban_daugiuong8.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 2, NULL, 0, 1),
(27, 3, 1, 'bàn đầu giường 7', 'ban_dau_giuong_7', 'Trí', 12, 'bàn đầu giường', '2017-02-07 01:00:00', 20000000, 'ban_daugiuong7.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 2, NULL, 0, 1),
(26, 3, 1, 'bàn đầu giường 6', 'ban_dau_giuong_6', 'Minh', 12, 'bàn đầu giường', '2017-04-11 00:21:00', 15000000, 'ban_daugiuong6.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 7, NULL, 0, 1),
(25, 3, 1, 'bàn đầu giường 5', 'ban_dau_giuong_5', 'Minh', 12, 'bàn đầu giường', '2017-02-05 17:00:00', 1000000, 'ban_daugiuong5.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 2, NULL, 0, 1),
(24, 3, 1, 'bàn đầu giường 4', 'ban_dau_giuong_4', 'Trí', 12, 'bàn đầu giường', '2017-05-03 17:00:00', 10000000, 'ban_daugiuong4.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 2, NULL, 0, 1),
(23, 3, 1, 'bàn đầu giường 3', 'ban_dau_giuong_3', 'phụng', 12, 'bàn đầu giường', '2017-04-30 17:00:00', 20000000, 'ban_daugiuong3.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 2, NULL, 0, 1),
(22, 3, 1, 'bàn đầu giường 2', 'ban_dau_giuong_2', 'Minh', 12, 'bàn đầu giường', '2017-02-15 07:18:00', 15000000, 'ban_daugiuong2.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 5, NULL, 0, 1),
(21, 3, 1, 'bàn đầu giường 1', 'ban_dau_giuong_1', 'Trí', 12, 'bàn đầu giường ', '2017-01-09 04:20:20', 2000000, 'ban_daugiuong1.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 2, NULL, 0, 1),
(19, 2, 1, 'bàn console 9', 'ban_console_9', 'Phụng', 12, 'bàn để đồ', '2017-04-04 00:00:00', 1000000, 'ban_console9.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 3, NULL, 0, 1),
(20, 2, 1, 'bàn console 10', 'ban_console_10', 'Minh', 12, 'bàn để đồ', '2017-03-14 11:23:14', 2500000, 'ban_console10.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 8, NULL, 0, 1),
(18, 2, 1, 'bàn console 8', 'ban_console_8', 'Trí', 12, 'bàn để đồ', '2017-05-11 03:39:20', 25000000, 'ban_console8.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 9, NULL, 0, 1),
(17, 2, 1, 'bàn console 7', 'ban_console_7', 'Minh', 12, 'bàn để đồ', '2017-05-19 17:00:00', 4000000, 'ban_console7.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 7, NULL, 0, 1),
(15, 2, 1, 'bàn console 5', 'ban_console_5', 'Trí', 12, 'bàn đựng đồ', '2017-05-14 17:00:00', 3000000, 'ban_console5.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 7, NULL, 0, 1),
(16, 2, 1, 'bàn console 6', 'ban_console_6', 'Minh', 12, 'bàn để đồ', '2017-05-13 09:00:00', 20000000, 'ban_console6.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 12, NULL, 0, 1),
(14, 2, 1, 'bàn console 4', 'ban_an_4', 'Phụng', 12, 'bàn để đồ\r\n', '2017-02-08 06:00:00', 20000000, 'ban_console4.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 2, NULL, 0, 1),
(13, 2, 1, 'bàn console 3', 'ban_console_3', 'Trí', 12, 'bàn chứa đồ', '2017-05-17 06:00:00', 3000000, 'ban_console3.jpg', '<p>bàn để đồ </p>', 0, 2, NULL, 0, 1),
(12, 2, 1, 'bàn console 2', 'ban_console_2', 'Phụng', 12, 'bàn đựng đồ', '2017-01-04 04:00:00', 2000000, 'ban_console2.jpg', '<p>bàn sang trọng </p>', 0, 3, NULL, 0, 1),
(9, 1, 1, 'bàn ăn 9', 'ban_an_9', 'Phụng', 12, 'bàn ăn bình dân', '2017-05-15 17:00:00', 2000000, 'ban_an9.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 2, NULL, 0, 1),
(10, 1, 1, 'bàn ăn 10', 'ban_an_10', 'Minh', 12, 'bàn ăn', '2017-04-30 17:00:00', 2500000, 'ban_an10.jpg', '<p>bàn ăn cơm </p>', 0, 5, NULL, 0, 1),
(11, 2, 1, 'bàn console 1', 'ban_console_1', 'Minh', 12, 'bàn để đồ', '2017-02-21 00:24:20', 2000000, 'ban_console1.jpg', '<p>bàn console  </p>', 0, 2, NULL, 0, 1),
(8, 1, 1, 'bàn ăn 8', 'ban_an_8', 'Trí', 15, 'bàn ăn cơm', '2017-05-02 00:14:18', 2000000, 'ban_an8.jpg', '<p>bàn ăn thời trang </p>', 0, 7, NULL, 0, 1),
(6, 1, 1, 'bàn ăn 6', 'ban_an_6', 'Minh', 12, 'bàn ngồi ăn', '2017-02-20 02:21:21', 3000000, 'ban_an6.jpg', '<p> bàn ăn tiện lợi </p>', 0, 3, NULL, 0, 1),
(7, 1, 1, 'bàn ăn 7', 'ban_an_7', 'Trí', 12, 'bàn ăn bún', '2017-02-07 21:26:19', 1500000, 'ban_an7.jpg', '<p>bàn ăn  </p>', 0, 3, NULL, 0, 1),
(5, 1, 1, 'bàn ăn 5', 'ban_an_5', 'Trí', 12, 'bàn ăn', '2017-02-06 17:21:00', 1500000, 'ban_an5.jpg', '<p> bàn ăn đẹp </p>', 0, 5, NULL, 0, 1),
(4, 1, 1, 'bàn ăn 4', 'ban_an_4', 'Trí', 21, 'bàn ăn cơm ', '2017-05-02 17:00:00', 3000000, 'ban_an4.jpg', '<p> bàn ăn lịch sự </p>', 0, 5, NULL, 0, 1),
(1, 1, 1, 'bàn ăn 1', 'ban_an_1', 'Minh', 12, 'bàn để ăn', '2017-05-15 17:00:00', 2000000, 'ban_an1.jpg', '<p>bàn ăn sang trọng</p>', 0, 10, 'bàn ăn', 0, 1),
(2, 1, 1, 'bàn ăn 2', 'ban_an_2', 'Trí', 24, 'bàn ăn cơm', '2017-05-01 00:11:17', 4000000, 'ban_an2.jpg', '<p> bàn ăn cơm</p>', 1, 20, 'bàn ăn', 0, 1),
(3, 1, 1, 'bàn ăn 3', 'ban_an_3', 'Phụng', 123, 'bàn ăn ', '2016-07-05 00:18:14', 5000000, 'ban_an3.jpg', '<p> bàn ăn thời thượng </p>', 0, 12, 'abc', 0, 1),
(71, 8, 2, 'ghế game 1', 'ghe_game_1', 'Minh', 12, 'ghế chơi game', '2017-02-06 09:36:00', 3000000, 'ghe_game1.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 2, NULL, 0, 1),
(72, 8, 2, 'ghế game 2', 'ghe_game_2', 'Trí', 12, 'ghế game', '2017-05-01 01:14:00', 3600000, 'ghe_game2.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 2, NULL, 0, 1),
(73, 8, 2, 'ghế game 3', 'ghe_game_3', 'Phụng', 12, 'ghế game', '2016-12-06 01:37:37', 4000000, 'ghe_game3.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 4, NULL, 0, 1),
(74, 8, 2, 'ghế game 4', 'ghe_game_4', 'Hân', 12, 'ghế game', '2016-11-21 11:25:00', 5000000, 'ghe_game4.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 6, NULL, 0, 1),
(75, 8, 2, 'ghế game 5', 'ghe_game_5', 'Phụng', 12, 'ghế game', '2017-04-04 09:00:00', 4000000, 'ghe_game5.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 2, NULL, 0, 1),
(76, 8, 2, 'ghế game 6', 'ghe_game_6', 'Trí', 12, 'ghế game', '2017-02-20 00:00:00', 3000000, 'ghe_game6.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 4, NULL, 0, 1),
(77, 8, 2, 'ghế game 7', 'ghe_game_7', 'Hân', 12, 'ghế game', '2017-05-08 05:00:00', 5000000, 'ghe_game7.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 2, NULL, 0, 1),
(78, 8, 2, 'ghế game 8', 'ghe_game_8', 'Minh', 12, 'ghế game', '2017-01-19 06:18:00', 3000000, 'ghe_game8.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 3, NULL, 0, 1),
(79, 8, 2, 'ghế game 9', 'ghe_game_9', 'Phụng', 12, 'ghế game', '2017-04-14 00:18:00', 3000000, 'ghe_game9.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 4, NULL, 0, 1),
(80, 8, 2, 'ghế game 10', 'ghe_game_10', 'Trí', 12, 'ghế game', '2017-02-07 07:15:00', 0, 'ghe_game10.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 2, NULL, 0, 1),
(81, 9, 2, 'ghế sofa 1', 'ghe_sofa_1', 'Trí', 12, 'ghế sofa', '2017-03-07 02:23:00', 3000000, 'ghe_sofa1.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 7, NULL, 0, 1),
(82, 9, 2, 'ghế sofa 2', 'ghe_sofa_2', 'Minh', 12, 'ghế sofa', '2017-01-01 22:00:00', 6000000, 'ghe_sofa2.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 6, NULL, 0, 1),
(83, 9, 2, 'ghế sofa 3', 'ghe_sofa_3', 'Phụng', 12, 'ghế sofa', '2017-02-07 01:12:00', 5000000, 'ghe_sofa3.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 7, NULL, 0, 1),
(84, 9, 2, 'ghế sofa 4', 'ghe_sofa_4', 'Phụng', 12, 'ghế sofa', '2017-04-11 05:00:00', 4000000, 'ghe_sofa4.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 8, NULL, 0, 1),
(85, 9, 2, 'ghế sofa 5', 'ghe_sofa_5', 'Trí', 12, 'ghế sofa', '2017-03-15 05:21:00', 4500000, 'ghe_sofa5.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 9, NULL, 0, 1),
(86, 9, 2, 'ghế sofa 6', 'ghe_sofa6.jpg', 'Hân', 12, 'ghế sofa', '2017-03-16 07:28:00', 3500000, 'ghe_sofa6.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 10, NULL, 0, 1),
(87, 9, 2, 'ghế sofa 7', ' ghe_sofa_7', 'Hân', 12, 'ghế sofa', '2017-03-22 05:21:00', 5000000, 'ghe_sofa7.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 20, NULL, 0, 1),
(88, 9, 2, 'ghế sofa 8', 'ghe_sofa_8', 'Trí', 12, 'ghế sofa', '2017-04-13 06:16:00', 3000000, 'ghe_sofa8.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 12, NULL, 0, 1),
(89, 9, 2, 'ghế sofa 9', 'ghe_sofa_9', 'Minh', 12, 'ghế sofa', '2017-02-07 06:24:00', 3500000, 'ghe_sofa9.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 15, NULL, 0, 1),
(90, 9, 2, 'ghế sofa 10', 'ghe_sofa_10', 'Phụng', 12, 'ghế sofa', '2017-05-01 14:40:00', 7000000, 'ghe_sofa10.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 10, NULL, 0, 1),
(91, 10, 2, 'ghế gỗ 1', 'ghe_go_1', 'Trí', 12, 'ghế gỗ', '2017-05-17 02:21:00', 3500000, 'ghe_go1.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 10, NULL, 0, 1),
(92, 10, 2, 'ghế gỗ 2', 'ghe_go_2', 'Minh', 12, 'ghế gỗ', '2017-03-14 17:00:00', 4000000, 'ghe_go2.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 15, NULL, 0, 1),
(93, 10, 2, 'ghế gỗ 3', 'ghe_go_3', 'Phụng', 12, 'ghế gỗ', '2017-04-04 00:17:00', 3500000, 'ghe_go3.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 15, NULL, 0, 1),
(94, 10, 2, 'ghế gỗ 4', 'ghế gỗ 4', 'Hân', 12, 'ghế gỗ', '2017-03-14 07:18:00', 4000000, 'ghe_go4.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 6000000, NULL, 0, 1),
(95, 10, 2, 'ghế gỗ 5', 'ghe_go_5', 'Phụng', 12, 'ghế gỗ ', '2017-04-27 06:20:52', 4000000, 'ghe_go5.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 20, NULL, 0, 1),
(96, 10, 2, 'ghế gỗ 6', 'ghe_go_6', 'Trí', 12, 'ghế gỗ', '2017-04-06 05:38:46', 3500000, 'ghe_go6.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 10, NULL, 0, 1),
(97, 10, 2, 'ghế gỗ 7', 'ghe_go_7', 'Minh', 12, 'ghế gỗ', '2017-03-23 05:21:00', 6000000, 'ghe_go7.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 10, NULL, 0, 1),
(98, 10, 2, 'ghế gỗ 8', 'ghe_go_8', 'Phụng', 12, 'ghế gỗ', '2017-03-16 04:21:00', 3500000, 'ghe_go8.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 15, NULL, 0, 1),
(99, 10, 2, 'ghế gỗ 9', 'ghe_go_9', 'Hân', 12, 'ghế gỗ ', '2017-02-08 05:33:00', 5000000, 'ghe_go9.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 20, NULL, 0, 1),
(100, 10, 2, 'ghế gỗ 10', 'ghe_go_10', 'Minh', 12, 'ghế gỗ ', '2017-02-10 11:24:34', 3500000, 'ghe_go10.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 14, NULL, 0, 1),
(101, 11, 2, 'ghế văn phòng 1', 'ghe_van_phong_1', 'Trí', 12, 'ghế văn phòng', '2017-04-12 05:26:00', 3000000, 'ghe_vanphong1.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 20, NULL, 0, 1),
(102, 11, 2, 'ghế văn phòng 2', 'ghe_van_phong_2', 'Minh', 12, 'ghế văn phòng', '2017-04-05 07:21:26', 2500000, 'ghe_vanphong2.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 15, NULL, 0, 1),
(103, 11, 2, 'ghế văn phòng 3', 'ghe_van_phong_3', 'Phụng', 12, 'ghế văn phòng', '2017-02-03 08:29:00', 4500000, 'ghe_vanphong3.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 14, NULL, 0, 1),
(104, 11, 2, 'ghế văn phòng 4', 'ghe_van_phong_4', 'Hân', 12, 'ghế văn phòng', '2017-04-06 08:00:00', 2500000, 'ghe_vanphong4.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 30, NULL, 0, 1),
(105, 11, 2, 'ghế văn phòng 5', 'ghe_van_phong_5', 'Trí', 12, 'ghế văn phòng', '2017-04-13 17:00:00', 5000000, 'ghe_vanphong5.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 10, NULL, 0, 1),
(106, 11, 2, 'ghế văn phòng 6', 'ghế_văn_phòng_6', 'Minh', 12, 'ghế văn phòng', '2017-03-10 09:32:00', 3500000, 'ghe_vanphong6.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 50, NULL, 0, 1),
(107, 11, 2, 'ghế văn phòng 7', 'ghe_van_phong_7', 'Minh', 12, 'ghế văn phòng', '2017-02-10 08:20:00', 3300000, 'ghe_vanphong7.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 20, NULL, 0, 1),
(108, 11, 2, 'ghế văn phòng 8', 'ghe_van_phong_8', 'Trí', 12, 'ghế văn phòng', '2017-03-23 13:23:00', 6000000, 'ghe_vanphong8.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 10, NULL, 0, 1),
(109, 11, 2, 'ghế văn phòng 9 ', 'ghe_van_phong_9', 'Minh', 12, 'ghế văn phòng', '2017-02-09 10:31:00', 3500000, 'ghe_vanphong9.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 20, NULL, 0, 1),
(110, 11, 2, 'ghế văn phòng 10', 'ghe_van_phong_10', 'Phụng', 12, 'ghế văn phòng', '2017-04-06 08:34:00', 3000000, 'ghe_vanphong10.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 19, NULL, 0, 1),
(111, 12, 3, 'giường gỗ 1', 'giuong_go_1', 'Trí', 12, 'giường gỗ', '2017-03-06 17:00:00', 10000000, 'giuong_go1.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 10, NULL, 0, 1),
(112, 12, 3, 'giường gỗ 2', 'giuong_go_2', 'Minh', 12, 'giường gỗ ', '2017-04-05 10:31:00', 12000000, 'giuong_go2.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 10, NULL, 0, 1),
(113, 12, 3, 'giường gỗ 3', 'giuong_go_3', 'Minh', 12, 'giường gỗ', '2017-03-09 08:33:23', 20000000, 'giuong_go3.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 15, NULL, 0, 1),
(114, 12, 3, 'giường gỗ 4', 'giuong_go_4', 'Hân', 12, 'giường gỗ', '2017-05-10 17:00:00', 15000000, 'giuong_go4.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 10, NULL, 0, 1),
(115, 12, 3, 'giường gỗ 5', 'giuong_go_5', 'Phụng', 12, 'giường gỗ', '2017-03-17 05:23:00', 12000000, 'giuong_go5.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 12, NULL, 0, 1),
(116, 12, 3, 'giường gỗ 6', 'giuong_go_6', 'Trí', 12, 'giường gỗ', '2017-02-09 09:32:00', 18000000, 'giuong_go6.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 18, NULL, 0, 1),
(117, 12, 3, 'giường gỗ 7', 'giuong_go_7', 'Minh', 12, 'giường gỗ ', '2017-03-03 13:25:00', 16000000, 'giuong_go7.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 18, NULL, 0, 1),
(118, 12, 3, 'giường gỗ 8', 'giuong_go_8', 'Phụng', 12, 'giường gỗ ', '2017-02-16 06:00:00', 14000000, 'giuong_go8.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 17, NULL, 0, 1),
(119, 12, 3, 'giường gỗ 9', 'giuong_go_9', 'Trí', 12, 'giường gỗ ', '2017-02-15 10:29:00', 20000000, 'giuong_go9.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 12, NULL, 0, 1),
(120, 12, 3, 'giường gỗ 10', 'giuong_go_10', 'Phụng', 12, 'giường gỗ', '2017-02-02 10:24:00', 18000000, 'giuong_go10.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 19, NULL, 0, 1),
(121, 13, 3, 'giường sofa 1', 'giuong_sofa_1', 'Trí', 12, 'giường sofa', '2017-03-16 10:24:00', 25000000, 'giuong_sofa1.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 9, NULL, 0, 1),
(122, 13, 3, 'giường sofa 2', 'giuong_sofa_2', 'Minh', 12, 'giường sofa', '2017-03-09 08:31:23', 15000000, 'giuong_sofa2.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 16000000, NULL, 0, 1),
(123, 13, 3, 'giường sofa 3', 'giuong_sofa_3', 'Hân', 12, 'giường sofa ', '2017-03-17 07:18:00', 20000000, 'giuong_sofa3.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 10, NULL, 0, 1),
(124, 13, 3, 'giường sofa 4', 'giuong_sofa_4', 'Hân', 12, 'giường sofa ', '2017-04-07 08:35:00', 29000000, 'giuong_sofa4.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 5, NULL, 0, 1),
(125, 13, 3, 'giường sofa 5', 'giuong_sofa_5', 'Phụng', 12, 'giường sofa', '2017-04-14 08:32:19', 25000000, 'giuong_sofa5.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 2, NULL, 0, 1),
(126, 13, 3, 'giường sofa 6', 'giuong_sofa_6', 'Minh', 12, 'giường sofa', '2017-04-14 08:52:44', 24000000, 'giuong_sofa6.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 2, NULL, 0, 1),
(127, 13, 3, 'giường sofa 7', 'giuong_sofa_7', 'Minh', 12, 'giường sofa', '2017-03-16 10:00:00', 30000000, 'giuong_sofa7.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 5, NULL, 0, 1),
(128, 13, 3, 'giường sofa 8', 'giuong_sofa_8', 'Trí', 12, 'giường sofa', '2017-03-16 17:00:00', 28000000, 'giuong_sofa8.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 5, NULL, 0, 1),
(129, 13, 3, 'giường sofa 9', 'giuong_sofa_9', 'Phụng', 12, 'giường sofa', '2017-05-17 08:00:00', 28000000, 'giuong_sofa9.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 7, NULL, 0, 1),
(130, 13, 3, 'giường sofa 10', 'giuong_sofa_10', 'Hân', 12, 'giường sofa', '2017-05-14 10:00:00', 40000000, 'giuong_sofa10.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 2, NULL, 0, 1),
(131, 14, 3, 'giường trẻ em 1', 'giuong_tre_em_1', 'Trí', 12, 'giường trẻ em', '2017-05-24 04:00:00', 20000000, 'giuong_treem1.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 5, NULL, 0, 1),
(132, 14, 3, 'giường trẻ em 2', 'giuong_tre_em_2', 'Minh', 12, 'giường trẻ em', '2017-02-15 09:30:00', 20000000, 'giuong_treem2.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 7, NULL, 0, 1),
(133, 14, 3, 'giường trẻ em 3', 'giuong_tre_em_3', 'Hân', 12, 'giường trẻ em', '2017-03-22 09:00:00', 25000000, 'giuong_treem3.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 7, NULL, 0, 1),
(134, 14, 3, 'giường trẻ em 4', 'giuong_tre_em_4', 'Phụng', 12, 'giường trẻ em', '2017-02-15 08:31:00', 10000000, 'giuong_treem4.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 8, NULL, 0, 1),
(135, 14, 3, 'giường trẻ em 5', 'giuong_tre_em_5', 'Phụng', 12, 'giường trẻ em', '2017-03-08 11:29:00', 15000000, 'giuong_treem5.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 12, NULL, 0, 1),
(136, 14, 3, 'giường trẻ em 6', 'giuong_tre_em_6', 'Phụng', 12, 'giường trẻ em', '2017-03-15 10:29:33', 25000000, 'giuong_treem6.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 8, NULL, 0, 1),
(137, 14, 3, 'giường trẻ em 7', 'giuong_tre_em_7', 'Trí', 12, 'giường trẻ em', '2017-04-11 17:00:00', 30000000, 'giuong_treem7.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 2, NULL, 0, 1),
(138, 14, 3, 'giường trẻ em 8', 'giuong_tre_em_8', 'Hân', 12, 'giường trẻ em', '2017-02-15 04:27:00', 12000000, 'giuong_treem8.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 10, NULL, 0, 1),
(139, 14, 3, 'giường trẻ em 9', 'giuong_tre_em_9', 'Minh', 12, 'giường trẻ em ', '2017-05-02 05:32:00', 20000000, 'giuong_treem9.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 5, NULL, 0, 1),
(140, 14, 3, 'giường trẻ em 10', 'giuong_tre_em_10', 'Hân', 12, 'giường trẻ em', '2017-04-12 09:33:39', 25000000, 'giuong_treem10.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 5, NULL, 0, 1),
(141, 15, 3, 'giường xếp 1', 'giuong_xep_1', 'Minh', 12, 'giường xếp', '2017-03-09 09:30:28', 3000000, 'giuong_xep1.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 5, NULL, 0, 1),
(142, 15, 3, 'giường xếp 2', 'giuong_xep_2', 'Trí', 12, 'giường xếp', '2017-04-20 10:24:00', 3000000, 'giuong_xep2.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 4000000, NULL, 0, 1),
(143, 15, 3, 'giường xếp 3', 'giuong_xep_3', 'Phụng', 12, 'giường xếp', '2017-03-08 09:20:00', 6000000, 'giuong_xep3.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 8, NULL, 0, 1),
(144, 15, 3, 'giường xếp 4', 'giuong_xep_4', 'Hân', 12, 'giường xếp', '2017-05-22 09:00:00', 5000000, 'giuong_xep4.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 3, NULL, 0, 1),
(145, 15, 3, 'giường xếp 5', 'giuong_xep_5', 'Phụng', 12, 'giường xếp', '2017-04-19 08:20:22', 7000000, 'giuong_xep5.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 7, NULL, 0, 1),
(146, 15, 3, 'giường xếp 6', 'giuong_xep_6', 'Trí', 12, 'giường xếp', '2017-03-22 09:24:34', 3000000, 'giuong_xep6.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 6, NULL, 0, 1),
(147, 15, 3, 'giường xếp 7', 'giuong_xep_7', 'Phụng', 12, 'giường xếp', '2017-03-22 08:00:00', 8000000, 'giuong_xep8.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 10, NULL, 0, 1),
(148, 15, 3, 'giường xếp 8', 'giuong_xep_8', 'Hân', 12, 'giường xếp', '2017-02-07 10:28:00', 4000000, 'giuong_xep8.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 10, NULL, 0, 1),
(149, 15, 3, 'giường xếp 9', 'giuong_xep_9', 'Phụng', 12, 'giường xếp', '2017-03-14 17:00:00', 6000000, 'giuong_xep9.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 8, NULL, 0, 1),
(150, 15, 3, 'giường xếp 10', 'giuong_xep_10', 'Minh', 12, 'giường xếp', '2017-03-05 17:00:00', 5600000, 'giuong_xep10.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 18, NULL, 0, 1),
(151, 16, 3, 'giường sofa thư giản 1', 'giuong_sofa_thu_gian_1', 'Trí', 12, 'giường sofa thư giản', '2017-03-02 06:25:00', 4500000, 'sofa_thugian1.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 7, NULL, 0, 1),
(152, 16, 3, 'giường sofa thư giản 2', 'giuong_sofa_thu_gian_2', 'Phụng', 12, 'giường sofa thư giản', '2017-03-15 08:25:29', 5600000, 'sofa_thugian2.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 7, NULL, 0, 1),
(153, 16, 3, 'giường sofa thư giản 3', 'giuong_sofa_thu_gian_3', 'Minh', 12, 'giường sofa thư giản', '2017-05-15 10:31:24', 8000000, 'sofa_thugian3.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 6, NULL, 0, 1),
(154, 16, 3, 'giường sofa thư giản 4', 'giuong_sofa_thu_gian_4', 'Trí', 12, 'giường sofa thư giản', '2017-03-15 08:27:25', 4500000, 'sofa_thugian4.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 8, NULL, 0, 1),
(155, 16, 3, 'giường sofa thư giản 5', 'giuong_sofa_thu_gian_5', 'Phụng', 12, 'giường sofa thư giản', '2017-03-14 03:00:00', 7000000, 'sofa_thugian5.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 18, NULL, 0, 1),
(156, 16, 3, 'giường sofa thư giản 6', 'giuong_sofa_thu_gian_6', 'Phụng', 12, 'giường sofa thư giản', '2017-02-23 04:29:00', 5500000, 'sofa_thugian6.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 24, NULL, 0, 1),
(157, 16, 3, 'giường sofa thư giản 7', 'giuong_sofa_thu_gian_7', 'Trí', 12, 'giường sofa thư giản', '2017-04-12 06:22:00', 4500000, 'sofa_thugian7.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 15, NULL, 0, 1),
(158, 16, 3, 'giường sofa thư giản 8', 'giuong_sofa_thu_gian_8', 'Hân', 12, 'giường sofa thư giản', '2017-03-08 09:31:00', 4500000, 'sofa_thugian8.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 9, NULL, 0, 1),
(159, 16, 3, 'giường sofa thư giản 9', 'giuong_sofa_thu_gian_9', 'Phụng', 12, 'giường sofa thư giản', '2017-02-23 08:27:24', 5500000, 'sofa_thugian9.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 6, NULL, 0, 1),
(160, 16, 3, 'giường sofa thư giản 10', 'giuong_sofa_thu_gian_10', 'Trí', 12, 'giường sofa thư giản', '2017-02-22 06:20:10', 4500000, 'sofa_thugian10.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 8, NULL, 0, 1),
(161, 17, 4, 'kệ sách 1', 'ke_sach_1', 'Trí', 12, 'kệ sách', '2017-02-08 10:39:49', 3500000, 'ke_sach1.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 9, NULL, 0, 1),
(162, 17, 4, 'kệ sách 2', 'ke_sach_2', 'Minh', 12, 'kệ sách', '2017-02-08 09:29:31', 3000000, 'ke_sach2.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 6, NULL, 0, 1),
(163, 17, 4, 'kệ sách 3 ', 'ke_sach_3', 'Hân', 12, 'kệ sách', '2017-02-15 08:36:27', 3500000, 'ke_sach3.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 10, NULL, 0, 1),
(164, 17, 4, 'kệ sách 4', 'ke_sach_4', 'Phụng', 12, 'kệ sách', '2017-04-12 12:26:45', 3500000, 'ke_sach4.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 5, NULL, 0, 1),
(165, 17, 4, 'kệ sách 5 ', 'ke_sach_5', 'Trí', 12, 'kệ sách', '2017-04-05 06:26:24', 4500000, 'ke_sach5.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 5, NULL, 0, 1),
(166, 17, 4, 'kệ sách 6', 'ke_sach_6', 'Minh', 12, 'kệ sách', '2017-03-07 07:31:27', 5000000, 'ke_sach6.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 10, NULL, 0, 1),
(167, 17, 4, 'kệ sách 7', 'ke_sach_7', 'Hân', 12, 'kệ sách', '2017-04-20 06:28:25', 4500000, 'ke_sach7.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 7, NULL, 0, 1),
(168, 17, 4, 'kệ sách 8', 'ke_sach_8', 'Phụng', 12, 'kệ sách', '2017-01-19 09:33:00', 5000000, 'ke_sach8.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 5, NULL, 0, 1),
(169, 17, 4, 'kệ sách 9', 'ke_sach_9', 'Phụng', 12, 'kệ sách', '2017-03-30 05:39:48', 5500000, 'ke_sach9.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 8, NULL, 0, 1),
(170, 17, 4, 'kệ sách 10', 'ke_sach_10', 'Minh', 12, 'kệ sách', '2017-04-13 07:35:25', 4500000, 'ke_sach10.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 5, NULL, 0, 1),
(171, 18, 5, 'tủ âm tường 1', 'tu_am_tuong_1', 'Minh', 12, 'tủ âm tường', '2017-05-10 04:25:38', 4000000, 'tu_amtuong1.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 5, NULL, 0, 1),
(172, 18, 5, 'tủ âm tường 2', 'tu_am_tuong_2', 'Trí', 12, 'tủ âm tường', '2017-03-31 05:59:37', 3500000, 'tu_amtuong2.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 7, NULL, 0, 1),
(173, 18, 5, 'tủ âm tường 3 ', 'tu_am_tuong_3', 'Phụng', 12, 'tủ âm tường', '2017-02-22 07:31:53', 4500000, 'tu_amtuong3.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 35, NULL, 0, 1),
(174, 18, 5, 'tủ âm tường 4', 'tu_am_tuong_4', 'Phụng', 12, 'tủ âm tường', '2017-02-15 04:43:38', 3500000, 'tu_amtuong4.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 6, NULL, 0, 1),
(175, 18, 5, 'tủ âm tường 5', 'tu_am_tuong_5', 'Trí', 12, 'tủ âm tường', '2017-02-14 06:31:16', 4500000, 'tu_amtuong5.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 5, NULL, 0, 1),
(176, 18, 5, 'tủ âm tường 6', 'tu_am_tuong_6', 'hân', 12, 'tủ âm tường', '2017-03-15 05:36:00', 5000000, 'tu_amtuong6.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 5, NULL, 0, 1),
(177, 18, 5, 'tủ âm tường 7', 'tu_am_tuong_7', 'Minh', 12, 'tủ âm tường', '2017-03-16 09:30:00', 3500000, 'tu_amtuong7.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 40, NULL, 0, 1),
(178, 18, 5, 'tủ âm tường 8', 'tu_am_tuong_8', 'Phụng', 12, 'tủ âm tường', '2017-05-29 17:00:00', 4500000, 'tu_amtuong8.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 15, NULL, 0, 1),
(179, 18, 5, 'tủ âm tường 9', 'tu_am_tuong_9', 'Phụng', 12, 'tủ âm tường', '2017-03-16 05:16:28', 4500000, 'tu_amtuong9.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 7, NULL, 0, 1),
(180, 18, 5, 'tủ âm tường 10', 'tu_am_tuong_10', 'Phụng', 12, 'tủ âm tường', '2017-04-19 07:35:36', 3500000, 'tu_amtuong10.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 8, NULL, 0, 1),
(181, 19, 5, 'tủ bếp 1', 'tu_bep_1 ', 'Trí', 12, 'tủ bếp', '2017-04-10 05:31:31', 3500000, 'tu_bep1.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 5, NULL, 0, 1),
(182, 19, 5, 'tủ bếp 2', 'tu_bep_2', 'Minh', 12, 'tủ bếp', '2017-04-20 08:32:40', 4000000, 'tu_bep2.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 5, NULL, 0, 1),
(183, 19, 5, 'tủ bếp 3', 'tu_bep_3', 'Hân', 12, 'tủ bếp', '2017-04-11 07:39:43', 3500000, 'tu_bep3.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 4, NULL, 0, 1),
(184, 19, 5, 'tủ bếp 4', 'tu_bep_4', 'Phụng', 12, 'tủ bếp', '2017-02-15 08:31:31', 4500000, 'tu_bep4.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 14, NULL, 0, 1),
(185, 19, 5, 'tủ bếp 5', 'tu_bep_5', 'Phụng', 12, 'tủ bếp', '2017-03-16 07:32:31', 4500000, 'tu_bep5.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 7, NULL, 0, 1),
(186, 19, 5, 'tủ bếp 6', 'tu_bep_6', 'Minh', 12, 'tủ bếp', '2017-04-20 08:39:37', 4500000, 'tu_bep6.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 10, NULL, 0, 1),
(187, 19, 5, 'tủ bếp 7', 'tu_bep_7', 'Hân', 12, 'tủ bếp', '2017-02-23 10:33:24', 3500000, 'tu_bep7.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 5, NULL, 0, 1),
(188, 19, 5, 'tủ bếp 8', 'tu_bep_8', 'Trí', 12, 'tủ bếp', '2017-03-17 08:23:22', 4500000, 'tu_bep8.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 5, NULL, 0, 1),
(189, 19, 5, 'tủ bếp 9', 'tu_bep_9', 'Minh', 12, 'tủ bếp ', '2017-03-15 07:32:32', 3500000, 'tu_bep9.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 5, NULL, 0, 1),
(190, 19, 5, 'tủ bếp 10', 'tu_bep_10', 'Hân', 12, 'tủ bếp', '2017-02-21 05:19:46', 4500000, 'tu_bep10.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 6, NULL, 0, 1),
(191, 20, 5, 'tủ áo 1', 'tu_ao_1', 'Trí', 12, 'tủ áo', '2017-02-15 06:36:00', 3500000, 'tu_ao1.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 4, NULL, 0, 1),
(192, 20, 5, 'tủ áo 2', 'tu_ao_2', 'Minh', 12, 'tủ áo', '2017-04-05 06:48:44', 4500000, 'tu_ao2.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 5, NULL, 0, 1),
(193, 20, 5, 'tủ áo 3', 'tu_ao_3', 'Phụng', 12, 'tủ áo', '2017-04-12 08:31:28', 3500000, 'tu_ao3.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 8, NULL, 0, 1),
(194, 20, 5, 'tủ áo 4', 'tu_ao_4', 'Minh', 12, 'tủ áo', '2017-03-16 06:28:45', 4500000, 'tu_ao4.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 5, NULL, 0, 1),
(195, 20, 5, 'tủ áo 5', 'tu_ao_5', 'Trí', 12, 'tủ áo', '2017-04-14 07:30:16', 4500000, 'tu_ao5.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 7, NULL, 0, 1),
(196, 20, 5, 'tủ áo 6', 'tu_ao_6', 'Hân', 12, 'tủ áo', '2017-04-12 07:25:45', 5000000, 'tu_ao6.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 5, NULL, 0, 1),
(197, 20, 5, 'tủ áo 7', 'tu_ao_7', 'Phụng', 12, 'tủ áo', '2017-03-15 03:46:48', 4500000, 'tu_ao7.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 6, NULL, 0, 1),
(198, 20, 5, 'tủ áo 8', 'tu_ao_8', 'Minh', 12, 'Phụng', '2017-03-23 07:30:28', 4500000, 'tu_ao8.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 5, NULL, 0, 1),
(199, 20, 5, 'tủ áo 9', 'tu_ao_9', 'Hân', 12, 'tủ áo', '2017-04-20 07:27:31', 4500000, 'tu_ao9.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 6, NULL, 0, 1),
(200, 20, 5, 'tủ áo 10', 'tu_ao_10', 'Minh', 12, 'tủ áp', '2017-03-08 10:37:35', 5000000, 'tu_ao10.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 8, NULL, 0, 1),
(201, 21, 5, 'tủ giày 1', 'tu_giay_1', 'Trí', 12, 'tủ giày', '2017-03-23 07:34:19', 3500000, 'tu_giay1.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 5, NULL, 0, 1),
(202, 21, 5, 'tủ giày 2', 'tu_giay_2', 'Minh', 12, 'tủ giày', '2017-04-05 08:30:30', 4500000, 'tu_giay2.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 9, NULL, 0, 1),
(203, 21, 5, 'tủ giảy 3', 'tu_giay_3', 'Phụng', 12, 'tủ giày', '2017-02-16 10:34:38', 4600000, 'tu_giay3.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 7, NULL, 0, 1),
(204, 21, 5, 'tủ giày 4 ', 'tu_giay_4', 'Hân', 12, 'tủ giày', '2017-04-06 06:00:00', 3500000, 'tu_giay4.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 6, NULL, 0, 1),
(205, 21, 5, 'tủ giày 5', 'tu_giay_5', 'Phụng', 12, 'tủ giày', '2017-03-15 05:25:27', 5000000, 'tu_giay5.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 7, NULL, 0, 1),
(206, 21, 5, 'tủ giày 6', 'tu_giay_6', 'Minh', 12, 'tủ giày', '2017-03-16 07:24:27', 4500000, 'tu_giay6.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 5, NULL, 0, 1),
(207, 21, 5, 'tủ giày 7', 'tu_giay_7', 'Trí', 12, 'tủ giày', '2017-03-15 12:35:00', 4500000, 'tu_giay7.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 15, NULL, 0, 1),
(208, 21, 5, 'tủ giày 8', 'tu_giay_8', 'Phụng', 12, 'tủ giày', '2017-04-12 07:31:28', 4500000, 'tu_giay8.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 7, NULL, 0, 1),
(209, 21, 5, 'tủ giày 9', 'tu_giay_9', 'Hân', 12, 'tủ giày', '2017-04-20 08:32:00', 3500000, 'tu_giay9.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 9, NULL, 0, 1),
(210, 21, 5, 'tủ giày 10', 'tu_giay_10', 'Trí', 12, 'tủ giày', '2017-04-12 06:48:00', 5000000, 'tu_giay10.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 8, NULL, 0, 1),
(211, 22, 5, 'tủ ly 1', 'tu_ly_1', 'Minh', 12, 'tủ ly', '2017-05-12 06:32:43', 2500000, 'tu_ly1.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 5, NULL, 0, 1),
(212, 22, 5, 'tủ ly 2', 'tu_ly_2', 'Minh', 12, 'tủ ly', '2017-05-15 17:00:00', 3500000, 'tu_ly2.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 6, NULL, 0, 1),
(213, 22, 5, 'tủ ly 3', 'tu_ly_3', 'Trí', 12, 'tủ lý', '2017-03-22 06:25:43', 3500000, 'tu_ly3.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 7, NULL, 0, 1),
(214, 22, 5, 'tủ ly 4', 'tu_ly_4', 'Hân', 12, 'tủ ly', '2017-04-13 06:32:00', 2500000, 'tu_ly4.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 8, NULL, 0, 1),
(215, 22, 5, 'tủ ly 5', 'tu_ly_5', 'Phụng', 12, 'tủ ly', '2017-03-22 05:36:26', 0, 'tu_ly5.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 9, NULL, 0, 1),
(216, 22, 5, 'tủ ly 6', 'tu_ly_6', 'Phụng', 12, 'tủ ly', '2017-03-15 08:30:30', 3500000, 'tu_ly6.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 9, NULL, 0, 1),
(217, 22, 5, 'tủ ly 7', 'tu_ly_7', 'Hân', 12, 'tủ ly', '2017-04-12 07:40:00', 3500000, 'tu_ly7.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 7, NULL, 0, 1),
(218, 22, 5, 'tủ ly 8', 'tu_ly_8', 'Minh', 12, 'tủ ly', '2017-03-16 11:34:28', 4500000, 'tu_ly8.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 5, NULL, 0, 1),
(219, 22, 5, 'tủ ly 9', 'tu_ly_9', 'Trí', 12, 'tủ ly', '2017-04-04 11:35:00', 5000000, 'tu_ly9.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 7, NULL, 0, 1),
(220, 22, 5, 'tủ ly 10', 'tu_ly_10', 'Phụng', 12, 'tủ ly', '2017-03-08 05:31:42', 3500000, 'tu_ly10.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 8, NULL, 0, 1),
(221, 23, 5, 'tủ tivi 1', 'tu_tivi_1', 'Trí', 12, 'tủ tivi', '2017-03-24 06:40:43', 3500000, 'tu_tivi1.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 9, NULL, 0, 1),
(222, 23, 5, 'tủ tivi 2', 'tu_tivi_2', 'Hân', 12, 'tủ tivi', '2017-03-15 06:19:31', 3500000, 'tu_tivi2.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 9, NULL, 0, 1),
(223, 23, 5, 'tủ tivi 3', 'tu_tivi_3', 'Phụng', 12, 'tủ tivi', '2017-03-24 07:21:46', 5000000, 'tu_tivi3.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 9, NULL, 0, 1),
(224, 23, 5, 'tủ tivi 4', 'tu_tivi_4', 'Phụng', 12, 'tủ tivi', '2017-04-21 10:40:29', 3500000, 'tu_tivi4.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 9, NULL, 0, 1),
(225, 23, 5, 'tủ tivi 5', 'tu_tivi_5', 'Hân', 12, 'tủ tivi', '2017-03-17 09:46:35', 4500000, 'tu_tivi5.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 8, NULL, 0, 1),
(226, 23, 5, 'tủ tivi 6', 'tu_tivi_6', 'Trí', 12, 'tủ tivi', '2017-04-06 10:34:35', 4500000, 'tu_tivi6.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 9, NULL, 0, 1),
(227, 23, 5, 'tủ tivi 7', 'tu_tivi_7', 'Hân', 12, 'tủ tivi', '2017-04-05 06:32:30', 3500000, 'tu_tivi7.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 6, NULL, 0, 1),
(228, 23, 5, 'tủ tivi 8', 'tu_tivi_8', 'Minh', 12, 'tủ tivi', '2017-04-19 09:30:31', 3500000, 'tu_tivi8.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 8, NULL, 0, 1),
(229, 23, 5, 'tủ tivi 9', 'tu_tivi_9', 'Trí', 12, 'tủ tivi', '2017-04-14 13:47:51', 3600000, 'tu_tivi9.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 8, NULL, 0, 1),
(230, 23, 5, 'tủ tivi 10 ', 'tu_tivi_10', 'Phụng', 12, 'tủ tivi', '2017-03-06 10:33:39', 4500000, 'tu_tivi10.jpg', '<p>thiết kế sang trọng, lịch lãm </p>', 0, 9, NULL, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sanpham_comment`
--

CREATE TABLE `sanpham_comment` (
  `id_comment` int(11) NOT NULL,
  `idSP` int(11) NOT NULL,
  `hoten` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `tieude` varchar(200) NOT NULL,
  `noidung` text NOT NULL,
  `ngay_comment` date DEFAULT NULL,
  `kiem_duyet` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sanpham_hinh`
--

CREATE TABLE `sanpham_hinh` (
  `id_hinh` int(11) NOT NULL,
  `idSP` int(11) NOT NULL,
  `urlHinh` varchar(150) NOT NULL,
  `stt` int(11) NOT NULL DEFAULT '1',
  `anhien` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sanpham_hinh`
--

INSERT INTO `sanpham_hinh` (`id_hinh`, `idSP`, `urlHinh`, `stt`, `anhien`) VALUES
(1, 500, 'HTC_viva_3.jpg', 1, 1),
(2, 500, 'HTC_viva_3.jpg', 1, 1),
(3, 500, 'HTC_viva_3.jpg', 1, 1),
(4, 500, 'HTC_viva_3.jpg', 1, 1),
(5, 491, 'HTC_HDmini_5.jpg', 1, 1),
(6, 491, 'HTC_HDmini_5.jpg', 1, 1),
(7, 491, 'HTC_HDmini_5.jpg', 1, 1),
(8, 491, 'HTC_HDmini_5.jpg', 1, 1),
(9, 491, 'HTC_HDmini_5.jpg', 1, 1),
(10, 491, 'HTC_HDmini_5.jpg', 1, 1),
(11, 491, 'HTC_HDmini_5.jpg', 1, 1),
(12, 492, 'HTC_HDmini_5.jpg', 1, 1),
(13, 492, 'HTC_HDmini_5.jpg', 1, 1),
(14, 492, 'HTC_HDmini_5.jpg', 1, 1),
(15, 492, 'HTC_HDmini_5.jpg', 1, 1),
(16, 492, 'HTC_HDmini_5.jpg', 1, 1),
(17, 492, 'HTC_HDmini_5.jpg', 1, 1),
(18, 492, 'HTC_HDmini_5.jpg', 1, 1),
(19, 492, 'HTC_HDmini_5.jpg', 1, 1),
(20, 492, 'HTC_HDmini_5.jpg', 1, 1),
(21, 492, 'HTC_HDmini_5.jpg', 1, 1),
(22, 492, 'HTC_HDmini_5.jpg', 1, 1),
(23, 492, 'HTC_HDmini_5.jpg', 1, 1),
(24, 493, 'HTC_HDmini_5.jpg', 1, 1),
(25, 493, 'HTC_HDmini_5.jpg', 1, 1),
(26, 493, 'HTC_HDmini_5.jpg', 1, 1),
(27, 493, 'HTC_HDmini_5.jpg', 1, 1),
(28, 493, 'HTC_HDmini_5.jpg', 1, 1),
(30, 494, 'HTC_HDmini_5.jpg', 1, 1),
(31, 494, 'HTC_HDmini_5.jpg', 1, 1),
(32, 494, 'HTC_HDmini_5.jpg', 1, 1),
(33, 494, 'HTC_HDmini_5.jpg', 1, 1),
(34, 494, 'HTC_HDmini_5.jpg', 1, 1),
(35, 494, 'HTC_HDmini_5.jpg', 1, 1),
(36, 494, 'HTC_HDmini_5.jpg', 1, 1),
(37, 494, 'HTC_HDmini_5.jpg', 1, 1),
(38, 494, 'HTC_HDmini_5.jpg', 1, 1),
(39, 494, 'HTC_HDmini_5.jpg', 1, 1),
(40, 494, 'HTC_HDmini_5.jpg', 1, 1),
(41, 494, 'HTC_HDmini_5.jpg', 1, 1),
(42, 494, 'HTC_HDmini_5.jpg', 1, 1),
(43, 494, 'HTC_HDmini_5.jpg', 1, 1),
(44, 496, 'HTC_viva_3.jpg', 1, 1),
(45, 496, 'HTC_viva_3.jpg', 1, 1),
(46, 496, 'HTC_viva_3.jpg', 1, 1),
(47, 502, 'HTC_viva_2.jpg', 1, 1),
(48, 502, 'HTC_viva_2.jpg', 1, 1),
(49, 502, 'HTC_viva_2.jpg', 1, 1),
(50, 503, 'HTC_viva_2.jpg', 1, 1),
(51, 503, 'HTC_viva_2.jpg', 1, 1),
(52, 505, 'HTC_viva_2.jpg', 1, 1),
(53, 505, 'HTC_viva_2.jpg', 1, 1),
(54, 505, 'HTC_viva_2.jpg', 1, 1),
(55, 505, 'HTC_viva_2.jpg', 1, 1),
(56, 506, 'HTC_viva_2.jpg', 1, 1),
(57, 506, 'HTC_viva_2.jpg', 1, 1),
(58, 506, 'HTC_viva_2.jpg', 1, 1),
(59, 506, 'HTC_viva_2.jpg', 1, 1),
(60, 506, 'HTC_viva_2.jpg', 1, 1),
(61, 506, 'HTC_viva_2.jpg', 1, 1),
(62, 506, 'HTC_viva_2.jpg', 1, 1),
(63, 506, 'HTC_viva_2.jpg', 1, 1),
(64, 506, 'HTC_viva_2.jpg', 1, 1),
(65, 506, 'HTC_viva_2.jpg', 1, 1),
(66, 506, 'HTC_viva_2.jpg', 1, 1),
(67, 506, 'HTC_viva_2.jpg', 1, 1),
(68, 506, 'HTC_viva_2.jpg', 1, 1),
(69, 506, 'HTC_viva_2.jpg', 1, 1),
(70, 506, 'HTC_viva_2.jpg', 1, 1),
(71, 506, 'HTC_viva_2.jpg', 1, 1),
(72, 506, 'HTC_viva_2.jpg', 1, 1),
(73, 506, 'HTC_viva_2.jpg', 1, 1),
(74, 506, 'HTC_viva_2.jpg', 1, 1),
(75, 506, 'HTC_viva_2.jpg', 1, 1),
(76, 506, 'HTC_viva_2.jpg', 1, 1),
(77, 506, 'HTC_viva_2.jpg', 1, 1),
(78, 507, 'HTC_viva_2.jpg', 1, 1),
(79, 507, 'HTC_viva_2.jpg', 1, 1),
(80, 507, 'HTC_viva_2.jpg', 1, 1),
(81, 507, 'HTC_viva_2.jpg', 1, 1),
(82, 507, 'HTC_viva_2.jpg', 1, 1),
(83, 507, 'HTC_viva_2.jpg', 1, 1),
(84, 508, 'HTC_viva_2.jpg', 1, 1),
(85, 508, 'HTC_viva_2.jpg', 1, 1),
(86, 508, 'HTC_viva_2.jpg', 1, 1),
(87, 508, 'HTC_viva_2.jpg', 1, 1),
(88, 508, 'HTC_viva_2.jpg', 1, 1),
(89, 509, 'HTC_viva_2.jpg', 1, 1),
(90, 509, 'HTC_viva_2.jpg', 1, 1),
(91, 509, 'HTC_viva_2.jpg', 1, 1),
(92, 509, 'HTC_viva_2.jpg', 1, 1),
(93, 509, 'HTC_viva_2.jpg', 1, 1),
(94, 509, 'HTC_viva_2.jpg', 1, 1),
(95, 509, 'HTC_viva_2.jpg', 1, 1),
(96, 509, 'HTC_viva_2.jpg', 1, 1),
(97, 509, 'HTC_viva_2.jpg', 1, 1),
(98, 509, 'HTC_viva_2.jpg', 1, 1),
(99, 509, 'HTC_viva_2.jpg', 1, 1),
(100, 509, 'HTC_viva_2.jpg', 1, 1),
(101, 510, 'HTC_viva_2.jpg', 1, 1),
(102, 510, 'HTC_viva_2.jpg', 1, 1),
(103, 510, 'HTC_viva_2.jpg', 1, 1),
(104, 510, 'HTC_viva_2.jpg', 1, 1),
(105, 510, 'HTC_viva_2.jpg', 1, 1),
(106, 510, 'HTC_viva_2.jpg', 1, 1),
(107, 510, 'HTC_viva_2.jpg', 1, 1),
(108, 510, 'HTC_viva_2.jpg', 1, 1),
(109, 510, 'HTC_viva_2.jpg', 1, 1),
(110, 510, 'HTC_viva_2.jpg', 1, 1),
(111, 510, 'HTC_viva_2.jpg', 1, 1),
(112, 510, 'HTC_viva_2.jpg', 1, 1),
(113, 510, 'HTC_viva_2.jpg', 1, 1),
(114, 510, 'HTC_viva_2.jpg', 1, 1),
(115, 510, 'HTC_viva_2.jpg', 1, 1),
(116, 510, 'HTC_viva_2.jpg', 1, 1),
(117, 510, 'HTC_viva_2.jpg', 1, 1),
(118, 510, 'HTC_viva_2.jpg', 1, 1),
(119, 510, 'HTC_viva_2.jpg', 1, 1),
(120, 510, 'HTC_viva_2.jpg', 1, 1),
(121, 510, 'HTC_viva_2.jpg', 1, 1),
(122, 510, 'HTC_viva_2.jpg', 1, 1),
(123, 510, 'HTC_viva_2.jpg', 1, 1),
(124, 510, 'HTC_viva_2.jpg', 1, 1),
(125, 511, 'HTC_viva_2.jpg', 1, 1),
(126, 511, 'HTC_viva_2.jpg', 1, 1),
(127, 511, 'HTC_viva_2.jpg', 1, 1),
(128, 511, 'HTC_viva_2.jpg', 1, 1),
(129, 511, 'HTC_viva_2.jpg', 1, 1),
(130, 511, 'HTC_viva_2.jpg', 1, 1),
(131, 511, 'HTC_viva_2.jpg', 1, 1),
(132, 511, 'HTC_viva_2.jpg', 1, 1),
(133, 511, 'HTC_viva_2.jpg', 1, 1),
(134, 512, 'HTC_viva_2.jpg', 1, 1),
(135, 512, 'HTC_viva_2.jpg', 1, 1),
(136, 512, 'HTC_viva_2.jpg', 1, 1),
(137, 512, 'HTC_viva_2.jpg', 1, 1),
(138, 512, 'HTC_viva_2.jpg', 1, 1),
(139, 512, 'HTC_viva_2.jpg', 1, 1),
(140, 512, 'HTC_viva_2.jpg', 1, 1),
(141, 512, 'HTC_viva_2.jpg', 1, 1),
(142, 512, 'HTC_viva_2.jpg', 1, 1),
(143, 512, 'HTC_viva_2.jpg', 1, 1),
(144, 512, 'HTC_viva_2.jpg', 1, 1),
(145, 512, 'HTC_viva_2.jpg', 1, 1),
(146, 512, 'HTC_viva_2.jpg', 1, 1),
(147, 512, 'HTC_viva_2.jpg', 1, 1),
(148, 512, 'HTC_viva_2.jpg', 1, 1),
(149, 512, 'HTC_viva_2.jpg', 1, 1),
(150, 512, 'HTC_viva_2.jpg', 1, 1),
(151, 512, 'HTC_viva_2.jpg', 1, 1),
(152, 512, 'HTC_viva_2.jpg', 1, 1),
(153, 512, 'HTC_viva_2.jpg', 1, 1),
(154, 512, 'HTC_viva_2.jpg', 1, 1),
(155, 512, 'HTC_viva_2.jpg', 1, 1),
(156, 512, 'HTC_viva_2.jpg', 1, 1),
(157, 513, 'HTC_viva_4.jpg', 1, 1),
(158, 513, 'HTC_viva_4.jpg', 1, 1),
(159, 513, 'HTC_viva_4.jpg', 1, 1),
(160, 513, 'HTC_viva_4.jpg', 1, 1),
(161, 513, 'HTC_viva_4.jpg', 1, 1),
(162, 513, 'HTC_viva_4.jpg', 1, 1),
(163, 513, 'HTC_viva_4.jpg', 1, 1),
(164, 514, 'HTC_viva_4.jpg', 1, 1),
(165, 514, 'HTC_viva_4.jpg', 1, 1),
(166, 514, 'HTC_viva_4.jpg', 1, 1),
(167, 514, 'HTC_viva_4.jpg', 1, 1),
(168, 514, 'HTC_viva_4.jpg', 1, 1),
(169, 514, 'HTC_viva_4.jpg', 1, 1),
(170, 514, 'HTC_viva_4.jpg', 1, 1),
(171, 514, 'HTC_viva_4.jpg', 1, 1),
(172, 514, 'HTC_viva_4.jpg', 1, 1),
(173, 514, 'HTC_viva_4.jpg', 1, 1),
(174, 514, 'HTC_viva_4.jpg', 1, 1),
(175, 514, 'HTC_viva_4.jpg', 1, 1),
(176, 514, 'HTC_viva_4.jpg', 1, 1),
(177, 514, 'HTC_viva_4.jpg', 1, 1),
(178, 514, 'HTC_viva_4.jpg', 1, 1),
(179, 514, 'HTC_viva_4.jpg', 1, 1),
(180, 514, 'HTC_viva_4.jpg', 1, 1),
(181, 514, 'HTC_viva_4.jpg', 1, 1),
(182, 515, 'HTC_viva_4.jpg', 1, 1),
(183, 515, 'HTC_viva_4.jpg', 1, 1),
(184, 515, 'HTC_viva_4.jpg', 1, 1),
(185, 515, 'HTC_viva_4.jpg', 1, 1),
(186, 515, 'HTC_viva_4.jpg', 1, 1),
(187, 515, 'HTC_viva_4.jpg', 1, 1),
(188, 516, 'HTC_viva_4.jpg', 1, 1),
(189, 516, 'HTC_viva_4.jpg', 1, 1),
(190, 516, 'HTC_viva_4.jpg', 1, 1),
(191, 516, 'HTC_viva_4.jpg', 1, 1),
(192, 516, 'HTC_viva_4.jpg', 1, 1),
(193, 516, 'HTC_viva_4.jpg', 1, 1),
(194, 516, 'HTC_viva_4.jpg', 1, 1),
(195, 516, 'HTC_viva_4.jpg', 1, 1),
(196, 516, 'HTC_viva_4.jpg', 1, 1),
(197, 517, 'HTC_viva_4.jpg', 1, 1),
(198, 517, 'HTC_viva_4.jpg', 1, 1),
(199, 517, 'HTC_viva_4.jpg', 1, 1),
(200, 517, 'HTC_viva_4.jpg', 1, 1),
(201, 517, 'HTC_viva_4.jpg', 1, 1),
(202, 517, 'HTC_viva_4.jpg', 1, 1),
(203, 518, 'HTC_viva_4.jpg', 1, 1),
(204, 518, 'HTC_viva_4.jpg', 1, 1),
(205, 518, 'HTC_viva_4.jpg', 1, 1),
(206, 519, 'HTC_viva_4.jpg', 1, 1),
(207, 519, 'HTC_viva_4.jpg', 1, 1),
(208, 519, 'HTC_viva_4.jpg', 1, 1),
(209, 519, 'HTC_viva_4.jpg', 1, 1),
(210, 519, 'HTC_viva_4.jpg', 1, 1),
(211, 519, 'HTC_viva_4.jpg', 1, 1),
(212, 520, '../upload/sanpham/hinhphu/Samsung_E2550_1.jpg', 1, 1),
(213, 520, '../upload/sanpham/hinhphu/Samsung_E2550_2.jpg', 1, 1),
(214, 520, '../upload/sanpham/hinhphu/Samsung_E2550_3.jpg', 1, 1),
(215, 520, '../upload/sanpham/hinhphu/Samsung_E2550_4.jpg', 1, 1),
(216, 520, '../upload/sanpham/hinhphu/Samsung_E2550_5.jpg', 1, 1),
(217, 520, '../upload/sanpham/hinhphu/Samsung_E2550_6.jpg', 1, 1),
(218, 520, '../upload/sanpham/hinhphu/Samsung_E2550_7.jpg', 1, 1),
(219, 520, '../upload/sanpham/hinhphu/Samsung_E2550_b.jpg', 1, 1),
(220, 521, '../upload/sanpham/hinhphu/Samsung_C3053_1.jpg', 1, 1),
(221, 521, '../upload/sanpham/hinhphu/Samsung_C3053_2.jpg', 1, 1),
(222, 521, '../upload/sanpham/hinhphu/Samsung_C3053_3.jpg', 1, 1),
(223, 521, '../upload/sanpham/hinhphu/Samsung_C3053_4.jpg', 1, 1),
(224, 522, 'HTC_legend_1.jpg', 1, 1),
(225, 522, 'HTC_legend_1.jpg', 1, 1),
(226, 522, 'HTC_legend_1.jpg', 1, 1),
(227, 522, 'HTC_legend_1.jpg', 1, 1),
(228, 522, 'HTC_legend_1.jpg', 1, 1),
(229, 522, 'HTC_legend_1.jpg', 1, 1),
(230, 522, 'HTC_legend_1.jpg', 1, 1),
(231, 522, 'HTC_legend_1.jpg', 1, 1),
(232, 522, 'HTC_legend_1.jpg', 1, 1),
(233, 522, 'HTC_legend_1.jpg', 1, 1),
(234, 523, 'HTC_legend_1.jpg', 1, 1),
(235, 523, 'HTC_legend_1.jpg', 1, 1),
(236, 523, 'HTC_legend_1.jpg', 1, 1),
(237, 523, 'HTC_legend_1.jpg', 1, 1),
(238, 523, 'HTC_legend_1.jpg', 1, 1),
(239, 523, 'HTC_legend_1.jpg', 1, 1),
(240, 523, 'HTC_legend_1.jpg', 1, 1),
(241, 524, 'HTC_legend_1.jpg', 1, 1),
(242, 524, 'HTC_legend_1.jpg', 1, 1),
(243, 524, 'HTC_legend_1.jpg', 1, 1),
(244, 524, 'HTC_legend_1.jpg', 1, 1),
(245, 524, 'HTC_legend_1.jpg', 1, 1),
(246, 524, 'HTC_legend_1.jpg', 1, 1),
(247, 524, 'HTC_legend_1.jpg', 1, 1),
(248, 524, 'HTC_legend_1.jpg', 1, 1),
(249, 525, 'HTC_legend_1.jpg', 1, 1),
(250, 525, 'HTC_legend_1.jpg', 1, 1),
(251, 525, 'HTC_legend_1.jpg', 1, 1),
(252, 525, 'HTC_legend_1.jpg', 1, 1),
(253, 525, 'HTC_legend_1.jpg', 1, 1),
(254, 525, 'HTC_legend_1.jpg', 1, 1),
(255, 525, 'HTC_legend_1.jpg', 1, 1),
(256, 526, 'HTC_legend_1.jpg', 1, 1),
(257, 526, 'HTC_legend_1.jpg', 1, 1),
(258, 526, 'HTC_legend_1.jpg', 1, 1),
(259, 526, 'HTC_legend_1.jpg', 1, 1),
(260, 526, 'HTC_legend_1.jpg', 1, 1),
(261, 526, 'HTC_legend_1.jpg', 1, 1),
(262, 526, 'HTC_legend_1.jpg', 1, 1),
(263, 526, 'HTC_legend_1.jpg', 1, 1),
(264, 526, 'HTC_legend_1.jpg', 1, 1),
(265, 527, 'HTC_legend_2.jpg', 1, 1),
(266, 527, 'HTC_legend_2.jpg', 1, 1),
(267, 527, 'HTC_legend_2.jpg', 1, 1),
(268, 527, 'HTC_legend_2.jpg', 1, 1),
(269, 527, 'HTC_legend_2.jpg', 1, 1),
(270, 527, 'HTC_legend_2.jpg', 1, 1),
(271, 527, 'HTC_legend_2.jpg', 1, 1),
(272, 527, 'HTC_legend_2.jpg', 1, 1),
(273, 528, 'HTC_legend_2.jpg', 1, 1),
(274, 528, 'HTC_legend_2.jpg', 1, 1),
(275, 528, 'HTC_legend_2.jpg', 1, 1),
(276, 528, 'HTC_legend_2.jpg', 1, 1),
(277, 528, 'HTC_legend_2.jpg', 1, 1),
(278, 528, 'HTC_legend_2.jpg', 1, 1),
(279, 528, 'HTC_legend_2.jpg', 1, 1),
(280, 528, 'HTC_legend_2.jpg', 1, 1),
(281, 528, 'HTC_legend_2.jpg', 1, 1),
(282, 528, 'HTC_legend_2.jpg', 1, 1),
(283, 528, 'HTC_legend_2.jpg', 1, 1),
(284, 528, 'HTC_legend_2.jpg', 1, 1),
(285, 529, '../upload/sanpham/hinhphu/HTCTouch_2.jpg', 1, 1),
(286, 529, '../upload/sanpham/hinhphu/HTCTouch_3.jpg', 1, 1),
(287, 529, '../upload/sanpham/hinhphu/HTCTouch_4.jpg', 1, 1),
(291, 530, 'HTC_legend_3.jpg', 1, 1),
(297, 530, 'HTC_legend_3.jpg', 1, 1),
(292, 530, 'HTC_legend_3.jpg', 1, 1),
(293, 530, 'HTC_legend_3.jpg', 1, 1),
(294, 530, 'HTC_legend_3.jpg', 1, 1),
(295, 530, 'HTC_legend_3.jpg', 1, 1),
(296, 530, 'HTC_legend_3.jpg', 1, 1),
(298, 530, 'HTC_legend_3.jpg', 1, 1),
(299, 530, 'HTC_legend_3.jpg', 1, 1),
(300, 530, 'HTC_legend_3.jpg', 1, 1),
(301, 530, 'HTC_legend_3.jpg', 1, 1),
(302, 530, 'HTC_legend_3.jpg', 1, 1),
(303, 531, 'HTC_legend_3.jpg', 1, 1),
(304, 531, 'HTC_legend_3.jpg', 1, 1),
(305, 531, 'HTC_legend_3.jpg', 1, 1),
(306, 531, 'HTC_legend_3.jpg', 1, 1),
(307, 531, 'HTC_legend_3.jpg', 1, 1),
(308, 531, 'HTC_legend_3.jpg', 1, 1),
(309, 531, 'HTC_legend_3.jpg', 1, 1),
(310, 531, 'HTC_legend_3.jpg', 1, 1),
(311, 531, 'HTC_legend_3.jpg', 1, 1),
(312, 531, 'HTC_legend_3.jpg', 1, 1),
(313, 531, 'HTC_legend_3.jpg', 1, 1),
(314, 531, 'HTC_legend_3.jpg', 1, 1),
(315, 532, 'HTC_legend_3.jpg', 1, 1),
(316, 532, 'HTC_legend_3.jpg', 1, 1),
(317, 532, 'HTC_legend_3.jpg', 1, 1),
(318, 532, 'HTC_legend_3.jpg', 1, 1),
(319, 532, 'HTC_legend_3.jpg', 1, 1),
(320, 532, 'HTC_legend_3.jpg', 1, 1),
(321, 532, 'HTC_legend_3.jpg', 1, 1),
(322, 532, 'HTC_legend_3.jpg', 1, 1),
(323, 533, 'HTC_legend_3.jpg', 1, 1),
(324, 533, 'HTC_legend_3.jpg', 1, 1),
(325, 533, 'HTC_legend_3.jpg', 1, 1),
(326, 533, 'HTC_legend_3.jpg', 1, 1),
(327, 533, 'HTC_legend_3.jpg', 1, 1),
(328, 533, 'HTC_legend_3.jpg', 1, 1),
(329, 533, 'HTC_legend_3.jpg', 1, 1),
(330, 533, 'HTC_legend_3.jpg', 1, 1),
(331, 533, 'HTC_legend_3.jpg', 1, 1),
(332, 533, 'HTC_legend_3.jpg', 1, 1),
(333, 533, 'HTC_legend_3.jpg', 1, 1),
(334, 534, 'HTC_legend_3.jpg', 1, 1),
(335, 534, 'HTC_legend_3.jpg', 1, 1),
(336, 534, 'HTC_legend_3.jpg', 1, 1),
(341, 537, 'HTC_legend_4.jpg', 1, 1),
(340, 537, 'HTC_legend_4.jpg', 1, 1),
(342, 537, 'HTC_legend_4.jpg', 1, 1),
(343, 537, 'HTC_legend_4.jpg', 1, 1),
(344, 537, 'HTC_legend_4.jpg', 1, 1),
(346, 536, 'HTC_legend_4.jpg', 1, 1),
(347, 536, 'HTC_legend_4.jpg', 1, 1),
(348, 536, 'HTC_legend_4.jpg', 1, 1),
(349, 536, 'HTC_legend_4.jpg', 1, 1),
(350, 536, 'HTC_legend_4.jpg', 1, 1),
(351, 536, 'HTC_legend_4.jpg', 1, 1),
(352, 536, 'HTC_legend_4.jpg', 1, 1),
(353, 538, 'HTC_legend_4.jpg', 1, 1),
(354, 538, 'HTC_legend_4.jpg', 1, 1),
(355, 538, 'HTC_legend_4.jpg', 1, 1),
(356, 538, 'HTC_legend_4.jpg', 1, 1),
(360, 539, 'HTC_legend_4.jpg', 1, 1),
(359, 539, 'HTC_legend_4.jpg', 1, 1),
(361, 539, 'HTC_legend_4.jpg', 1, 1),
(362, 539, 'HTC_legend_4.jpg', 1, 1),
(363, 539, 'HTC_legend_4.jpg', 1, 1),
(364, 540, '../upload/sanpham/hinhphu/GD880_2.jpg', 1, 1),
(365, 540, '../upload/sanpham/hinhphu/GD880_3.jpg', 1, 1),
(366, 540, '../upload/sanpham/hinhphu/GD880_4.jpg', 1, 1),
(367, 540, '../upload/sanpham/hinhphu/GD880_5.jpg', 1, 1),
(368, 540, '../upload/sanpham/hinhphu/GD880_6.jpg', 1, 1),
(369, 540, '../upload/sanpham/hinhphu/GD880_7.jpg', 1, 1),
(370, 540, '../upload/sanpham/hinhphu/GD880_8.jpg', 1, 1),
(371, 540, '../upload/sanpham/hinhphu/GD880_9.jpg', 1, 1),
(372, 540, '../upload/sanpham/hinhphu/GD880_10.jpg', 1, 1),
(373, 540, '../upload/sanpham/hinhphu/GD880_11.jpg', 1, 1),
(374, 540, '../upload/sanpham/hinhphu/GD880_12.jpg', 1, 1),
(375, 540, '../upload/sanpham/hinhphu/GD880_13.jpg', 1, 1),
(376, 540, '../upload/sanpham/hinhphu/GD880_14.jpg', 1, 1),
(377, 540, '../upload/sanpham/hinhphu/GD880_15.jpg', 1, 1),
(378, 540, '../upload/sanpham/hinhphu/GD880_16.jpg', 1, 1),
(379, 540, '../upload/sanpham/hinhphu/GD880_17.jpg', 1, 1),
(383, 542, 'HTC_legend_b.jpg', 1, 1),
(382, 542, 'HTC_legend_b.jpg', 1, 1),
(384, 542, 'HTC_legend_b.jpg', 1, 1),
(385, 542, 'HTC_legend_b.jpg', 1, 1),
(386, 542, 'HTC_legend_b.jpg', 1, 1),
(387, 542, 'HTC_legend_b.jpg', 1, 1),
(388, 542, 'HTC_legend_b.jpg', 1, 1),
(392, 541, '../upload/sanpham/hinhphu/X10_2.jpg', 1, 1),
(391, 541, '../upload/sanpham/hinhphu/X10_1.jpg', 1, 1),
(393, 541, '../upload/sanpham/hinhphu/X10_3.jpg', 1, 1),
(394, 541, '../upload/sanpham/hinhphu/X10_4.jpg', 1, 1),
(395, 541, '../upload/sanpham/hinhphu/X10_5.jpg', 1, 1),
(396, 541, '../upload/sanpham/hinhphu/X10_6.jpg', 1, 1),
(397, 541, '../upload/sanpham/hinhphu/X10_7.jpg', 1, 1),
(398, 541, '../upload/sanpham/hinhphu/X10_8.jpg', 1, 1),
(399, 541, '../upload/sanpham/hinhphu/X10_9.jpg', 1, 1),
(400, 541, '../upload/sanpham/hinhphu/X10_10.jpg', 1, 1),
(401, 541, '../upload/sanpham/hinhphu/X10_12.jpg', 1, 1),
(402, 541, '../upload/sanpham/hinhphu/X10_white_1.jpg', 1, 1),
(403, 541, '../upload/sanpham/hinhphu/X10_white_2.jpg', 1, 1),
(404, 541, '../upload/sanpham/hinhphu/X10_white_3.jpg', 1, 1),
(405, 541, '../upload/sanpham/hinhphu/X10_white_4.jpg', 1, 1),
(406, 541, '../upload/sanpham/hinhphu/X10_white_5.jpg', 1, 1),
(407, 541, '../upload/sanpham/hinhphu/X10_white_6.jpg', 1, 1),
(408, 541, '../upload/sanpham/hinhphu/X10_white_7.jpg', 1, 1),
(409, 543, 'HTC_legend_b.jpg', 1, 1),
(410, 543, 'HTC_legend_b.jpg', 1, 1),
(411, 543, 'HTC_legend_b.jpg', 1, 1),
(412, 544, 'HTC_legend_b.jpg', 1, 1),
(413, 544, 'HTC_legend_b.jpg', 1, 1),
(414, 544, 'HTC_legend_b.jpg', 1, 1),
(415, 544, 'HTC_legend_b.jpg', 1, 1),
(416, 544, 'HTC_legend_b.jpg', 1, 1),
(417, 544, 'HTC_legend_b.jpg', 1, 1),
(418, 545, 'HTC_legend_b.jpg', 1, 1),
(419, 545, 'HTC_legend_b.jpg', 1, 1),
(420, 545, 'HTC_legend_b.jpg', 1, 1),
(421, 545, 'HTC_legend_b.jpg', 1, 1),
(422, 545, 'HTC_legend_b.jpg', 1, 1),
(423, 545, 'HTC_legend_b.jpg', 1, 1),
(424, 545, 'HTC_legend_b.jpg', 1, 1),
(425, 545, 'HTC_legend_b.jpg', 1, 1),
(426, 545, 'HTC_legend_b.jpg', 1, 1),
(427, 545, 'HTC_legend_b.jpg', 1, 1),
(428, 545, 'HTC_legend_b.jpg', 1, 1),
(430, 546, 'HTC_legend_b.jpg', 1, 1),
(431, 546, 'HTC_legend_b.jpg', 1, 1),
(432, 546, 'HTC_legend_b.jpg', 1, 1),
(433, 546, 'HTC_legend_b.jpg', 1, 1),
(434, 546, 'HTC_legend_b.jpg', 1, 1),
(435, 546, 'HTC_legend_b.jpg', 1, 1),
(436, 546, 'HTC_legend_b.jpg', 1, 1),
(437, 546, 'HTC_legend_b.jpg', 1, 1),
(438, 546, 'HTC_legend_b.jpg', 1, 1),
(439, 547, 'HTC_legend_b.jpg', 1, 1),
(440, 547, 'HTC_legend_b.jpg', 1, 1),
(446, 548, 'HTC_legend_b.jpg', 1, 1),
(445, 548, 'HTC_legend_b.jpg', 1, 1),
(447, 548, 'HTC_legend_b.jpg', 1, 1),
(448, 549, 'LG-GW620_2.jpg', 1, 1),
(449, 549, 'LG-GW620_2.jpg', 1, 1),
(450, 549, 'LG-GW620_2.jpg', 1, 1),
(451, 549, 'LG-GW620_2.jpg', 1, 1),
(452, 549, 'LG-GW620_2.jpg', 1, 1),
(453, 549, 'LG-GW620_2.jpg', 1, 1),
(454, 550, 'LG-GW620_2.jpg', 1, 1),
(455, 550, 'LG-GW620_2.jpg', 1, 1),
(456, 550, 'LG-GW620_2.jpg', 1, 1),
(457, 550, 'LG-GW620_2.jpg', 1, 1),
(458, 550, 'LG-GW620_2.jpg', 1, 1),
(459, 550, 'LG-GW620_2.jpg', 1, 1),
(460, 550, 'LG-GW620_2.jpg', 1, 1),
(461, 550, 'LG-GW620_2.jpg', 1, 1),
(462, 550, 'LG-GW620_2.jpg', 1, 1),
(463, 550, 'LG-GW620_2.jpg', 1, 1),
(467, 551, 'LG-GW620_2.jpg', 1, 1),
(466, 551, 'LG-GW620_2.jpg', 1, 1),
(468, 551, 'LG-GW620_2.jpg', 1, 1),
(469, 552, 'LG-GW620_2.jpg', 1, 1),
(470, 552, 'LG-GW620_2.jpg', 1, 1),
(471, 552, 'LG-GW620_2.jpg', 1, 1),
(472, 552, 'LG-GW620_2.jpg', 1, 1),
(473, 552, 'LG-GW620_2.jpg', 1, 1),
(474, 552, 'LG-GW620_2.jpg', 1, 1),
(475, 552, 'LG-GW620_2.jpg', 1, 1),
(479, 554, 'LG-GW620_2.jpg', 1, 1),
(478, 554, 'LG-GW620_2.jpg', 1, 1),
(480, 554, 'LG-GW620_2.jpg', 1, 1),
(481, 554, 'LG-GW620_2.jpg', 1, 1),
(482, 554, 'LG-GW620_2.jpg', 1, 1),
(483, 554, 'LG-GW620_2.jpg', 1, 1),
(484, 553, 'LG-GW620_2.jpg', 1, 1),
(485, 553, 'LG-GW620_2.jpg', 1, 1),
(486, 553, 'LG-GW620_2.jpg', 1, 1),
(487, 553, 'LG-GW620_2.jpg', 1, 1),
(488, 553, 'LG-GW620_2.jpg', 1, 1),
(489, 553, 'LG-GW620_2.jpg', 1, 1),
(490, 553, 'LG-GW620_2.jpg', 1, 1),
(491, 553, 'LG-GW620_2.jpg', 1, 1),
(492, 553, 'LG-GW620_2.jpg', 1, 1),
(493, 553, 'LG-GW620_2.jpg', 1, 1),
(494, 553, 'LG-GW620_2.jpg', 1, 1),
(495, 553, 'LG-GW620_2.jpg', 1, 1),
(496, 556, 'LG-GW620_3.jpg', 1, 1),
(497, 556, 'LG-GW620_3.jpg', 1, 1),
(498, 556, 'LG-GW620_3.jpg', 1, 1),
(499, 556, 'LG-GW620_3.jpg', 1, 1),
(500, 556, 'LG-GW620_3.jpg', 1, 1),
(502, 555, 'LG-GW620_3.jpg', 1, 1),
(503, 555, 'LG-GW620_3.jpg', 1, 1),
(504, 555, 'LG-GW620_3.jpg', 1, 1),
(505, 555, 'LG-GW620_3.jpg', 1, 1),
(506, 555, 'LG-GW620_3.jpg', 1, 1),
(507, 555, 'LG-GW620_3.jpg', 1, 1),
(508, 555, 'LG-GW620_3.jpg', 1, 1),
(509, 555, 'LG-GW620_3.jpg', 1, 1),
(510, 555, 'LG-GW620_3.jpg', 1, 1),
(511, 555, 'LG-GW620_3.jpg', 1, 1),
(512, 555, 'LG-GW620_3.jpg', 1, 1),
(513, 557, 'LG-GW620_3.jpg', 1, 1),
(514, 557, 'LG-GW620_3.jpg', 1, 1),
(515, 557, 'LG-GW620_3.jpg', 1, 1),
(516, 557, 'LG-GW620_3.jpg', 1, 1),
(517, 557, 'LG-GW620_3.jpg', 1, 1),
(518, 557, 'LG-GW620_3.jpg', 1, 1),
(519, 557, 'LG-GW620_3.jpg', 1, 1),
(527, 559, './upload/sanpham/hinhphu/HTC_legend_2.jpg', 1, 1),
(522, 558, './upload/sanpham/hinhphu/HTC_legend_1.jpg', 1, 1),
(523, 558, './upload/sanpham/hinhphu/HTC_legend_1.jpg', 1, 1),
(524, 558, './upload/sanpham/hinhphu/HTC_legend_1.jpg', 1, 1),
(525, 558, './upload/sanpham/hinhphu/HTC_legend_1.jpg', 1, 1),
(526, 558, './upload/sanpham/hinhphu/HTC_legend_1.jpg', 1, 1),
(528, 559, './upload/sanpham/hinhphu/HTC_legend_2.jpg', 1, 1),
(530, 560, './upload/sanpham/hinhphu/HTC_legend_3.jpg', 1, 1),
(531, 560, './upload/sanpham/hinhphu/HTC_legend_3.jpg', 1, 1),
(532, 560, './upload/sanpham/hinhphu/HTC_legend_3.jpg', 1, 1),
(533, 560, './upload/sanpham/hinhphu/HTC_legend_3.jpg', 1, 1),
(534, 560, './upload/sanpham/hinhphu/HTC_legend_3.jpg', 1, 1),
(535, 560, './upload/sanpham/hinhphu/HTC_legend_3.jpg', 1, 1),
(536, 561, './upload/sanpham/hinhphu/HTC_legend_4.jpg', 1, 1),
(537, 561, './upload/sanpham/hinhphu/HTC_legend_4.jpg', 1, 1),
(538, 561, './upload/sanpham/hinhphu/HTC_legend_4.jpg', 1, 1),
(539, 561, './upload/sanpham/hinhphu/HTC_legend_4.jpg', 1, 1),
(543, 562, './upload/sanpham/hinhphu/HTC_legend_b.jpg', 1, 1),
(542, 562, './upload/sanpham/hinhphu/HTC_legend_b.jpg', 1, 1),
(544, 562, './upload/sanpham/hinhphu/HTC_legend_b.jpg', 1, 1),
(545, 562, './upload/sanpham/hinhphu/HTC_legend_b.jpg', 1, 1),
(546, 562, './upload/sanpham/hinhphu/HTC_legend_b.jpg', 1, 1),
(547, 562, './upload/sanpham/hinhphu/HTC_legend_b.jpg', 1, 1),
(548, 562, './upload/sanpham/hinhphu/HTC_legend_b.jpg', 1, 1),
(549, 563, 'LG_T300_1.jpg', 1, 1),
(550, 563, 'LG_T300_1.jpg', 1, 1),
(551, 563, 'LG_T300_1.jpg', 1, 1),
(552, 563, 'LG_T300_1.jpg', 1, 1),
(553, 563, 'LG_T300_1.jpg', 1, 1),
(554, 563, 'LG_T300_1.jpg', 1, 1),
(555, 564, 'LG_T300_1.jpg', 1, 1),
(556, 564, 'LG_T300_1.jpg', 1, 1),
(557, 564, 'LG_T300_1.jpg', 1, 1),
(558, 565, '../upload/sanpham/hinhphu/HTC_legend_1.jpg', 1, 1),
(559, 565, '../upload/sanpham/hinhphu/HTC_legend_2.jpg', 1, 1),
(560, 565, '../upload/sanpham/hinhphu/HTC_legend_3.jpg', 1, 1),
(561, 565, '../upload/sanpham/hinhphu/HTC_legend_4.jpg', 1, 1),
(562, 565, '../upload/sanpham/hinhphu/HTC_legend_b.jpg', 1, 1),
(563, 566, 'LG_T300_2.jpg', 1, 1),
(564, 566, 'LG_T300_2.jpg', 1, 1),
(566, 567, 'LG_T300_2.jpg', 1, 1),
(567, 567, 'LG_T300_2.jpg', 1, 1),
(568, 567, 'LG_T300_2.jpg', 1, 1),
(569, 568, 'LG_T300_2.jpg', 1, 1),
(570, 568, 'LG_T300_2.jpg', 1, 1),
(571, 568, 'LG_T300_2.jpg', 1, 1),
(572, 568, 'LG_T300_2.jpg', 1, 1),
(573, 568, 'LG_T300_2.jpg', 1, 1),
(574, 568, 'LG_T300_2.jpg', 1, 1),
(575, 569, 'LG_T300_3.jpg', 1, 1),
(576, 569, 'LG_T300_3.jpg', 1, 1),
(577, 569, 'LG_T300_3.jpg', 1, 1),
(578, 569, 'LG_T300_3.jpg', 1, 1),
(579, 569, 'LG_T300_3.jpg', 1, 1),
(580, 569, 'LG_T300_3.jpg', 1, 1),
(581, 570, 'LG_T300_3.jpg', 1, 1),
(582, 570, 'LG_T300_3.jpg', 1, 1),
(583, 570, 'LG_T300_3.jpg', 1, 1),
(584, 570, 'LG_T300_3.jpg', 1, 1),
(585, 570, 'LG_T300_3.jpg', 1, 1),
(586, 570, 'LG_T300_3.jpg', 1, 1),
(587, 570, 'LG_T300_3.jpg', 1, 1),
(588, 572, 'LG_T300_3.jpg', 1, 1),
(589, 572, 'LG_T300_3.jpg', 1, 1),
(590, 572, 'LG_T300_3.jpg', 1, 1),
(591, 572, 'LG_T300_3.jpg', 1, 1),
(592, 572, 'LG_T300_3.jpg', 1, 1),
(593, 572, 'LG_T300_3.jpg', 1, 1),
(594, 572, 'LG_T300_3.jpg', 1, 1),
(595, 572, 'LG_T300_3.jpg', 1, 1),
(596, 572, 'LG_T300_3.jpg', 1, 1),
(597, 572, 'LG_T300_3.jpg', 1, 1),
(598, 572, 'LG_T300_3.jpg', 1, 1),
(600, 571, 'LG_T300_3.jpg', 1, 1),
(601, 571, 'LG_T300_3.jpg', 1, 1),
(602, 571, 'LG_T300_3.jpg', 1, 1),
(603, 571, 'LG_T300_3.jpg', 1, 1),
(604, 571, 'LG_T300_3.jpg', 1, 1),
(605, 571, 'LG_T300_3.jpg', 1, 1),
(606, 571, 'LG_T300_3.jpg', 1, 1),
(607, 571, 'LG_T300_3.jpg', 1, 1),
(608, 571, 'LG_T300_3.jpg', 1, 1),
(609, 571, 'LG_T300_3.jpg', 1, 1),
(610, 571, 'LG_T300_3.jpg', 1, 1),
(611, 571, 'LG_T300_3.jpg', 1, 1),
(612, 571, 'LG_T300_3.jpg', 1, 1),
(613, 571, 'LG_T300_3.jpg', 1, 1),
(614, 571, 'LG_T300_3.jpg', 1, 1),
(615, 571, 'LG_T300_3.jpg', 1, 1),
(616, 571, 'LG_T300_3.jpg', 1, 1),
(617, 571, 'LG_T300_3.jpg', 1, 1),
(618, 573, 'LG_T300_3.jpg', 1, 1),
(619, 573, 'LG_T300_3.jpg', 1, 1),
(620, 573, 'LG_T300_3.jpg', 1, 1),
(621, 573, 'LG_T300_3.jpg', 1, 1),
(622, 573, 'LG_T300_3.jpg', 1, 1),
(623, 573, 'LG_T300_3.jpg', 1, 1),
(624, 573, 'LG_T300_3.jpg', 1, 1),
(625, 573, 'LG_T300_3.jpg', 1, 1),
(626, 573, 'LG_T300_3.jpg', 1, 1),
(627, 573, 'LG_T300_3.jpg', 1, 1),
(628, 573, 'LG_T300_3.jpg', 1, 1),
(629, 573, 'LG_T300_3.jpg', 1, 1),
(630, 573, 'LG_T300_3.jpg', 1, 1),
(631, 573, 'LG_T300_3.jpg', 1, 1),
(632, 573, 'LG_T300_3.jpg', 1, 1),
(633, 573, 'LG_T300_3.jpg', 1, 1),
(634, 573, 'LG_T300_3.jpg', 1, 1),
(635, 573, 'LG_T300_3.jpg', 1, 1),
(636, 573, 'LG_T300_3.jpg', 1, 1),
(637, 573, 'LG_T300_3.jpg', 1, 1),
(638, 573, 'LG_T300_3.jpg', 1, 1),
(639, 573, 'LG_T300_3.jpg', 1, 1),
(640, 573, 'LG_T300_3.jpg', 1, 1),
(641, 573, 'LG_T300_3.jpg', 1, 1),
(642, 573, 'LG_T300_3.jpg', 1, 1),
(643, 573, 'LG_T300_3.jpg', 1, 1),
(644, 575, 'samsung_wave575_1_1.jpg', 1, 1),
(645, 575, 'samsung_wave575_1_1.jpg', 1, 1),
(646, 575, 'samsung_wave575_1_1.jpg', 1, 1),
(647, 574, 'LG_T300_3.jpg', 1, 1),
(648, 574, 'LG_T300_3.jpg', 1, 1),
(649, 574, 'LG_T300_3.jpg', 1, 1),
(650, 576, 'samsung_wave575_1_1.jpg', 1, 1),
(651, 576, 'samsung_wave575_1_1.jpg', 1, 1),
(652, 576, 'samsung_wave575_1_1.jpg', 1, 1),
(653, 577, 'samsung_wave575_1_1.jpg', 1, 1),
(654, 577, 'samsung_wave575_1_1.jpg', 1, 1),
(655, 577, 'samsung_wave575_1_1.jpg', 1, 1),
(656, 577, 'samsung_wave575_1_1.jpg', 1, 1),
(657, 577, 'samsung_wave575_1_1.jpg', 1, 1),
(658, 577, 'samsung_wave575_1_1.jpg', 1, 1),
(659, 578, 'samsung_wave575_1_1.jpg', 1, 1),
(660, 578, 'samsung_wave575_1_1.jpg', 1, 1),
(661, 578, 'samsung_wave575_1_1.jpg', 1, 1),
(662, 578, 'samsung_wave575_1_1.jpg', 1, 1),
(663, 578, 'samsung_wave575_1_1.jpg', 1, 1),
(664, 578, 'samsung_wave575_1_1.jpg', 1, 1),
(665, 578, 'samsung_wave575_1_1.jpg', 1, 1),
(666, 579, 'samsung_wave575_1_1.jpg', 1, 1),
(667, 579, 'samsung_wave575_1_1.jpg', 1, 1),
(668, 579, 'samsung_wave575_1_1.jpg', 1, 1),
(669, 579, 'samsung_wave575_1_1.jpg', 1, 1),
(670, 579, 'samsung_wave575_1_1.jpg', 1, 1),
(671, 579, 'samsung_wave575_1_1.jpg', 1, 1),
(672, 580, 'samsung_wave575_1_1.jpg', 1, 1),
(673, 580, 'samsung_wave575_1_1.jpg', 1, 1),
(674, 580, 'samsung_wave575_1_1.jpg', 1, 1),
(675, 581, 'samsung_wave575_2.jpg', 1, 1),
(676, 581, 'samsung_wave575_2.jpg', 1, 1),
(677, 581, 'samsung_wave575_2.jpg', 1, 1),
(678, 581, 'samsung_wave575_2.jpg', 1, 1),
(679, 581, 'samsung_wave575_2.jpg', 1, 1),
(680, 581, 'samsung_wave575_2.jpg', 1, 1),
(681, 581, 'samsung_wave575_2.jpg', 1, 1),
(682, 581, 'samsung_wave575_2.jpg', 1, 1),
(683, 581, 'samsung_wave575_2.jpg', 1, 1),
(684, 582, 'samsung_wave575_2.jpg', 1, 1),
(685, 582, 'samsung_wave575_2.jpg', 1, 1),
(686, 582, 'samsung_wave575_2.jpg', 1, 1),
(691, 583, 'samsung_wave575_2.jpg', 1, 1),
(690, 583, 'samsung_wave575_2.jpg', 1, 1),
(697, 584, 'samsung_wave575_2.jpg', 1, 1),
(696, 584, 'samsung_wave575_2.jpg', 1, 1),
(698, 584, 'samsung_wave575_2.jpg', 1, 1),
(699, 584, 'samsung_wave575_2.jpg', 1, 1),
(700, 584, 'samsung_wave575_2.jpg', 1, 1),
(701, 584, 'samsung_wave575_2.jpg', 1, 1),
(702, 584, 'samsung_wave575_2.jpg', 1, 1),
(703, 584, 'samsung_wave575_2.jpg', 1, 1),
(704, 584, 'samsung_wave575_2.jpg', 1, 1),
(705, 584, 'samsung_wave575_2.jpg', 1, 1),
(706, 584, 'samsung_wave575_2.jpg', 1, 1),
(707, 584, 'samsung_wave575_2.jpg', 1, 1),
(708, 584, 'samsung_wave575_2.jpg', 1, 1),
(709, 584, 'samsung_wave575_2.jpg', 1, 1),
(710, 584, 'samsung_wave575_2.jpg', 1, 1),
(711, 584, 'samsung_wave575_2.jpg', 1, 1),
(712, 584, 'samsung_wave575_2.jpg', 1, 1),
(713, 584, 'samsung_wave575_2.jpg', 1, 1),
(714, 584, 'samsung_wave575_2.jpg', 1, 1),
(715, 584, 'samsung_wave575_2.jpg', 1, 1),
(716, 584, 'samsung_wave575_2.jpg', 1, 1),
(717, 584, 'samsung_wave575_2.jpg', 1, 1),
(718, 584, 'samsung_wave575_2.jpg', 1, 1),
(720, 585, 'samsung_wave575_2.jpg', 1, 1),
(721, 585, 'samsung_wave575_2.jpg', 1, 1),
(722, 585, 'samsung_wave575_2.jpg', 1, 1),
(723, 585, 'samsung_wave575_2.jpg', 1, 1),
(724, 585, 'samsung_wave575_2.jpg', 1, 1),
(725, 585, 'samsung_wave575_2.jpg', 1, 1),
(726, 585, 'samsung_wave575_2.jpg', 1, 1),
(730, 586, 'samsung_wave575_2.jpg', 1, 1),
(729, 586, 'samsung_wave575_2.jpg', 1, 1),
(731, 586, 'samsung_wave575_2.jpg', 1, 1),
(732, 586, 'samsung_wave575_2.jpg', 1, 1),
(735, 587, 'samsung_wave575_2.jpg', 1, 1),
(736, 587, 'samsung_wave575_2.jpg', 1, 1),
(737, 587, 'samsung_wave575_2.jpg', 1, 1),
(738, 587, 'samsung_wave575_2.jpg', 1, 1),
(739, 587, 'samsung_wave575_2.jpg', 1, 1),
(740, 587, 'samsung_wave575_2.jpg', 1, 1),
(741, 587, 'samsung_wave575_2.jpg', 1, 1),
(742, 588, 'samsung_wave575_4.jpg', 1, 1),
(743, 588, 'samsung_wave575_4.jpg', 1, 1),
(744, 588, 'samsung_wave575_4.jpg', 1, 1),
(745, 589, 'samsung_wave575_4.jpg', 1, 1),
(746, 589, 'samsung_wave575_4.jpg', 1, 1),
(747, 589, 'samsung_wave575_4.jpg', 1, 1),
(748, 589, 'samsung_wave575_4.jpg', 1, 1),
(752, 590, 'samsung_wave575_4.jpg', 1, 1),
(751, 590, 'samsung_wave575_4.jpg', 1, 1),
(754, 591, 'samsung_wave575_4.jpg', 1, 1),
(755, 591, 'samsung_wave575_4.jpg', 1, 1),
(756, 591, 'samsung_wave575_4.jpg', 1, 1),
(757, 591, 'samsung_wave575_4.jpg', 1, 1),
(758, 591, 'samsung_wave575_4.jpg', 1, 1),
(759, 591, 'samsung_wave575_4.jpg', 1, 1),
(760, 591, 'samsung_wave575_4.jpg', 1, 1),
(761, 591, 'samsung_wave575_4.jpg', 1, 1),
(762, 591, 'samsung_wave575_4.jpg', 1, 1),
(763, 591, 'samsung_wave575_4.jpg', 1, 1),
(764, 592, 'samsung_wave575_4.jpg', 1, 1),
(765, 592, 'samsung_wave575_4.jpg', 1, 1),
(766, 592, 'samsung_wave575_4.jpg', 1, 1),
(767, 592, 'samsung_wave575_4.jpg', 1, 1),
(768, 592, 'samsung_wave575_4.jpg', 1, 1),
(769, 592, 'samsung_wave575_4.jpg', 1, 1),
(770, 592, 'samsung_wave575_4.jpg', 1, 1),
(771, 593, 'samsung_wave575_4.jpg', 1, 1),
(772, 593, 'samsung_wave575_4.jpg', 1, 1),
(773, 593, 'samsung_wave575_4.jpg', 1, 1),
(774, 593, 'samsung_wave575_4.jpg', 1, 1),
(778, 594, 'samsung_wave575_4.jpg', 1, 1),
(777, 594, 'samsung_wave575_4.jpg', 1, 1),
(779, 594, 'samsung_wave575_4.jpg', 1, 1),
(780, 595, 'samsung_wave575_4.jpg', 1, 1),
(781, 595, 'samsung_wave575_4.jpg', 1, 1),
(782, 595, 'samsung_wave575_4.jpg', 1, 1),
(783, 595, 'samsung_wave575_4.jpg', 1, 1),
(787, 596, 'samsung_wave575_4.jpg', 1, 1),
(786, 596, 'samsung_wave575_4.jpg', 1, 1),
(788, 596, 'samsung_wave575_4.jpg', 1, 1),
(789, 596, 'samsung_wave575_4.jpg', 1, 1),
(790, 596, 'samsung_wave575_4.jpg', 1, 1),
(791, 596, 'samsung_wave575_4.jpg', 1, 1),
(792, 596, 'samsung_wave575_4.jpg', 1, 1),
(793, 596, 'samsung_wave575_4.jpg', 1, 1),
(794, 596, 'samsung_wave575_4.jpg', 1, 1),
(795, 596, 'samsung_wave575_4.jpg', 1, 1),
(796, 596, 'samsung_wave575_4.jpg', 1, 1),
(797, 596, 'samsung_wave575_4.jpg', 1, 1),
(798, 596, 'samsung_wave575_4.jpg', 1, 1),
(799, 596, 'samsung_wave575_4.jpg', 1, 1),
(800, 596, 'samsung_wave575_4.jpg', 1, 1),
(801, 596, 'samsung_wave575_4.jpg', 1, 1),
(802, 596, 'samsung_wave575_4.jpg', 1, 1),
(803, 596, 'samsung_wave575_4.jpg', 1, 1),
(804, 596, 'samsung_wave575_4.jpg', 1, 1),
(805, 597, 'samsung_wave575_4.jpg', 1, 1),
(806, 597, 'samsung_wave575_4.jpg', 1, 1),
(807, 597, 'samsung_wave575_4.jpg', 1, 1),
(808, 597, 'samsung_wave575_4.jpg', 1, 1),
(809, 597, 'samsung_wave575_4.jpg', 1, 1),
(811, 598, 'samsung_wave575_4.jpg', 1, 1),
(812, 598, 'samsung_wave575_4.jpg', 1, 1),
(813, 598, 'samsung_wave575_4.jpg', 1, 1),
(814, 598, 'samsung_wave575_4.jpg', 1, 1),
(815, 598, 'samsung_wave575_4.jpg', 1, 1),
(816, 598, 'samsung_wave575_4.jpg', 1, 1),
(817, 599, '../upload/sanpham/hinhphu/Samsung-C3510_2.jpg', 1, 1),
(818, 599, '../upload/sanpham/hinhphu/Samsung-C3510_3.jpg', 1, 1),
(819, 599, '../upload/sanpham/hinhphu/Samsung-C3510_4.jpg', 1, 1),
(824, 601, 'samsung_wave575_3.jpg', 1, 1),
(823, 601, 'samsung_wave575_3.jpg', 1, 1),
(825, 601, 'samsung_wave575_3.jpg', 1, 1),
(826, 601, 'samsung_wave575_3.jpg', 1, 1),
(827, 601, 'samsung_wave575_3.jpg', 1, 1),
(828, 601, 'samsung_wave575_3.jpg', 1, 1),
(829, 601, 'samsung_wave575_3.jpg', 1, 1),
(830, 601, 'samsung_wave575_3.jpg', 1, 1),
(832, 602, 'samsung_wave575_3.jpg', 1, 1),
(833, 602, 'samsung_wave575_3.jpg', 1, 1),
(834, 602, 'samsung_wave575_3.jpg', 1, 1),
(839, 600, 'samsung_wave575_3.jpg', 1, 1),
(838, 600, 'samsung_wave575_3.jpg', 1, 1),
(840, 600, 'samsung_wave575_3.jpg', 1, 1),
(841, 600, 'samsung_wave575_3.jpg', 1, 1),
(842, 600, 'samsung_wave575_3.jpg', 1, 1),
(843, 600, 'samsung_wave575_3.jpg', 1, 1),
(844, 600, 'samsung_wave575_3.jpg', 1, 1),
(845, 600, 'samsung_wave575_3.jpg', 1, 1),
(846, 600, 'samsung_wave575_3.jpg', 1, 1),
(847, 604, 'samsung_wave575_3.jpg', 1, 1),
(848, 604, 'samsung_wave575_3.jpg', 1, 1),
(849, 604, 'samsung_wave575_3.jpg', 1, 1),
(850, 604, 'samsung_wave575_3.jpg', 1, 1),
(851, 604, 'samsung_wave575_3.jpg', 1, 1),
(852, 604, 'samsung_wave575_3.jpg', 1, 1),
(853, 604, 'samsung_wave575_3.jpg', 1, 1),
(857, 605, 'samsung_wave575_3.jpg', 1, 1),
(856, 605, 'samsung_wave575_3.jpg', 1, 1),
(858, 605, 'samsung_wave575_3.jpg', 1, 1),
(859, 605, 'samsung_wave575_3.jpg', 1, 1),
(860, 605, 'samsung_wave575_3.jpg', 1, 1),
(862, 606, 'samsung_wave575_3.jpg', 1, 1),
(863, 606, 'samsung_wave575_3.jpg', 1, 1),
(864, 606, 'samsung_wave575_3.jpg', 1, 1),
(865, 606, 'samsung_wave575_3.jpg', 1, 1),
(866, 606, 'samsung_wave575_3.jpg', 1, 1),
(867, 606, 'samsung_wave575_3.jpg', 1, 1),
(868, 607, 'samsung_wave575_3.jpg', 1, 1),
(869, 608, 'samsung_wave575_3.jpg', 1, 1),
(870, 608, 'samsung_wave575_3.jpg', 1, 1),
(871, 608, 'samsung_wave575_3.jpg', 1, 1),
(876, 609, 'samsung_wave575_3.jpg', 1, 1),
(875, 609, 'samsung_wave575_3.jpg', 1, 1),
(877, 609, 'samsung_wave575_3.jpg', 1, 1),
(878, 609, 'samsung_wave575_3.jpg', 1, 1),
(879, 609, 'samsung_wave575_3.jpg', 1, 1),
(880, 609, 'samsung_wave575_3.jpg', 1, 1),
(881, 609, 'samsung_wave575_3.jpg', 1, 1),
(882, 609, 'samsung_wave575_3.jpg', 1, 1),
(883, 609, 'samsung_wave575_3.jpg', 1, 1),
(884, 609, 'samsung_wave575_3.jpg', 1, 1),
(885, 609, 'samsung_wave575_3.jpg', 1, 1),
(886, 609, 'samsung_wave575_3.jpg', 1, 1),
(887, 609, 'samsung_wave575_3.jpg', 1, 1),
(888, 609, 'samsung_wave575_3.jpg', 1, 1),
(889, 609, 'samsung_wave575_3.jpg', 1, 1),
(890, 609, 'samsung_wave575_3.jpg', 1, 1),
(891, 609, 'samsung_wave575_3.jpg', 1, 1),
(892, 609, 'samsung_wave575_3.jpg', 1, 1),
(893, 610, 'samsung_wave575_3.jpg', 1, 1),
(894, 610, 'samsung_wave575_3.jpg', 1, 1),
(895, 610, 'samsung_wave575_3.jpg', 1, 1),
(896, 611, 'samsung_wave575_3.jpg', 1, 1),
(897, 611, 'samsung_wave575_3.jpg', 1, 1),
(898, 611, 'samsung_wave575_3.jpg', 1, 1),
(903, 612, 'samsung_wave575_3.jpg', 1, 1),
(902, 612, 'samsung_wave575_3.jpg', 1, 1),
(904, 612, 'samsung_wave575_3.jpg', 1, 1),
(905, 612, 'samsung_wave575_3.jpg', 1, 1),
(906, 612, 'samsung_wave575_3.jpg', 1, 1),
(907, 613, 'samsung_wave575_3.jpg', 1, 1),
(908, 613, 'samsung_wave575_3.jpg', 1, 1),
(909, 613, 'samsung_wave575_3.jpg', 1, 1),
(910, 614, 'samsung_wave575_3.jpg', 1, 1),
(911, 615, 'samsung_wave575_3.jpg', 1, 1),
(912, 615, 'samsung_wave575_3.jpg', 1, 1),
(913, 615, 'samsung_wave575_3.jpg', 1, 1),
(914, 616, 'samsung_wave575_3.jpg', 1, 1),
(915, 616, 'samsung_wave575_3.jpg', 1, 1),
(917, 617, 'samsung_wave575_3.jpg', 1, 1),
(918, 617, 'samsung_wave575_3.jpg', 1, 1),
(919, 617, 'samsung_wave575_3.jpg', 1, 1),
(920, 617, 'samsung_wave575_3.jpg', 1, 1),
(924, 619, 'samsung_wave575_5.jpg', 1, 1),
(923, 619, 'samsung_wave575_5.jpg', 1, 1),
(925, 619, 'samsung_wave575_5.jpg', 1, 1),
(926, 620, 'samsung_wave575_5.jpg', 1, 1),
(927, 621, 'samsung_wave575_5.jpg', 1, 1),
(928, 621, 'samsung_wave575_5.jpg', 1, 1),
(929, 621, 'samsung_wave575_5.jpg', 1, 1),
(930, 621, 'samsung_wave575_5.jpg', 1, 1),
(934, 623, 'samsung_wave575_5.jpg', 1, 1),
(933, 623, 'samsung_wave575_5.jpg', 1, 1),
(935, 623, 'samsung_wave575_5.jpg', 1, 1),
(936, 623, 'samsung_wave575_5.jpg', 1, 1),
(940, 624, 'samsung_wave575_5.jpg', 1, 1),
(939, 624, 'samsung_wave575_5.jpg', 1, 1),
(941, 624, 'samsung_wave575_5.jpg', 1, 1),
(942, 625, 'samsung_wave575_5.jpg', 1, 1),
(943, 625, 'samsung_wave575_5.jpg', 1, 1),
(944, 625, 'samsung_wave575_5.jpg', 1, 1),
(945, 625, 'samsung_wave575_5.jpg', 1, 1),
(949, 626, 'samsung_wave575_5.jpg', 1, 1),
(948, 626, 'samsung_wave575_5.jpg', 1, 1),
(950, 626, 'samsung_wave575_5.jpg', 1, 1),
(951, 626, 'samsung_wave575_5.jpg', 1, 1),
(952, 626, 'samsung_wave575_5.jpg', 1, 1),
(954, 628, 'samsung_wave575_5.jpg', 1, 1),
(955, 628, 'samsung_wave575_5.jpg', 1, 1),
(956, 628, 'samsung_wave575_5.jpg', 1, 1),
(957, 627, 'samsung_wave575_5.jpg', 1, 1),
(958, 627, 'samsung_wave575_5.jpg', 1, 1),
(959, 627, 'samsung_wave575_5.jpg', 1, 1),
(960, 629, 'samsung_wave575_5.jpg', 1, 1),
(961, 629, 'samsung_wave575_5.jpg', 1, 1),
(962, 629, 'samsung_wave575_5.jpg', 1, 1),
(963, 629, 'samsung_wave575_5.jpg', 1, 1),
(964, 629, 'samsung_wave575_5.jpg', 1, 1),
(965, 629, 'samsung_wave575_5.jpg', 1, 1),
(966, 630, 'samsung_wave575_5.jpg', 1, 1),
(967, 631, 'samsung_wave575_5.jpg', 1, 1),
(968, 631, 'samsung_wave575_5.jpg', 1, 1),
(969, 631, 'samsung_wave575_5.jpg', 1, 1),
(970, 633, 'samsung_wave575_5.jpg', 1, 1),
(971, 633, 'samsung_wave575_5.jpg', 1, 1),
(972, 633, 'samsung_wave575_5.jpg', 1, 1),
(973, 633, 'samsung_wave575_5.jpg', 1, 1),
(977, 634, 'samsung_wave575_5.jpg', 1, 1),
(976, 634, 'samsung_wave575_5.jpg', 1, 1),
(978, 634, 'samsung_wave575_5.jpg', 1, 1),
(979, 634, 'samsung_wave575_5.jpg', 1, 1),
(983, 632, 'samsung_wave575_5.jpg', 1, 1),
(982, 632, 'samsung_wave575_5.jpg', 1, 1),
(984, 632, 'samsung_wave575_5.jpg', 1, 1),
(985, 632, 'samsung_wave575_5.jpg', 1, 1),
(986, 635, 'samsung_wave575_5.jpg', 1, 1),
(987, 635, 'samsung_wave575_5.jpg', 1, 1),
(988, 635, 'samsung_wave575_5.jpg', 1, 1),
(989, 636, 'samsung_wave575_5.jpg', 1, 1),
(990, 636, 'samsung_wave575_5.jpg', 1, 1),
(991, 636, 'samsung_wave575_5.jpg', 1, 1),
(992, 636, 'samsung_wave575_5.jpg', 1, 1),
(993, 636, 'samsung_wave575_5.jpg', 1, 1),
(994, 636, 'samsung_wave575_5.jpg', 1, 1),
(995, 636, 'samsung_wave575_5.jpg', 1, 1),
(996, 636, 'samsung_wave575_5.jpg', 1, 1),
(998, 637, 'samsung_wave575_5.jpg', 1, 1),
(999, 637, 'samsung_wave575_5.jpg', 1, 1),
(1000, 637, 'samsung_wave575_5.jpg', 1, 1),
(1001, 638, 'samsung_wave575_5.jpg', 1, 1),
(1002, 638, 'samsung_wave575_5.jpg', 1, 1),
(1004, 639, 'samsung_wave575_5.jpg', 1, 1),
(1005, 639, 'samsung_wave575_5.jpg', 1, 1),
(1007, 641, 'samsung_wave575_5.jpg', 1, 1),
(1008, 641, 'samsung_wave575_5.jpg', 1, 1),
(1010, 642, 'samsung_wave575_5.jpg', 1, 1),
(1011, 642, 'samsung_wave575_5.jpg', 1, 1),
(1012, 642, 'samsung_wave575_5.jpg', 1, 1),
(1013, 643, 'samsung_wave575_5.jpg', 1, 1),
(1014, 643, 'samsung_wave575_5.jpg', 1, 1),
(1015, 643, 'samsung_wave575_5.jpg', 1, 1),
(1016, 643, 'samsung_wave575_5.jpg', 1, 1),
(1017, 643, 'samsung_wave575_5.jpg', 1, 1),
(1018, 643, 'samsung_wave575_5.jpg', 1, 1),
(1019, 644, 'LG_GX200_1.jpg', 1, 1),
(1020, 644, 'LG_GX200_1.jpg', 1, 1),
(1021, 644, 'LG_GX200_1.jpg', 1, 1),
(1022, 645, 'LG_GX200_1.jpg', 1, 1),
(1023, 645, 'LG_GX200_1.jpg', 1, 1),
(1025, 646, 'LG_GX200_1.jpg', 1, 1),
(1026, 646, 'LG_GX200_1.jpg', 1, 1),
(1027, 646, 'LG_GX200_1.jpg', 1, 1),
(1028, 640, 'samsung_wave575_5.jpg', 1, 1),
(1032, 649, 'samsung_wave575_6.jpg', 1, 1),
(1031, 647, 'samsung_wave575_6.jpg', 1, 1),
(1033, 649, 'samsung_wave575_6.jpg', 1, 1),
(1034, 649, 'samsung_wave575_6.jpg', 1, 1),
(1035, 649, 'samsung_wave575_6.jpg', 1, 1),
(1036, 649, 'samsung_wave575_6.jpg', 1, 1),
(1037, 649, 'samsung_wave575_6.jpg', 1, 1),
(1038, 650, 'LG_GX200_2.jpg', 1, 1),
(1039, 650, 'LG_GX200_2.jpg', 1, 1),
(1040, 650, 'LG_GX200_2.jpg', 1, 1),
(1041, 650, 'LG_GX200_2.jpg', 1, 1),
(1042, 650, 'LG_GX200_2.jpg', 1, 1),
(1044, 651, 'LG_GX200_2.jpg', 1, 1),
(1045, 651, 'LG_GX200_2.jpg', 1, 1),
(1046, 651, 'LG_GX200_2.jpg', 1, 1),
(1047, 652, 'LG_GX200_2.jpg', 1, 1),
(1048, 653, 'LG_GX200_3.jpg', 1, 1),
(1049, 653, 'LG_GX200_3.jpg', 1, 1),
(1050, 654, 'LG_GX200_3.jpg', 1, 1),
(1051, 654, 'LG_GX200_3.jpg', 1, 1),
(1052, 654, 'LG_GX200_3.jpg', 1, 1),
(1053, 654, 'LG_GX200_3.jpg', 1, 1),
(1057, 606, 'samsung_wave575_3.jpg', 1, 1),
(1056, 606, 'samsung_wave575_3.jpg', 1, 1),
(1058, 606, 'samsung_wave575_3.jpg', 1, 1),
(1059, 606, 'samsung_wave575_3.jpg', 1, 1),
(1060, 606, 'samsung_wave575_3.jpg', 1, 1),
(1061, 606, 'samsung_wave575_3.jpg', 1, 1),
(1062, 655, 'LG_GX200_3.jpg', 1, 1),
(1063, 655, 'LG_GX200_3.jpg', 1, 1),
(1064, 655, 'LG_GX200_3.jpg', 1, 1),
(1065, 655, 'LG_GX200_3.jpg', 1, 1),
(1069, 657, 'LG_GX200_3.jpg', 1, 1),
(1068, 656, 'LG_GX200_3.jpg', 1, 1),
(1070, 657, 'LG_GX200_3.jpg', 1, 1),
(1071, 657, 'LG_GX200_3.jpg', 1, 1),
(1072, 658, 'LG_GX200_3.jpg', 1, 1),
(1073, 658, 'LG_GX200_3.jpg', 1, 1),
(1074, 658, 'LG_GX200_3.jpg', 1, 1),
(1075, 659, 'LG_GX200_4.jpg', 1, 1),
(1076, 659, 'LG_GX200_4.jpg', 1, 1),
(1077, 659, 'LG_GX200_4.jpg', 1, 1),
(1078, 659, 'LG_GX200_4.jpg', 1, 1),
(1082, 660, 'LG_GX200_4.jpg', 1, 1),
(1081, 660, 'LG_GX200_4.jpg', 1, 1),
(1083, 660, 'LG_GX200_4.jpg', 1, 1),
(1084, 660, 'LG_GX200_4.jpg', 1, 1),
(1087, 661, 'LG_GX200_4.jpg', 1, 1),
(1088, 661, 'LG_GX200_4.jpg', 1, 1),
(1089, 661, 'LG_GX200_4.jpg', 1, 1),
(1090, 661, 'LG_GX200_4.jpg', 1, 1),
(1091, 661, 'LG_GX200_4.jpg', 1, 1),
(1092, 662, 'LG_GX200_4.jpg', 1, 1),
(1093, 662, 'LG_GX200_4.jpg', 1, 1),
(1095, 663, 'LG_GX200_4.jpg', 1, 1),
(1096, 663, 'LG_GX200_4.jpg', 1, 1),
(1097, 663, 'LG_GX200_4.jpg', 1, 1),
(1098, 663, 'LG_GX200_4.jpg', 1, 1),
(1099, 663, 'LG_GX200_4.jpg', 1, 1),
(1101, 664, 'LG_GX200_4.jpg', 1, 1),
(1102, 664, 'LG_GX200_4.jpg', 1, 1),
(1103, 664, 'LG_GX200_4.jpg', 1, 1),
(1104, 664, 'LG_GX200_4.jpg', 1, 1),
(1105, 664, 'LG_GX200_4.jpg', 1, 1),
(1106, 665, 'LG_GX200_4.jpg', 1, 1),
(1107, 665, 'LG_GX200_4.jpg', 1, 1),
(1108, 665, 'LG_GX200_4.jpg', 1, 1),
(1109, 666, 'LG_GX200_5.jpg', 1, 1),
(1110, 666, 'LG_GX200_5.jpg', 1, 1),
(1111, 666, 'LG_GX200_5.jpg', 1, 1),
(1112, 666, 'LG_GX200_5.jpg', 1, 1),
(1113, 666, 'LG_GX200_5.jpg', 1, 1),
(1114, 666, 'LG_GX200_5.jpg', 1, 1),
(1115, 667, 'LG_GX200_5.jpg', 1, 1),
(1116, 667, 'LG_GX200_5.jpg', 1, 1),
(1117, 667, 'LG_GX200_5.jpg', 1, 1),
(1118, 667, 'LG_GX200_5.jpg', 1, 1),
(1119, 667, 'LG_GX200_5.jpg', 1, 1),
(1121, 668, 'LG_GX200_5.jpg', 1, 1),
(1122, 668, 'LG_GX200_5.jpg', 1, 1),
(1123, 668, 'LG_GX200_5.jpg', 1, 1),
(1124, 669, 'LG_GX200_5.jpg', 1, 1),
(1125, 670, 'LG_GX200_5.jpg', 1, 1),
(1126, 670, 'LG_GX200_5.jpg', 1, 1),
(1127, 670, 'LG_GX200_5.jpg', 1, 1),
(1128, 670, 'LG_GX200_5.jpg', 1, 1),
(1129, 670, 'LG_GX200_5.jpg', 1, 1),
(1130, 670, 'LG_GX200_5.jpg', 1, 1),
(1131, 671, 'LG_GX200_5.jpg', 1, 1),
(1132, 671, 'LG_GX200_5.jpg', 1, 1),
(1133, 671, 'LG_GX200_5.jpg', 1, 1),
(1134, 671, 'LG_GX200_5.jpg', 1, 1),
(1135, 671, 'LG_GX200_5.jpg', 1, 1),
(1136, 672, '0LG_GX200_b.jpg', 1, 1),
(1137, 672, '0LG_GX200_b.jpg', 1, 1),
(1138, 672, '0LG_GX200_b.jpg', 1, 1),
(1139, 672, '0LG_GX200_b.jpg', 1, 1),
(1140, 672, '0LG_GX200_b.jpg', 1, 1),
(1141, 672, '0LG_GX200_b.jpg', 1, 1),
(1142, 672, '0LG_GX200_b.jpg', 1, 1),
(1143, 672, '0LG_GX200_b.jpg', 1, 1),
(1144, 673, '0LG_GX200_b.jpg', 1, 1),
(1145, 673, '0LG_GX200_b.jpg', 1, 1),
(1146, 673, '0LG_GX200_b.jpg', 1, 1),
(1147, 673, '0LG_GX200_b.jpg', 1, 1),
(1148, 674, '0LG_GX200_b.jpg', 1, 1),
(1149, 674, '0LG_GX200_b.jpg', 1, 1),
(1150, 675, 'nokia_c5-03_2.jpg', 1, 1),
(1151, 675, 'nokia_c5-03_2.jpg', 1, 1),
(1152, 675, 'nokia_c5-03_2.jpg', 1, 1),
(1153, 675, 'nokia_c5-03_2.jpg', 1, 1),
(1154, 675, 'nokia_c5-03_2.jpg', 1, 1),
(1155, 676, 'nokia_c5-03_2.jpg', 1, 1),
(1156, 676, 'nokia_c5-03_2.jpg', 1, 1),
(1157, 677, 'nokia_c5-03_2.jpg', 1, 1),
(1158, 677, 'nokia_c5-03_2.jpg', 1, 1),
(1159, 677, 'nokia_c5-03_2.jpg', 1, 1),
(1160, 677, 'nokia_c5-03_2.jpg', 1, 1),
(1161, 678, 'nokia_c5-03_2.jpg', 1, 1),
(1162, 678, 'nokia_c5-03_2.jpg', 1, 1),
(1163, 678, 'nokia_c5-03_2.jpg', 1, 1),
(1164, 678, 'nokia_c5-03_2.jpg', 1, 1),
(1165, 678, 'nokia_c5-03_2.jpg', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sanpham_thuoctinh`
--

CREATE TABLE `sanpham_thuoctinh` (
  `id_thuoctinh_dtdd` int(11) NOT NULL,
  `idSP` int(11) NOT NULL,
  `ChatLieu` varchar(225) NOT NULL,
  `KichThuoc` varchar(225) DEFAULT NULL,
  `MauSac` varchar(200) DEFAULT NULL,
  `CongngheSX` tinyint(225) DEFAULT NULL,
  `TieuChuanKT` tinyint(225) DEFAULT NULL,
  `UuNhuoc` varchar(225) DEFAULT NULL,
  `GiaoHang` varchar(225) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sanpham_youtube`
--

CREATE TABLE `sanpham_youtube` (
  `id_youtube` int(11) NOT NULL,
  `idSP` int(11) NOT NULL,
  `value` varchar(30) NOT NULL,
  `mota` text,
  `stt` int(11) NOT NULL DEFAULT '1',
  `anhien` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sanpham_youtube`
--

INSERT INTO `sanpham_youtube` (`id_youtube`, `idSP`, `value`, `mota`, `stt`, `anhien`) VALUES
(1, 502, 'UBc2O0cUH4g', '1', 1, 1),
(2, 502, 'ITwJttvpPRU', '1', 1, 1),
(3, 501, 'j0DVhSJyrgY', '1', 1, 1),
(4, 503, 'Xegu7Vq5aJk', '1', 1, 1),
(5, 504, 'f7CkE1vjrKc', '1', 1, 1),
(6, 504, 'Lqwgwp2xeG8', '1', 1, 1),
(7, 505, 'Wzj0Z08JP-I', '1', 1, 1),
(8, 506, 'IoR5NHw44no', '1', 1, 1),
(9, 506, 'e9sQv9fgeM8', '1', 1, 1),
(10, 506, '3beOHeM5Cbc', '1', 1, 1),
(11, 507, 'YMrAmXPYI0g', '1', 1, 1),
(12, 508, 'MVpcmESYPWQ', '1', 1, 1),
(13, 509, '7fzdhAfDrkk', '1', 1, 1),
(14, 509, '-n-UHocyp0o', '1', 1, 1),
(15, 509, 'REEDS_daknc', '1', 1, 1),
(16, 509, 'oD7janvC6hk', '1', 1, 1),
(17, 510, 'ouCk9hhwLHo', '1', 1, 1),
(18, 510, 'gEUAQlCA8WA', '1', 1, 1),
(19, 510, 'ZH5RP-yHxiw', '1', 1, 1),
(20, 511, 'FMC1f1IVsFM', '1', 1, 1),
(21, 512, 'e3XWZBubesc', '1', 1, 1),
(22, 513, 'su5t-V5lkUk', '1', 1, 1),
(23, 514, 'NY2UCG7Fh0c', '1', 1, 1),
(24, 515, 'gAnV3hPz_BI', '1', 1, 1),
(25, 516, 'Mc8t4IWjDsE', '1', 1, 1),
(26, 516, 'CrT_wrhAhbU', '1', 1, 1),
(27, 517, 'YmqVvoilKX0', '1', 1, 1),
(28, 517, 'QGy_e7c9w70', '1', 1, 1),
(29, 518, 'NN4lCkYG5DA', '1', 1, 1),
(30, 518, 'By6hI2dzXaM', '1', 1, 1),
(31, 519, 'sw0EgyY7_1Y', '1', 1, 1),
(32, 519, 'sXe-cTqgMeY', '1', 1, 1),
(33, 520, '183y-VNzHjo', '1', 1, 1),
(34, 520, 'IDRHEShmoVI', '1', 1, 1),
(35, 521, 'b348FDa0w-k', '1', 1, 1),
(36, 521, 'EH1SpU_Io6Q', '1', 1, 1),
(37, 522, '5lUkF1vVudA', '1', 1, 1),
(38, 522, 'K-QhxjJFl7E', '1', 1, 1),
(39, 523, 'C6o6NdwGZRQ', '1', 1, 1),
(40, 523, '9hZ1cuVUGPg', '1', 1, 1),
(41, 524, 'OQC5jWZ0ZLI', '1', 1, 1),
(42, 524, 'PKf-qUWmeJ0', '1', 1, 1),
(43, 525, 'OdI1gUSNBCQ', '1', 1, 1),
(44, 525, 'EJLDOlfK9RM', '1', 1, 1),
(45, 526, '804Lxr-ER6o', '1', 1, 1),
(46, 526, 'DLRw51FGB70', '1', 1, 1),
(47, 527, 'hA1nIJ8Q9Vo', '1', 1, 1),
(48, 527, 'TK76qcUumr4', '1', 1, 1),
(49, 528, '0ZHgZr3SXCA', '1', 1, 1),
(50, 528, 'jAJMJ3C76Ko', '1', 1, 1),
(51, 530, 'rtAHJcPVCw4', '1', 1, 1),
(52, 530, 'RpPH9EbFJL8', '1', 1, 1),
(53, 529, 'BI1lbQR4zSw', '1', 1, 1),
(54, 529, 'TtRV0yAN7BQ', '1', 1, 1),
(55, 531, 'fIBQKcQ2xU4', '1', 1, 1),
(56, 531, 't9juZTFGGFQ', '1', 1, 1),
(57, 532, 'UwBiER-aamA', '1', 1, 1),
(58, 532, 'lS4H3KBf07A', '1', 1, 1),
(59, 532, 'fGCgzIeGU1I', '1', 1, 1),
(60, 533, 'CwCQDCOIsgE', '1', 1, 1),
(61, 533, 'tMAYlLXA-Ec', '1', 1, 1),
(62, 533, 'LBfIoIXq-No', '1', 1, 1),
(63, 534, 'XtXG7Q9T0jI', '1', 1, 1),
(64, 534, 'QQgCu4836ss', '1', 1, 1),
(65, 536, 'bfkAq4e01Zo', '1', 1, 1),
(66, 536, 'bfkAq4e01Zo', '1', 1, 1),
(67, 537, 'VWNhfaYNK3s', '1', 1, 1),
(68, 537, '-kHerU11qBU', '1', 1, 1),
(69, 538, 'md52PdldJ1U', '1', 1, 1),
(70, 538, '5lUkF1vVudA', '1', 1, 1),
(71, 539, 'md52PdldJ1U', '1', 1, 1),
(72, 539, '0hiz3tpvTAk', '1', 1, 1),
(73, 539, 'OMvDnkr4HAg', '1', 1, 1),
(74, 540, 'VQn0qK16aQY', '1', 1, 1),
(75, 540, 'WwXiQkZdqx8', '1', 1, 1),
(76, 541, 'n2rSQVvfvJE', '1', 1, 1),
(77, 541, 'n1Z6OI_BfcY', '1', 1, 1),
(78, 541, 'AjNP_M5tDOM', '1', 1, 1),
(79, 542, 'tAIPN_ry80A', '1', 1, 1),
(80, 542, 'sJIbsKyuv1Q', '1', 1, 1),
(81, 543, 'sEcQEjt6iOY', '1', 1, 1),
(82, 543, 'l8_xprhULB0', '1', 1, 1),
(83, 544, 'Kzgi0qgQh6A', '1', 1, 1),
(84, 544, 'K-QhxjJFl7E', '1', 1, 1),
(85, 544, '5lUkF1vVudA', '1', 1, 1),
(86, 545, 'jU4hlU5m1eI', '1', 1, 1),
(87, 545, '5O4F6hLHH68', '1', 1, 1),
(88, 546, 'R-VpUT4G29Y', '1', 1, 1),
(89, 546, 'K3K9P4Ec99s', '1', 1, 1),
(90, 547, '6hgVUTz3UW0', '1', 1, 1),
(91, 547, 'l0dytF3kz84', '1', 1, 1),
(92, 548, 'http://www.youtube.com/watch?v', '1', 1, 1),
(93, 548, 'http://www.youtube.com/watch?v', '1', 1, 1),
(94, 549, 'mR_tiXUqzKE', '1', 1, 1),
(95, 549, 'M_kMiipDHDc', '1', 1, 1),
(96, 549, 'PcL-CehefSg', '1', 1, 1),
(97, 550, 'http://www.youtube.com/watch?v', '1', 1, 1),
(98, 550, 'http://www.youtube.com/watch?v', '1', 1, 1),
(99, 551, 'http://www.youtube.com/watch?v', '1', 1, 1),
(100, 552, 'http://www.youtube.com/watch?v', '1', 1, 1),
(101, 552, 'http://www.youtube.com/watch?v', '1', 1, 1),
(102, 553, 'http://www.youtube.com/watch?v', '1', 1, 1),
(103, 553, 'http://www.youtube.com/watch?v', '1', 1, 1),
(104, 553, 'http://www.youtube.com/watch?v', '1', 1, 1),
(105, 554, 'http://www.youtube.com/watch?v', '1', 1, 1),
(106, 554, 'http://www.youtube.com/watch?v', '1', 1, 1),
(107, 555, 'http://www.youtube.com/watch?v', '1', 1, 1),
(108, 556, 'D-mDxzDIYT8', '1', 1, 1),
(109, 556, 'D-mDxzDIYT8', '1', 1, 1),
(110, 557, 'http://www.youtube.com/watch?v', '1', 1, 1),
(111, 557, 'http://www.youtube.com/watch?v', '1', 1, 1),
(112, 558, 'http://www.youtube.com/watch?v', '1', 1, 1),
(113, 559, 'o_V3YLu-3zk', '<p>\r\n	1</p>\r\n', 1, 1),
(114, 559, 'HwxJtfZ6NPM', '<p>\r\n	1</p>\r\n', 1, 1),
(115, 560, 'http://www.youtube.com/watch?v', '1', 1, 1),
(116, 561, '9ete7TdZYy8', '1', 1, 1),
(117, 561, 'AArQJObN0ms', '1', 1, 1),
(118, 562, 'http://www.youtube.com/watch?v', '1', 1, 1),
(119, 562, 'http://www.youtube.com/watch?v', '1', 1, 1),
(120, 564, 'http://www.youtube.com/watch?v', '1', 1, 1),
(121, 564, 'HTC VIVA T2223', '1', 1, 1),
(122, 565, 'http://www.youtube.com/results', '1', 1, 1),
(123, 565, 'http://www.youtube.com/watch?v', '1', 1, 1),
(124, 566, 'NvZirg0msV8', '1', 1, 1),
(125, 566, 'Y2-Ql11BAY0', '1', 1, 1),
(126, 567, 'http://www.youtube.com/watch?v', '1', 1, 1),
(127, 568, 'http://www.youtube.com/watch?v', '1', 1, 1),
(128, 568, 'http://www.youtube.com/watch?v', '1', 1, 1),
(129, 569, 'http://www.youtube.com/watch?v', '1', 1, 1),
(130, 570, 'http://www.youtube.com/watch?v', '1', 1, 1),
(131, 570, 'http://www.youtube.com/watch?v', '1', 1, 1),
(132, 571, '7hH8gaeVPDI', '1', 1, 1),
(133, 572, 'http://www.youtube.com/watch?v', '1', 1, 1),
(134, 572, 'http://www.youtube.com/watch?v', '1', 1, 1),
(135, 573, 'http://www.youtube.com/watch?v', '1', 1, 1),
(136, 573, 'http://www.youtube.com/watch?v', '1', 1, 1),
(137, 575, 'http://www.youtube.com/watch?v', '1', 1, 1),
(138, 575, 'http://www.youtube.com/watch?v', '1', 1, 1),
(139, 574, 'SẢN PHẦM KHÔNG CÓ BÀI VIẾT', '1', 1, 1),
(140, 576, 'SẢN PHẦM KHÔNG CÓ BÀI VIẾT', '1', 1, 1),
(141, 577, 'http://www.youtube.com/watch?v', '1', 1, 1),
(142, 577, 'http://www.youtube.com/watch?v', '1', 1, 1),
(143, 578, 'http://www.youtube.com/watch?v', '1', 1, 1),
(144, 579, 'http://www.youtube.com/watch?v', '1', 1, 1),
(145, 580, 'http://www.youtube.com/watch?v', '1', 1, 1),
(146, 581, '-PN5VYKQAhY', '1', 1, 1),
(147, 582, 'tz1aRBKSlXQ', '<p>\r\n	1</p>\r\n', 1, 1),
(148, 582, 'V9S-eU_K5gs', '<p>\r\n	1</p>\r\n', 1, 1),
(149, 583, 'http://www.youtube.com/watch?v', '1', 1, 1),
(150, 583, 'http://www.youtube.com/watch?v', '1', 1, 1),
(151, 584, 'http://www.youtube.com/watch?v', '1', 1, 1),
(152, 584, 'http://www.youtube.com/watch?v', '1', 1, 1),
(153, 585, 'http://www.youtube.com/watch?v', '1', 1, 1),
(154, 585, 'http://www.youtube.com/watch?v', '1', 1, 1),
(155, 586, 'DQUJxOhFIhg', '1', 1, 1),
(156, 586, 'GyJhhWIDVBI', '1', 1, 1),
(157, 587, 'L1wcL-pfnqA', '1', 1, 1),
(158, 587, 'kyUBxsff4TM', '1', 1, 1),
(159, 496, 'Y2-Ql11BAY0', '1', 1, 1),
(160, 491, 'zcshDXmekSQ', '1', 1, 1),
(161, 588, '7zifkCcpOxs', '1', 1, 1),
(162, 588, 'Uc_Sz_ZRh6g', '1', 1, 1),
(163, 589, 'R1s1oU19sC0', '1', 1, 1),
(164, 589, 'LMtAKixJabM', '1', 1, 1),
(165, 590, 'RM7N7kubqw', '1', 1, 1),
(166, 590, 'viiiDFMK6Qs', '1', 1, 1),
(167, 591, '98ydeuaya8s', '1', 1, 1),
(168, 591, 'NpaGuRBKevI', '1', 1, 1),
(169, 500, 'gYJXjUUMCz8', '1', 1, 1),
(170, 492, 'OpKJaKf1M9w', '1', 1, 1),
(171, 493, 'TC8N9t_8lHs', '1', 1, 1),
(172, 494, '74DlH3TSC2A', '1', 1, 1),
(173, 495, '2nf_ZTyluAQ', '1', 1, 1),
(174, 495, 'c97oX-UC14c', '1', 1, 1),
(175, 497, 'XO8W7d-TrVo', '1', 1, 1),
(176, 499, 'QuD5dPID8no', '1', 1, 1),
(177, 498, 'pGlb7wPHdow', '1', 1, 1),
(178, 592, 'IYqJ5nZU4Z0', '1', 1, 1),
(179, 592, 'Y5d1LY9HU48', '1', 1, 1),
(180, 593, '9R0AHp5YCRk', '1', 1, 1),
(181, 593, '7Gj-v0pBZ8k', '1', 1, 1),
(182, 594, 'szh4q6ULnjA', '1', 1, 1),
(183, 595, 'DnNYwn1lXlo', '1', 1, 1),
(184, 595, 'OgP59xuU7xc', '1', 1, 1),
(185, 596, 'o0T6JBwNUGU', '1', 1, 1),
(186, 596, 'coV5C_HUlV4', '1', 1, 1),
(187, 597, 'txOK0jCrQ5A', '1', 1, 1),
(188, 597, 'WSusuuHr1cM', '1', 1, 1),
(189, 598, 'RmE5BCPSVEQ', '1', 1, 1),
(190, 598, 'S4wHjeVtlTA', '1', 1, 1),
(191, 598, 'JpG3a6_QQpg', '1', 1, 1),
(192, 599, 'EQhA-XnxXI8', '1', 1, 1),
(193, 599, 'FqRbWWusras', '1', 1, 1),
(194, 601, 'KW4pENS5Jrw', '1', 1, 1),
(195, 601, 'ha5U45l7J9A', '1', 1, 1),
(196, 602, 'tH2O1ngzbXU', '1', 1, 1),
(197, 602, 'YxpKfoX5MHU', '1', 1, 1),
(198, 600, 'rKcBl6W8nlc', '1', 1, 1),
(199, 603, 'gZyf5bmEe_U', '1', 1, 1),
(200, 603, 'anA2HeE0Tgg', '1', 1, 1),
(201, 604, 'NybhRoFRlmA', '1', 1, 1),
(202, 604, 'eGLtIRanTgo', '1', 1, 1),
(203, 605, 'OLlYZh2AwT4', '1', 1, 1),
(204, 605, 'NIDCK7sIJA', '1', 1, 1),
(205, 606, 'mjLSQMPr6ak', '1', 1, 1),
(206, 606, 'qVVvDFP6hC8', '1', 1, 1),
(207, 607, 'SwwqXK7nGz0', '1', 1, 1),
(208, 608, '8O6DsqYZzUY', '1', 1, 1),
(209, 608, '7LzYTlHFOWI', '1', 1, 1),
(210, 610, 'aIfpycZxExA', '1', 1, 1),
(211, 610, 'bwA8Y3ZnWus', '1', 1, 1),
(212, 609, 'PQ2EwmRpHVA', '1', 1, 1),
(213, 609, 'CKREqxJ5Ysc', '1', 1, 1),
(214, 611, 'aRS0R1gQGII', '1', 1, 1),
(215, 611, 'pI6oDdBITvQ', '1', 1, 1),
(216, 612, 'ulcE_7eNp_w', '1', 1, 1),
(217, 612, 'r0LsKEl3tH4', '1', 1, 1),
(218, 613, 'eoA9fmTRYU4', '1', 1, 1),
(219, 613, 'B6eLF2fEP8A', '1', 1, 1),
(220, 614, 'YpSlyI7bClw', '1', 1, 1),
(221, 614, 'WV6ug8GQsvs', '1', 1, 1),
(222, 614, 'ZtXfRdykUD8', '1', 1, 1),
(223, 615, 'XMFFzu4oGtE', '1', 1, 1),
(224, 615, '2-iMgUSjAw8', '1', 1, 1),
(225, 616, 'bnp8XTm-LU0', '1', 1, 1),
(226, 616, 'bXuGryf7Hos', '1', 1, 1),
(227, 624, 'OB-fSfzMZ_Q', '1', 1, 1),
(228, 623, 'tfIzxBXlHF4', '<p>\r\n	1</p>\r\n', 1, 1),
(229, 622, 'FYCBo_EDDhg', '1', 1, 1),
(230, 621, 'pyveMKzpYjU', '1', 1, 1),
(231, 620, 'U7_QEFVKVdw', '1', 1, 1),
(232, 619, 'b09wW9hFYxQ', '1', 1, 1),
(233, 625, 'rSh-OH_0Lew', '1', 1, 1),
(234, 625, '5vfXrqa0UwY', '1', 1, 1),
(235, 626, 'WazqE9gZf28', '1', 1, 1),
(236, 626, '-9UmvYcUo7U', '1', 1, 1),
(237, 627, 'zvda-cT69ek', '1', 1, 1),
(238, 627, 'gRH7hzlx04g', '1', 1, 1),
(239, 627, 'D4lHsAaitqI', '1', 1, 1),
(240, 628, '7X9qDpL22DM', '1', 1, 1),
(241, 628, 'nSOmcrmWkGM', '1', 1, 1),
(242, 629, 'qYprZzXsbKs', '1', 1, 1),
(243, 629, 'KJorssYWgs8', '1', 1, 1),
(244, 630, 'HZNl0ey8GJA', '1', 1, 1),
(245, 630, '19ZMGUPq648', '1', 1, 1),
(246, 631, '74Uz_TkVmaM', '1', 1, 1),
(247, 631, 'XkSIw-d3Rzg', '1', 1, 1),
(248, 633, 'YTKXaHKb_bc', '1', 1, 1),
(249, 633, 'uylEeK4svFo', '1', 1, 1),
(250, 634, 'zvgI5NNDuCI', '1', 1, 1),
(251, 634, 'TFC3K1WzGJI', '1', 1, 1),
(252, 632, 'IB69fdkmbuM', '1', 1, 1),
(253, 632, 's4Mwf6360iI', '1', 1, 1),
(254, 635, 'XrqO9_e3DbA', '1', 1, 1),
(255, 635, 'FTrmfc1It4E', '1', 1, 1),
(256, 636, 'KXp5f0AtWKw', '1', 1, 1),
(257, 636, 'dO78VLbE7bw', '1', 1, 1),
(258, 638, 'g35hYMWqMkU', '1', 1, 1),
(259, 638, 'KKvrh6g5RHU', '1', 1, 1),
(260, 637, 'XrqO9_e3DbA', '1', 1, 1),
(261, 639, '4ubMOxZcIyE', '1', 1, 1),
(262, 641, '2eo0BRtWP60', '1', 1, 1),
(263, 641, 'vOMz-YuMAjE', '1', 1, 1),
(264, 642, 'Jz1xvhXhRjA', '1', 1, 1),
(265, 642, 'nKNIxitxKUc', '1', 1, 1),
(266, 643, 'I27-51tOB8Q', '1', 1, 1),
(267, 644, 'sO1mac5kNlw', '1', 1, 1),
(268, 644, 'O98g2-WUPLs', '1', 1, 1),
(269, 645, 'geW3cgnu0xk', '1', 1, 1),
(270, 645, 'eY5gvt-iOzg', '1', 1, 1),
(271, 646, '04krABzUbXs', '1', 1, 1),
(272, 646, 'fdYaAo_PgpU', '1', 1, 1),
(273, 640, '4ubMOxZcIyE', '1', 1, 1),
(274, 647, 'nMmEKkBbN74', '1', 1, 1),
(275, 647, 'DFEtnQmSzbU', '1', 1, 1),
(276, 647, 'Ucyx64ujo5I', '1', 1, 1),
(277, 648, 'Ucyx64ujo5I', '1', 1, 1),
(278, 649, 'LspIjbYTLsw', '1', 1, 1),
(279, 649, 'bZxeMWsxliU', '1', 1, 1),
(280, 650, '3EAv5AxRw8E', '1', 1, 1),
(281, 650, '5OEIZvXqzxs', '1', 1, 1),
(282, 651, 'eLqWeId2tHg', '1', 1, 1),
(283, 652, 'l7GPwckl8mI', '1', 1, 1),
(284, 651, '4zRsZVskSTI', '1', 1, 1),
(285, 653, 'SVl4bIscGKc', '1', 1, 1),
(286, 654, '1Uo2YIgtlQs', '1', 1, 1),
(287, 654, 'Ui2TCoqmTqc', '1', 1, 1),
(288, 655, 'Tt4tm3xnbI4', '1', 1, 1),
(289, 655, 'MPmR0j4dHCg', '1', 1, 1),
(290, 656, 'Wsi9r9pgYXw', '1', 1, 1),
(291, 657, 'xlgdx7InjHA', '1', 1, 1),
(292, 657, 'zn-EE5Y_5OQ', '1', 1, 1),
(293, 658, 'VfNM9qVIMBI', '1', 1, 1),
(294, 659, 'pQ1KMEXWBmA', '1', 1, 1),
(295, 658, 'VZn2tnxxH00', '1', 1, 1),
(296, 659, 'b6IVqkXgqAA', '1', 1, 1),
(297, 660, 'YXdAKdOr7Ps', '1', 1, 1),
(298, 660, 'l5BGYnjdcVE', '1', 1, 1),
(299, 661, '6TsYPD3036k', '<p>\r\n	1</p>\r\n', 1, 1),
(300, 662, 'MZENXtxWMwc', '1', 1, 1),
(301, 662, '9Hjs62c9VQU', '1', 1, 1),
(302, 663, '39jfn8Ta6L4', '1', 1, 1),
(303, 663, 'NmNHVwnmiZc', '1', 1, 1),
(304, 664, '05Za5af6WjI', '1', 1, 1),
(305, 664, 'aAoF1EqtVwE', '1', 1, 1),
(306, 664, 'l7GPwckl8mI', '1', 1, 1),
(307, 665, 'MOUky0GZvrI', '1', 1, 1),
(308, 665, 'a4LU_VPHDaY', '1', 1, 1),
(309, 667, 'FhCpECIy69Y', '1', 1, 1),
(310, 667, '5_LCUC3ij04', '1', 1, 1),
(311, 666, 'IyruRh1T_a8', '1', 1, 1),
(312, 668, '7jSYRw9zuEc', '1', 1, 1),
(313, 668, '4EKNmrKvBOo', '1', 1, 1),
(314, 669, '6o-XSDO5GnA', '1', 1, 1),
(315, 670, 'BIzxmfQbeC4', '1', 1, 1),
(316, 671, 'BIzxmfQbeC4', '1', 1, 1),
(317, 672, 'BIzxmfQbeC4', '1', 1, 1),
(318, 673, 'WJr4db_hsrk', '1', 1, 1),
(319, 674, 'WJr4db_hsrk', '1', 1, 1),
(320, 675, 'WJr4db_hsrk', '1', 1, 1),
(321, 676, 'WJr4db_hsrk', '1', 1, 1),
(322, 677, 'WJr4db_hsrk', '1', 1, 1),
(323, 678, 'zwfHFo8nDzE', '1', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tintuc`
--

CREATE TABLE `tintuc` (
  `IDtintuc` int(11) NOT NULL,
  `tintuc` varchar(255) CHARACTER SET utf8 NOT NULL,
  `gioithieu` text CHARACTER SET utf8,
  `chitiet` text CHARACTER SET utf8,
  `hinhanh` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `nguon` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `hienthi` tinyint(1) NOT NULL DEFAULT '1',
  `sapxep` int(11) NOT NULL DEFAULT '0',
  `soluot` int(11) NOT NULL DEFAULT '0',
  `ngaydang` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tintuc`
--

INSERT INTO `tintuc` (`IDtintuc`, `tintuc`, `gioithieu`, `chitiet`, `hinhanh`, `nguon`, `hienthi`, `sapxep`, `soluot`, `ngaydang`) VALUES
(1, 'Cách bảo quản đồ gỗ', '<p><span style=\"color: rgb(0, 0, 0);\">C&aacute;ch bảo quản đồ gỗ, Gỗ l&agrave; loại vật liệu được sử dụng để chế tạo rất nhiều vật dụng, trang tr&iacute; nội thất&hellip; Do t&iacute;nh chất của gỗ n&ecirc;n việc sử dụng v&agrave; bảo quản đ&uacute;ng c&aacute;ch sẽ gi&uacute;p cho c&aacute;c vật dụng được chế tạo bằng gỗ lu&ocirc;n được mới đẹp v&agrave; kh&ocirc;ng [...]</span></p>', '<p><span style=\"color: rgb(0, 0, 0);\">&nbsp;</span></p>\r\n<h1 class=\"single\" style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-weight: normal;\"><span style=\"color: rgb(0, 0, 0);\">C&aacute;ch bảo quản đồ gỗ</span></h1>\r\n<div class=\"post_top\" style=\"margin: 0px 0px 10px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: rgb(102, 102, 102); font-family: Verdana, Geneva, sans-serif;\">\r\n<p class=\"postmetadata\" style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 11px; vertical-align: baseline; line-height: 20px;\"><span style=\"color: rgb(0, 0, 0);\">Posted on December 20, 2011 by Đồ Gỗ Mỹ nghệ Huỳnh Văn Gi&aacute;c</span></p>\r\n</div>\r\n<div class=\"posts\" id=\"post-2909\" style=\"margin: 0px 0px 35px; padding: 12px 0px 5px; border-width: 0px 0px 4px; border-bottom-style: solid; border-bottom-color: rgb(226, 226, 226); outline: 0px; vertical-align: baseline; color: rgb(51, 51, 51); font-family: Verdana, Geneva, sans-serif;\">\r\n<p style=\"margin: 0px; padding: 0px 0px 10px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; line-height: 20px;\"><span style=\"color: rgb(0, 0, 0);\">C&aacute;ch bảo quản&nbsp;</span><em style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;\"><strong style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;\"><strong style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;\"><a data-cke-saved-href=\"http://dogo.thuongmaikinhbac.com/\" href=\"http://dogo.thuongmaikinhbac.com/\" target=\"_blank\" title=\"Đồ gỗ\" style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; text-decoration: initial; color: rgb(204, 51, 51) !important;\"><span style=\"color: rgb(0, 0, 0);\">đồ gỗ</span></a></strong></strong></em><span style=\"color: rgb(0, 0, 0);\">,</span></p>\r\n<p align=\"justify\" style=\"margin: 0px; padding: 0px 0px 10px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; line-height: 20px;\"><span style=\"color: rgb(0, 0, 0);\"><strong style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;\">Gỗ</strong>&nbsp;l&agrave; loại vật liệu được sử dụng để chế tạo rất nhiều vật dụng,<strong style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;\">&nbsp;trang tr&iacute;&nbsp;</strong></span><strong style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;\"><strong style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;\"><a data-cke-saved-href=\"http://dogo.thuongmaikinhbac.com/\" href=\"http://dogo.thuongmaikinhbac.com/\" target=\"_blank\" title=\"Nội thất\" style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; text-decoration: initial; color: rgb(204, 51, 51) !important;\"><span style=\"color: rgb(0, 0, 0);\">nội thất</span></a></strong></strong><span style=\"color: rgb(0, 0, 0);\">&hellip; Do t&iacute;nh chất của gỗ n&ecirc;n việc sử dụng v&agrave; bảo quản đ&uacute;ng c&aacute;ch sẽ gi&uacute;p cho c&aacute;c vật dụng được chế tạo bằng gỗ lu&ocirc;n được mới đẹp v&agrave; kh&ocirc;ng bị hư hỏng.</span></p>\r\n<p align=\"justify\" style=\"margin: 0px; padding: 0px 0px 10px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; line-height: 20px;\">&nbsp;</p>\r\n<p align=\"justify\" style=\"margin: 0px; padding: 0px 0px 10px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; line-height: 20px;\">&nbsp;</p>\r\n<span style=\"color: rgb(0, 0, 0);\">\r\n<p align=\"justify\" style=\"margin: 0px; padding: 0px 0px 10px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; line-height: 20px;\"><strong style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; text-decoration: underline;\">Sau đ&acirc;y l&agrave; c&aacute;c c&aacute;ch bảo quản đồ gỗ:</span></strong></p>\r\n</span>\r\n<p align=\"justify\" style=\"margin: 0px; padding: 0px 0px 10px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; line-height: 20px;\"><span style=\"color: rgb(0, 0, 0);\"><strong style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;\">C&aacute;ch lau ch&ugrave;i v&aacute;n bọc tường</strong></span></p>\r\n<p align=\"justify\" style=\"margin: 0px; padding: 0px 0px 10px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; line-height: 20px;\"><span style=\"color: rgb(0, 0, 0);\">V&aacute;ch v&aacute;n nh&agrave; bạn c&oacute; sơn vẽ đủ m&agrave;u, l&acirc;u ng&agrave;y bị v&agrave;ng v&agrave; hoen ố, bạn h&atilde;y d&ugrave;ng nước tr&agrave; t&agrave;u tẩm v&agrave;o khăn, lau mạnh l&ecirc;n tường v&aacute;n ấy l&agrave; sạch sẽ ngay.</span></p>\r\n<p align=\"justify\" style=\"margin: 0px; padding: 0px 0px 10px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; line-height: 20px;\"><span style=\"color: rgb(0, 0, 0);\"><strong style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;\">C&aacute;ch l&agrave;m s&aacute;ng lại lớp vecni tr&ecirc;n gỗ</strong></span></p>\r\n<p align=\"justify\" style=\"margin: 0px; padding: 0px 0px 10px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; line-height: 20px;\"><span style=\"color: rgb(0, 0, 0);\">Lớp vẹc ni tr&ecirc;n gỗ tuy &iacute;t b&aacute;m bụi, nhưng nếu &iacute;t săn s&oacute;c, ch&uacute;ng cũng bị lu mờ, k&eacute;m b&oacute;ng lo&aacute;ng.&nbsp; Muốn ch&uacute;ng b&oacute;ng lo&aacute;ng như mới, bạn c&oacute; thể d&ugrave;ng một &iacute;t sữa lau l&ecirc;n lớp vecni v&agrave; để cho kh&ocirc;. Sau đ&oacute;, d&ugrave;ng b&agrave;n chải nh&uacute;ng nước l&atilde; cọ sạch. Với phương ph&aacute;p n&agrave;y, vecni sẽ cứng v&agrave; b&oacute;ng</span></p>\r\n<p align=\"justify\" style=\"margin: 0px; padding: 0px 0px 10px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; line-height: 20px;\"><span style=\"color: rgb(0, 0, 0);\"><strong style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;\">Tẩy những vết d&iacute;nh l&acirc;u ng&agrave;y tr&ecirc;n đồ gỗ</strong></span></p>\r\n<p align=\"justify\" style=\"margin: 0px; padding: 0px 0px 10px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; line-height: 20px;\"><span style=\"color: rgb(0, 0, 0);\">Tr&ecirc;n đồ gỗ thường c&oacute; những vết dơ do sự v&ocirc; &yacute; g&acirc;y ra. Nếu để l&acirc;u, c&aacute;c vết dơ n&agrave;y rất kh&oacute; ch&ugrave;i rửa. Muốn l&agrave;m mất những dấu vết n&agrave;y đi, bạn h&atilde;y&nbsp;cho mấy giọt dầu ăn v&agrave;o một ch&uacute;t s&aacute;p ong trắng, đem chưng c&aacute;ch thủy cho s&aacute;p ong chảy ra. Đen b&ocirc;i thứ s&aacute;p ấy l&ecirc;n chỗ dơ rồi lấy vải ch&agrave; thật mạnh.</span></p>\r\n<p align=\"justify\" style=\"margin: 0px; padding: 0px 0px 10px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; line-height: 20px;\"><span style=\"color: rgb(0, 0, 0);\"><strong style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;\">C&aacute;ch ch&ugrave;i đồ gỗ bị giống ruồi l&agrave;m dơ bẩn</strong></span></p>\r\n<p align=\"justify\" style=\"margin: 0px; padding: 0px 0px 10px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; line-height: 20px;\"><span style=\"color: rgb(0, 0, 0);\">Muốn l&agrave;m mất những vết dơ bẩn do giống ruồi g&acirc;y ra tr&ecirc;n đồ gỗ, bạn lấy bột (nếp, gạo, hay m&igrave; &hellip;) trộn với ch&uacute;t dầu ăn đ&aacute;nh cho thật qu&aacute;nh, thoa đều bột l&ecirc;n chỗ dơ rồi lấy giẻ ch&ugrave;i cho sạch. Sau c&ugrave;ng, rửa kỹ bằng nước trong v&agrave; đ&aacute;nh b&oacute;ng.</span></p>\r\n<p align=\"justify\" style=\"margin: 0px; padding: 0px 0px 10px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; line-height: 20px;\"><span style=\"color: rgb(0, 0, 0);\"><strong style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;\">C&aacute;ch tẩy vết dơ b&aacute;n l&acirc;u ng&agrave;y tr&ecirc;n gỗ trơn</strong></span></p>\r\n<p align=\"justify\" style=\"margin: 0px; padding: 0px 0px 10px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; line-height: 20px;\"><span style=\"color: rgb(0, 0, 0);\">Muốn l&agrave;m sạch những vết dơ b&aacute;m tr&ecirc;n những vật dụng bằng gỗ trơn, kh&ocirc;ng c&oacute; đ&aacute;nh vẹcni, đầu ti&ecirc;n, bạn h&atilde;y pha một thứ nước để lau ch&ugrave;i theo c&ocirc;ng thức:</span></p>\r\n<p align=\"justify\" style=\"margin: 0px; padding: 0px 0px 10px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; line-height: 20px;\"><span style=\"color: rgb(0, 0, 0);\">10gam muối + 90 gam nước tẩy (soude de caustique) + 1 l&iacute;t nước</span></p>\r\n<p align=\"justify\" style=\"margin: 0px; padding: 0px 0px 10px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; line-height: 20px;\"><span style=\"color: rgb(0, 0, 0);\">Sau đ&oacute;, bạn lấy một c&aacute;i chổi bằng bẹ dừa thấm v&agrave;o nước n&agrave;y m&agrave; qu&eacute;t l&ecirc;n c&aacute;c đồ d&ugrave;ng bằng gỗ trơn đ&oacute;. Để một l&uacute;c l&acirc;u, bạn rửa lại bằng nước l&atilde; v&agrave; lau kh&ocirc; bằng khăn mềm v&agrave; sạch.</span></p>\r\n<p align=\"justify\" style=\"margin: 0px; padding: 0px 0px 10px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; line-height: 20px;\"><span style=\"color: rgb(0, 0, 0);\"><strong style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;\">C&aacute;ch l&agrave;m mới lại những vật dụng nhỏ bằng gỗ</strong></span></p>\r\n<p align=\"justify\" style=\"margin: 0px; padding: 0px 0px 10px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; line-height: 20px;\"><span style=\"color: rgb(0, 0, 0);\">Muốn cho những vật dụng bằng gỗ nhỏ của bạn được b&oacute;ng lo&aacute;ng như mới, bạn h&atilde;y lấy b&ocirc;ng g&ograve;n thấm dầu th&ocirc;ng (essence de t&eacute;r&eacute;benthine) lau l&ecirc;n thật đều. Sau đ&oacute;, bạn đợi cho kh&ocirc; v&agrave; đ&aacute;nh b&oacute;ng lại bằng nỉ sạch.</span></p>\r\n<p align=\"justify\" style=\"margin: 0px; padding: 0px 0px 10px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; line-height: 20px;\"><span style=\"color: rgb(0, 0, 0);\"><strong style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;\">L&agrave;m mất c&aacute;c vết dộp trắng tr&ecirc;n b&agrave;n gỗ c&oacute; đ&aacute;nh vecni</strong></span></p>\r\n<p align=\"justify\" style=\"margin: 0px; padding: 0px 0px 10px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; line-height: 20px;\"><span style=\"color: rgb(0, 0, 0);\">B&agrave;n hay đi-văng bị nước n&oacute;ng l&agrave;m dộp trắng tr&ecirc;n mặt gỗ c&oacute; đ&aacute;nh vecni, bạn h&atilde;y d&ugrave;ng vải c&oacute; tẩm dầu paraffine ch&agrave; nhẹ l&ecirc;n chỗ dộp. Để một l&uacute;c l&acirc;u rồi bạn d&ugrave;ng dầu th&ocirc;ng đ&aacute;nh l&ecirc;n v&agrave; d&ugrave;ng vải thường đ&aacute;nh b&oacute;ng.</span></p>\r\n<p align=\"justify\" style=\"margin: 0px; padding: 0px 0px 10px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; line-height: 20px;\"><span style=\"color: rgb(0, 0, 0);\"><strong style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;\">C&aacute;ch lấy những khe nứt tr&ecirc;n s&agrave;n gỗ</strong></span></p>\r\n<p align=\"justify\" style=\"margin: 0px; padding: 0px 0px 10px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; line-height: 20px;\"><span style=\"color: rgb(0, 0, 0);\">Muốn lấy k&iacute;n những khe nứt hoặc kẽ hở tr&ecirc;n s&agrave;n gỗ, bạn h&atilde;y lấy keo lỏng trộn với mạt cưa đ&atilde; r&acirc;y nhuyễn. Bạn nhớ trộn cho thật đều, thật nhuyễn, rồi bạn đem chưng l&ecirc;n cho n&oacute;ng, đoạn đem tr&eacute;t v&agrave;o c&aacute;c chỗ hở v&agrave; miết cho thật bằng mặt.</span></p>\r\n<p align=\"justify\" style=\"margin: 0px; padding: 0px 0px 10px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; line-height: 20px;\"><span style=\"color: rgb(0, 0, 0);\">Nếu s&agrave;n gỗ c&oacute; đ&aacute;nh vecni, bạn phải lấy vecni đ&aacute;nh l&ecirc;n c&aacute;c chỗ đ&atilde; được tr&eacute;t k&iacute;n cho tiệp m&agrave;u.</span></p>\r\n</div>\r\n<p style=\"color: rgb(34, 34, 34);\"><span style=\"color: rgb(0, 0, 0);\">&nbsp;</span></p>\r\n<p><span style=\"color: rgb(0, 0, 0);\">&nbsp;</span></p>', 'ban_ghe_go.jpg', 'noithatmyhome.com', 1, 1, 2, '2004-01-05 09:29:59'),
(2, 'Nâu cà phê – màu phòng khách', '<p><span style=\"color: rgb(0, 0, 0);\">Nội thất ph&ograve;ng kh&aacute;ch m&agrave;u n&acirc;u c&agrave; ph&ecirc; l&agrave; một trong những m&agrave;u chủ đạo của thập ni&ecirc;n 80 v&agrave; đầu thập ni&ecirc;n 90 Nội thất ph&ograve;ng kh&aacute;ch m&agrave;u n&acirc;u c&agrave; ph&ecirc; l&agrave; một trong những m&agrave;u chủ đạo của thập ni&ecirc;n 80 v&agrave; đầu thập ni&ecirc;n 90 Sau hơn một thập kỷ, m&agrave;u n&acirc;u [...]</span></p>', '<p><span style=\"color: rgb(0, 0, 0);\">&nbsp;</span></p>\r\n<h1 class=\"single\" style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-weight: normal; \"><span style=\"color: rgb(0, 0, 0);\"> 	N&acirc;u c&agrave; ph&ecirc; &ndash; m&agrave;u ph&ograve;ng kh&aacute;ch năm 2011</span></h1>\r\n<div class=\"post_top\" style=\"margin: 0px 0px 10px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: rgb(102, 102, 102); font-family: Verdana, Geneva, sans-serif; \">\r\n<p class=\"postmetadata\" style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 11px; vertical-align: baseline; background-color: transparent; line-height: 20px; background-position: initial initial; background-repeat: initial initial; \"><span style=\"color: rgb(0, 0, 0);\"> 		Posted on May 20, 2012 by Đồ Gỗ Mỹ nghệ Huỳnh Văn Gi&aacute;c</span></p>\r\n</div>\r\n<div class=\"posts\" id=\"post-11836\" style=\"margin: 0px 0px 35px; padding: 12px 0px 5px; border-width: 0px 0px 4px; border-bottom-style: solid; border-bottom-color: rgb(226, 226, 226); outline: 0px; vertical-align: baseline; color: rgb(51, 51, 51); font-family: Verdana, Geneva, sans-serif; \">\r\n<p style=\"margin: 0px; padding: 0px 0px 10px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background-color: transparent; line-height: 20px; background-position: initial initial; background-repeat: initial initial; \"><a href=\"http://dogo.thuongmaikinhbac.com/wp-content/uploads/2012/05/nau-ca-phe-mau-phong-khach-nam-2011.jpg\" style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-color: transparent; color: rgb(204, 51, 51) !important; text-decoration: none; font-weight: bold; \"><span style=\"color: rgb(0, 0, 0);\"><img alt=\" thiet ke noi that% name N&acirc;u c&agrave; ph&ecirc; &ndash; m&agrave;u ph&ograve;ng kh&aacute;ch năm 2011 \" class=\"alignleft  wp-image-11837\" height=\"122\" src=\"http://dogo.thuongmaikinhbac.com/wp-content/uploads/2012/05/nau-ca-phe-mau-phong-khach-nam-2011.jpg\" style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-color: transparent; \" title=\"nau-ca-phe-mau-phong-khach-nam-2011\" width=\"200\" /></span></a><span style=\"color: rgb(0, 0, 0);\"><strong style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-color: transparent; \"><a href=\"http://dogo.thuongmaikinhbac.com/\" style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-color: transparent; color: rgb(204, 51, 51) !important; text-decoration: none; \" target=\"_blank\" title=\"Nội thất\">Nội thất</a></strong></span><span style=\"color: rgb(0, 0, 0);\">&nbsp;</span><strong style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-color: transparent; \"><a href=\"http://dogo.thuongmaikinhbac.com/phong-khach/\" style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-color: transparent; color: rgb(204, 51, 51) !important; text-decoration: none; \" title=\"ph&ograve;ng kh&aacute;ch\"><span style=\"color: rgb(0, 0, 0);\">ph&ograve;ng kh&aacute;ch</span></a></strong><span style=\"color: rgb(0, 0, 0);\">&nbsp;m&agrave;u n&acirc;u c&agrave; ph&ecirc; l&agrave; một trong những m&agrave;u chủ đạo của thập ni&ecirc;n 80 v&agrave; đầu thập ni&ecirc;n 90<br />\r\nNội thất ph&ograve;ng kh&aacute;ch m&agrave;u n&acirc;u c&agrave; ph&ecirc; l&agrave; một trong những m&agrave;u chủ đạo của thập ni&ecirc;n 80 v&agrave; đầu thập ni&ecirc;n 90</span></p>\r\n<p style=\"margin: 0px; padding: 0px 0px 10px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background-color: transparent; line-height: 20px; background-position: initial initial; background-repeat: initial initial; \"><span style=\"color: rgb(0, 0, 0);\"> 		Sau hơn một thập kỷ, m&agrave;u n&acirc;u c&agrave; ph&ecirc; đang quay trở lại. Kh&ocirc;ng chỉ dừng ở m&agrave;u xe, m&agrave;u điện thoại hay xuất hiện trong ng&agrave;nh thời trang, m&agrave;u n&acirc;u c&agrave; ph&ecirc; chứng minh sự sang trọng của m&igrave;nh trong những mẫu ph&ograve;ng kh&aacute;ch của năm 2011. Lẽ tất nhi&ecirc;n n&oacute; vẫn đảm bảo t&iacute;nh hiện đại của thế kỷ 21 với sự kết hợp tinh tế của tấm đệm ngồi bằng tơ; những chiếc đ&egrave;n thủy tinh trắng hiện đại, c&ugrave;ng những đuờng n&eacute;t thiết kế đơn giản v&agrave; lịch l&atilde;m&hellip;</span></p>\r\n<p style=\"margin: 0px; padding: 0px 0px 10px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background-color: transparent; line-height: 20px; background-position: initial initial; background-repeat: initial initial; \"><a href=\"http://dogo.thuongmaikinhbac.com/wp-content/uploads/2012/05/nau-ca-phe-mau-phong-khach-nam-2011-a.jpg\" style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-color: transparent; color: rgb(204, 51, 51) !important; text-decoration: none; font-weight: bold; \"><span style=\"color: rgb(0, 0, 0);\"><img alt=\" thiet ke noi that% name N&acirc;u c&agrave; ph&ecirc; &ndash; m&agrave;u ph&ograve;ng kh&aacute;ch năm 2011 \" class=\"aligncenter size-full wp-image-11838\" height=\"300\" src=\"http://dogo.thuongmaikinhbac.com/wp-content/uploads/2012/05/nau-ca-phe-mau-phong-khach-nam-2011-a.jpg\" style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-color: transparent; \" title=\"nau-ca-phe-mau-phong-khach-nam-2011-a\" width=\"400\" /></span></a><a href=\"http://dogo.thuongmaikinhbac.com/wp-content/uploads/2012/05/nau-ca-phe-mau-phong-khach-nam-2011-b.jpg\" style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-color: transparent; color: rgb(68, 68, 68); text-decoration: none; font-weight: bold; \"><span style=\"color: rgb(0, 0, 0);\"><img alt=\" thiet ke noi that% name N&acirc;u c&agrave; ph&ecirc; &ndash; m&agrave;u ph&ograve;ng kh&aacute;ch năm 2011 \" class=\"aligncenter size-full wp-image-11839\" height=\"238\" src=\"http://dogo.thuongmaikinhbac.com/wp-content/uploads/2012/05/nau-ca-phe-mau-phong-khach-nam-2011-b.jpg\" style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-color: transparent; \" title=\"nau-ca-phe-mau-phong-khach-nam-2011-b\" width=\"400\" /></span></a></p>\r\n</div>\r\n<p><span style=\"color: rgb(0, 0, 0);\"> 	&nbsp;</span></p>', 'nau-ca-phe-mau-phong-khach-nam-2011.jpg', 'noithatmyhome.vn', 1, 2, 2, '2004-01-05 09:35:02');

-- --------------------------------------------------------

--
-- Table structure for table `tygia_ngoaite`
--

CREATE TABLE `tygia_ngoaite` (
  `id_ngoaite` int(11) NOT NULL,
  `ky_hieu` varchar(20) NOT NULL,
  `ten_ngoai_te` varchar(70) NOT NULL,
  `ti_gia` decimal(10,0) NOT NULL,
  `stt` int(11) NOT NULL DEFAULT '1',
  `anhien` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tygia_ngoaite`
--

INSERT INTO `tygia_ngoaite` (`id_ngoaite`, `ky_hieu`, `ten_ngoai_te`, `ti_gia`, `stt`, `anhien`) VALUES
(1, 'USD', 'US DOLLAR ', '20', 1, 1),
(2, 'EUR', 'EURO ', '29', 1, 1),
(3, 'SGD', 'SINGAPORE DOLLAR ', '16', 1, 1),
(4, 'AUD', 'AUST.DOLLAR ', '21', 1, 1),
(5, 'VND', 'Việt Nam Đồng', '1', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `idUser` int(11) NOT NULL,
  `IPAddress` varchar(50) NOT NULL,
  `LastLoginDate` datetime NOT NULL,
  `LastAvtiveDate` datetime NOT NULL,
  `Session` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `idUser` int(11) NOT NULL,
  `HoTen` varchar(100) NOT NULL DEFAULT '',
  `Username` varchar(50) NOT NULL DEFAULT '',
  `Password` varchar(50) NOT NULL,
  `DiaChi` varchar(255) NOT NULL,
  `Dienthoai` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL DEFAULT '',
  `NgayDangKy` date DEFAULT '0000-00-00',
  `idGroup` int(11) NOT NULL DEFAULT '0',
  `NgaySinh` date DEFAULT '0000-00-00',
  `GioiTinh` tinyint(1) DEFAULT NULL,
  `Active` int(11) DEFAULT NULL,
  `RandomKey` varchar(255) DEFAULT NULL,
  `LoginNumber` int(11) DEFAULT '0',
  `DisableDate` datetime DEFAULT NULL,
  `Expiration` int(4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`idUser`, `HoTen`, `Username`, `Password`, `DiaChi`, `Dienthoai`, `Email`, `NgayDangKy`, `idGroup`, `NgaySinh`, `GioiTinh`, `Active`, `RandomKey`, `LoginNumber`, `DisableDate`, `Expiration`) VALUES
(21, 'Gia Hu', 'giahu', 'c4ca4238a0b923820dcc509a6f75849b', '123 meo meo chấm cơm', '0912345678', 'giahu@localhost.com', '2009-01-22', 0, '1972-01-01', 0, 1, 'f29c0f1c5f3cc955ceed26b4a4d6e1d9', 0, '0000-00-00 00:00:00', 0),
(20, 'Tí', 'ti', 'c4ca4238a0b923820dcc509a6f75849b', '456, abc chấm  cơm chấm vê en', '089874563', 'ti@localhost.com', '2009-01-20', 1, '1971-01-01', 1, 1, '1e932f24dc0aa4e7a6ac2beec387416d', 0, '0000-00-00 00:00:00', 0),
(22, 'Tèo', 'teo', 'c4ca4238a0b923820dcc509a6f75849b', '789 gia hu chấm vê en', '32648372', 'teo@localhost.com', '2009-02-07', 1, '0000-00-00', 1, 1, 'cfc69414187bd8ade5c17c797a107525', 0, '0000-00-00 00:00:00', 0),
(23, 'Nguyễn Xuân Cảnh', 'xuancanh', 'd9b1d7db4cd6e70935368a1efb10e377', 'Bình Định', '0974197377', 'xuancanh335@gmail.com', '2004-01-11', 1, '0000-00-00', 1, NULL, NULL, 0, '0000-00-00 00:00:00', 0),
(24, 'canh', '10c3061003', '202cb962ac59075b964b07152d234b70', 'Lâm Đồng', '455', '10c3061003@email.hcmct.edu.vn', '2004-01-11', 0, '2004-01-14', 1, NULL, NULL, 0, '0000-00-00 00:00:00', 0),
(28, 'Xuân Cảnh', 'canhit', 'c56d0e9a7ccec67b4ea131655038d604', 'LĐ', '123456789', '123@yahoo.com', '0000-00-00', 1, '0000-00-00', 1, NULL, NULL, 0, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`idBanner`);

--
-- Indexes for table `chungloai`
--
ALTER TABLE `chungloai`
  ADD PRIMARY KEY (`idCL`);

--
-- Indexes for table `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`idDH`);

--
-- Indexes for table `donhangchitiet`
--
ALTER TABLE `donhangchitiet`
  ADD PRIMARY KEY (`idChiTiet`);

--
-- Indexes for table `lienket`
--
ALTER TABLE `lienket`
  ADD PRIMARY KEY (`idWebLink`);

--
-- Indexes for table `loaisp`
--
ALTER TABLE `loaisp`
  ADD PRIMARY KEY (`idLoai`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`idMenu`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`idPage`);

--
-- Indexes for table `quang_cao`
--
ALTER TABLE `quang_cao`
  ADD PRIMARY KEY (`idQC`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`idSP`);

--
-- Indexes for table `sanpham_comment`
--
ALTER TABLE `sanpham_comment`
  ADD PRIMARY KEY (`id_comment`);

--
-- Indexes for table `sanpham_hinh`
--
ALTER TABLE `sanpham_hinh`
  ADD PRIMARY KEY (`id_hinh`);

--
-- Indexes for table `sanpham_thuoctinh`
--
ALTER TABLE `sanpham_thuoctinh`
  ADD PRIMARY KEY (`id_thuoctinh_dtdd`);

--
-- Indexes for table `sanpham_youtube`
--
ALTER TABLE `sanpham_youtube`
  ADD PRIMARY KEY (`id_youtube`);

--
-- Indexes for table `tintuc`
--
ALTER TABLE `tintuc`
  ADD PRIMARY KEY (`IDtintuc`);

--
-- Indexes for table `tygia_ngoaite`
--
ALTER TABLE `tygia_ngoaite`
  ADD PRIMARY KEY (`id_ngoaite`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`idUser`),
  ADD UNIQUE KEY `Username` (`Username`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `idBanner` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `chungloai`
--
ALTER TABLE `chungloai`
  MODIFY `idCL` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `donhang`
--
ALTER TABLE `donhang`
  MODIFY `idDH` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;
--
-- AUTO_INCREMENT for table `donhangchitiet`
--
ALTER TABLE `donhangchitiet`
  MODIFY `idChiTiet` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;
--
-- AUTO_INCREMENT for table `lienket`
--
ALTER TABLE `lienket`
  MODIFY `idWebLink` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `loaisp`
--
ALTER TABLE `loaisp`
  MODIFY `idLoai` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `idMenu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `idPage` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `quang_cao`
--
ALTER TABLE `quang_cao`
  MODIFY `idQC` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `idSP` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=687;
--
-- AUTO_INCREMENT for table `sanpham_comment`
--
ALTER TABLE `sanpham_comment`
  MODIFY `id_comment` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sanpham_hinh`
--
ALTER TABLE `sanpham_hinh`
  MODIFY `id_hinh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1166;
--
-- AUTO_INCREMENT for table `sanpham_thuoctinh`
--
ALTER TABLE `sanpham_thuoctinh`
  MODIFY `id_thuoctinh_dtdd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=184;
--
-- AUTO_INCREMENT for table `sanpham_youtube`
--
ALTER TABLE `sanpham_youtube`
  MODIFY `id_youtube` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=324;
--
-- AUTO_INCREMENT for table `tintuc`
--
ALTER TABLE `tintuc`
  MODIFY `IDtintuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tygia_ngoaite`
--
ALTER TABLE `tygia_ngoaite`
  MODIFY `id_ngoaite` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `idUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
