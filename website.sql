-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 19, 2023 at 03:08 PM
-- Server version: 8.0.31
-- PHP Version: 8.1.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `website`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

DROP TABLE IF EXISTS `tbl_admin`;
CREATE TABLE IF NOT EXISTS `tbl_admin` (
  `id_user` int NOT NULL AUTO_INCREMENT,
  `fullname` varchar(255) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_user`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id_user`, `fullname`, `email`, `username`, `password`, `role`) VALUES
(1, 'ADMIN', 'admin@gmail.com', 'admin', '123', 1),
(13, 'phamdong', NULL, 'Dh52001330@student.stu.edu.vn', '$2y$10$YpyLXa.lZ9kJGmpRzO1lLezEMFGMSeXeaUzhv6bwlRvuLeMD2urJ6', 0),
(4, 'Tran Phat', NULL, 'trantanphat@gmail.com', '$2y$10$uGCkOJlcPUewNb8ztjgb3eWvUiePLTxxmWLgzOimLGzfGboPjd2M.', 0),
(11, 'phat1', NULL, 'phat1@gmail.com', '$2y$10$vILaAsmdp8Z9uQLIhQ4u7uEtaRpIA.3PjZoGnq7fvMsEgOh11PfTu', 1),
(10, 'tanphat', NULL, 'tranphat@gmail.com', '$2y$10$kHmU08TcyVxqAWm/pOKfMeOvG8sYDvFI9XYXimgaR3FmlatS07jN2', 0),
(14, 'trantanphat', NULL, 'dh52003792@student.stu.edu.vn', '$2y$10$THq1JT3ibBbLP4W6h1mmpegAeGZ1Io3ddTcObAO.77VBPmqrdQh5u', 0),
(15, 'trantanphat', NULL, 'phat097@gmail.com', '$2y$10$GwifSVLZ8bXhEWzOUCCe1OjtRdEdRF77VsLnTRMrfhjei.MJrSrF6', 0),
(17, 'haha', NULL, 'haha@gmail.com', '$2y$10$wEOy4ZRHGZNUd0JSMf6rQOw9K2rI6CMiY5XlJSfSHEFjK1WjLdWCu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

DROP TABLE IF EXISTS `tbl_category`;
CREATE TABLE IF NOT EXISTS `tbl_category` (
  `id_category` int NOT NULL AUTO_INCREMENT,
  `namecategory` varchar(100) NOT NULL,
  PRIMARY KEY (`id_category`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id_category`, `namecategory`) VALUES
(51, 'PRADA'),
(52, 'ARMAF'),
(53, 'MOSCHINO');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

DROP TABLE IF EXISTS `tbl_product`;
CREATE TABLE IF NOT EXISTS `tbl_product` (
  `id_product` int NOT NULL AUTO_INCREMENT,
  `nameproduct` varchar(250) NOT NULL,
  `productcode` varchar(100) NOT NULL,
  `priceproduct` varchar(50) NOT NULL,
  `quantity` int NOT NULL,
  `content` text NOT NULL,
  `summary` tinytext NOT NULL,
  `picture` varchar(50) NOT NULL,
  `status` int NOT NULL,
  `id_category` int NOT NULL,
  PRIMARY KEY (`id_product`),
  KEY `lk1` (`id_category`)
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`id_product`, `nameproduct`, `productcode`, `priceproduct`, `quantity`, `content`, `summary`, `picture`, `status`, `id_category`) VALUES
(126, 'Prada Milano', 'PML', '3050000', 7, 'Prada Milano là một hương nước hoa nam tinh tế và cuốn hút, đậm chất Ý với hương thơm ấn tượng của iris và da thuộc. Ra mắt năm 2017, nước hoa này tạo nên một dấu ấn sang trọng và quyến rũ cho người đàn ông đẳng cấp.', 'hương thơm của Diên Vỹ, Hổ Phách và Hoắc hương. Nếu như mùi hương này trực thuộc thu đông, thì khoảng hương này sẽ là một chiếc khoác vô cùng nam tính với đầy đặn sự ấm áp gợi cảm.', '1702995966_para2.jpg', 1, 51),
(127, 'Prada halo', 'PMH', '3000000', 7, 'Prada Milano là một hương thơm đặc trưng của thương hiệu, kết hợp sự sang trọng và tinh tế. Mở đầu với hương cam bergamot, giữa là sự hòa quyện của hoa lan và hương xạ hương, cuối cùng là sự ấm áp của gỗ hổ phách và vani. Một biểu tượng của phong cách và đẳng cấp.', 'Khoảng hương lúc này sẽ tối dần, trầm ấm bởi hương thơm của Diên Vỹ, Hổ Phách và Hoắc hương. Nếu như mùi hương này trực thuộc thu đông, thì khoảng hương này sẽ là một chiếc khoác vô cùng nam', '1702996265_Para3.jpg', 1, 51),
(128, 'Armaf Tres Nuit', 'ATN', '1350000', 7, 'Armaf Tres Nuit là một hương nước hoa nam sang trọng và tinh tế, đặc trưng bởi hương thơm mạnh mẽ của lavender và gỗ cedar. Ra mắt năm 2014, nước hoa này là biểu tượng của sự quý phái và lịch lãm, hoàn hảo cho những người đàn ông tự tin và hiện đại.', 'Hương Đầu: Quả chanh vàng, Cỏ đuôi ngựa, Hoa diên vĩ Hương giữa: Hoa Oải Hương, Hoa tím, Hương gia vị cay Hương cuối: Long diên hương, Gỗ đàn hương', '1702996338_anh22.jpg', 1, 52),
(129, 'Armaf Club De Nuit Sillage', 'ATNS', '2500000', 7, 'Armaf Club De Nuit Sillage là một hương thơm nam tính và cuốn hút, mở đầu với hương cam bergamot và lựu tươi mát. Hương giữa hòa quyện hương cây đinh hương và hoa hồng, tạo nên một cảm giác lôi cuốn. Cuối cùng, hương gỗ đàn hồi và vani ấm áp kết thúc hương thơm một cách lâu dài và gợi cảm.', 'Hương Đầu: Quả chanh vàng, Cỏ đuôi ngựa, Hoa diên vĩ Hương giữa: Hoa Oải Hương, Hoa tím, Hương gia vị cay Hương cuối: Long diên hương, Gỗ đàn hương', '1702996468_anh18.jpg', 1, 52),
(130, 'Moschino Toy Boy', 'MTB', '1550000', 6, 'Moschino Toy Boy là một hương nước hoa nam hiện đại của nhãn hiệu thời trang nổi tiếng Moschino. Được ra mắt năm 2019, nước hoa này mang đến sự giao thoa giữa hương hoa quả, hương thảo mộc, và nền gỗ ấm áp, tạo nên một phong cách tinh tế và cuốn hút cho người đàn ông hiện đại', ' Hương đầu: Cam bergamot, Hồng tiêu, Trái lê Hương giữa: Hoa hồng, Hoa mộc lan Hương cuối: Cỏ Vetiver, Gỗ Cashmeran', '1702996543_anh9.jpg', 1, 53),
(131, 'Moschino Toy 2', 'MT2', '1550000  ', 6, '  Moschino Toy 2 là một hương thơm quyến rũ dành cho phụ nữ, là sự kết hợp tinh tế giữa sự tươi mới và nữ tính. Hương thơm mở đầu với sự tươi mới của lựu và cam bergamot, tiếp theo là hương hoa hồng và hoa nhài quyến rũ, cuối cùng là sự ấm áp của gỗ đàn hồi và hổ phách. Toy 2 là biểu tượng của sự thoải mái và sáng tạo, đem lại một trải nghiệm thú vị và nữ tính cho người đeo.', 'hương thơm mát dịu căng mọng của quả táo xanh, quả quýt hồng thêm chút nhẹ nhàng của hoa mộc lan', '1702998237_anh12.jpg', 1, 53);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD CONSTRAINT `lk1` FOREIGN KEY (`id_category`) REFERENCES `tbl_category` (`id_category`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
