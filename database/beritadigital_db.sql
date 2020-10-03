-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 03, 2020 at 01:23 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `beritadigital_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `deskripsi` text,
  `create_time` varchar(50) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `image`, `deskripsi`, `create_time`, `user_id`) VALUES
(1, 'Trump terkena covid-19', 'https://cdn1-production-images-kly.akamaized.net/Sg6z2o7-DyVruH5HfzKqO3Aw4cc=/0x27:800x478/640x360/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/2945942/original/062238400_1571723806-Presiden_AS_Donald_Trump__AP_PHOTO_.jpeg', ' Presiden Amerika Serikat (AS), Donald Trump dinyatakan terjangkit virus corona covid-19. Tidak hanya Donald Trump, sang istri, Melania juga terpapar wabah yang pertama kali ditemukan di Wuhan, China itu. \"Saya dinyatakan positif covid-19. Kamia akan segera memulai proses karantina dan pemulihan. Kami akan melewati ini bersama,\" cuitnya.', '2020/10/03', 1),
(2, 'Piala Menpora Esports 2020: 8 Tim Pelajar dan Mahasiswa Perebutkan Gelar Juara', 'https://cdn0-production-images-kly.akamaized.net/zNFvJdWnJ3iqm-sAtc08BpI_GK8=/640x360/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/3199003/original/077659800_1596555522-Cover_PME_2020_-_Gatot_Kaca__1_.jpg', 'Liputan6.com, Jakarta - Piala Menpora Esports 2020 untuk kalangan pelajar SMP, SMA, dan perguruan tinggi memasuki fase puncak. Delapan tim dari berbagai daerah di Indonesia lolos ke grand final dan akan memperebutkan trofi juara dari Menteri Pemuda dan Olahraga Zainudin Amali. Kedelapan tim yang akan bertanding antara lain MAN 3 Palembang, Universitas Gunadarma Jakarta, Universitas Udayana Denpasar, SMAN 1 Bintan Utara, Binus University Jakarta, Telkom University Bandung, Institut Pertanian Bogor, dan SMA Institut Indonesia Semarang.', '2020/10/03', 2),
(3, 'Shopee Liga 1 Ditunda, Kapten Persib Akui Sempat K', 'https://cdn0-production-images-kly.akamaized.net/Y3S3mIqGkmnixxshX4dOkllj0yc=/640x360/smart/filters:quality(75):strip_icc():format(webp)/kly-media-production/medias/2918471/original/002823900_1569160945-IMG_20190922_205920.jpg', 'Liputan6.com, Bandung Kapten Persib Bandung Supardi Nasir mengakui sempat kecewa dengan keputusan penundaan Shopee Liga 1 2020. Penghentian sementara terjadi di saat tim sudah melakukan persiapan laga keempat melawan PSM Makassar. \"Penundaan kompetisi kita mengikuti yang diatas saja. Walaupun sebenarnya bagi pemain tidak ideal apalagi dengan cukup persiapannya seperti ini,\" ucap Supardi, Kamis (1/10/2020).', '2020/10/03', 3),
(4, 'Jurgen Klopp Khawatir Pemain Liverpool Terpapar Covid-19 Saat Jeda Internasional', 'https://cdn1-production-images-kly.akamaized.net/1YITZmZvEwizS092AJiShhNjEU0=/640x360/smart/filters:quality(75):strip_icc():format(webp)/kly-media-production/medias/2928746/original/095062400_1570065686-AP19275690350415.jpg', 'Liputan6.com, Liverpool - Manajer Liverpool Jurgen Klopp mengaku khawatir melepas para pemainnya yang bakal melakukan tugas internasional di tengah pandemi corona Covid-19. The Reds mencoba untuk mendapatkan kejelasan dari tim nasional para pemain mengenai protokol keselamatan. Pertandingan internasional pada minggu depan membuat segalanya menjadi lebih rumit bagi Liverpool. Klopp mengatakan sulit bagi klub untuk melakukan kontak dengan tim nasional dan mengelola logistik pemain.', '2020/10/03', 4);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `role`) VALUES
(1, 'gefy', 'gefyaqiilah26@gmail.com', 'penulis'),
(2, 'rudi', 'rudi@gmail.com', 'penulis'),
(3, 'jack', 'jack@gmail.com', 'penulis'),
(4, 'ravi', 'ravi@gmail.com', 'penulis');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_news_user` (`user_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `FK_news_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
