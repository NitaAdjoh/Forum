-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 04, 2018 at 12:05 PM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `forumdiskusi`
--

-- --------------------------------------------------------

--
-- Table structure for table `balas`
--

CREATE TABLE IF NOT EXISTS `balas` (
  `id_balas` int(255) NOT NULL,
  `id` int(255) NOT NULL,
  `komentar` text NOT NULL,
  `idu` int(255) NOT NULL,
  `date2` text NOT NULL,
  `id_kategori` int(10) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=63 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `balas`
--

INSERT INTO `balas` (`id_balas`, `id`, `komentar`, `idu`, `date2`, `id_kategori`) VALUES
(25, 26, 'wah, dicoba dulua om!!', 0, '02/04/2012', 0),
(26, 21, 'thanks gan buat infonya!!', 0, '02/04/2012', 0),
(20, 20, 'wah keren banget om makasih infonya..', 0, '25/03/2012', 0),
(30, 35, 'Ga..nyantai aja gan!!', 0, '29/05/2012', 0),
(31, 28, 'manstab gan!!!', 0, '31/05/2012', 0),
(48, 36, '<p>Masa</p>', 0, '07/04/2014', 7),
(50, 36, '<p>eaa</p>', 0, '09/04/2014', 7),
(51, 36, '<p>wew ah&nbsp;<img title="Kiss" src="js/tiny_mce/plugins/emotions/img/smiley-kiss.gif" alt="Kiss" border="0" /></p>', 0, '09/04/2014', 7),
(52, 61, '<p>sadasdasdauiiolskuo</p>', 0, '10/04/2014', 7),
(53, 61, '<p>wew ah</p>', 0, '11/04/2014', 7),
(54, 53, '<p><span class="bold">pusing banget jib<img title="Yell" src="js/tiny_mce/plugins/emotions/img/smiley-yell.gif" alt="Yell" border="0" />&nbsp;<del>aduh</del></span></p>', 0, '12/04/2014', 8),
(55, 63, '<p>Mantaaaap Lanjutkan&nbsp;<img title="Laughing" src="js/tiny_mce/plugins/emotions/img/smiley-laughing.gif" alt="Laughing" border="0" /></p>', 2, '15/04/2014', 7),
(56, 64, '<p>Like Dah mantap pokoknya harus dilanjutkan min :D jadi kan nantinya kejaga ya wkwkwwk aduh maaf nih komentarnya panjang banget wkwkwk&nbsp;<img title="Laughing" src="js/tiny_mce/plugins/emotions/img/smiley-laughing.gif" alt="Laughing" border="0" /></p>', 2, '22/04/2014', 7),
(57, 64, '<p>wew ah ahahhaay</p>', 4, '22/04/2014', 7),
(58, 64, '<p>hehe&nbsp;<img title="Tongue Out" src="js/tiny_mce/plugins/emotions/img/smiley-tongue-out.gif" alt="Tongue Out" border="0" /></p>', 2, '04/05/2014', 7),
(60, 78, '<p>OOwh gitu ya&nbsp;<img title="Sealed" src="js/tiny_mce/plugins/emotions/img/smiley-sealed.gif" alt="Sealed" border="0" /><br /><br /><br /><br /><del>GANI</del></p>', 2, '04/05/2014', 7),
(61, 101, '<p>ih postingannya bagus</p>', 13, '24/05/2017', 1),
(62, 101, '<p>makasih</p>', 12, '24/05/2017', 1);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE IF NOT EXISTS `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(100) NOT NULL,
  `detail` longtext NOT NULL,
  `datetime` varchar(25) NOT NULL,
  `lihat` int(4) NOT NULL,
  `type` varchar(20) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=102 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `detail`, `datetime`, `lihat`, `type`) VALUES
(1, ' Pemrograman HTML', 'HyperText Markup Language', '16/04/2017', 88, 'WEB_PROGRAMING'),
(2, 'Pemrograman PHP', 'Hypertext Preprocessor', '26/02/2017', 88, 'WEB_PROGRAMING'),
(3, 'Pemrograman ASP', 'Active Server Pages', '27/02/2017', 29, 'WEB_PROGRAMING'),
(4, 'Pemrograman XML', 'Extensible Markup Language', '27/02/2017', 18, 'WEB_PROGRAMING'),
(7, 'Pemrograman WML', 'Wireless Markup Language', '28/02/2017', 976, 'WEB_PROGRAMING'),
(8, 'Pemrograman PERL', 'Practical Extraction and Report Language', '28/02/2017', 44, 'WEB_PROGRAMING'),
(9, ' Pemrograman CFM', 'Tag ColdFusion dengan software Adobe ColdFusion / BlueDragon / Coldfusion Studio', '29/02/2017', 44, 'WEB_PROGRAMING'),
(85, 'Pemrograman Javascript', 'bahasa scripting yang handal yang berjalan pada sisi client', '04/03/2017', 0, 'WEB_PROGRAMING'),
(11, 'Pemrograman CSS', 'Cascading Style Sheets', '29/02/2017', 19, 'WEB_PROGRAMING'),
(13, 'J2SE (Standard Edition) ', 'Aplikasi berbasis desktop', '17/03/2017', 22, 'JAVA_PROGRAMING'),
(29, 'J2EE (Enterprise Edition) ', 'Mengembangkan enterprise aplikasi multitier berbasis komponen', '15/04/2017', 3, 'JAVA_PROGRAMING'),
(86, 'JRE (Java Runtime Environment)', 'Plug-in, yang memungkinkan menjalankan applet di browser populer dan Java Web Start', '04/05/2017', 52, 'JAVA_PROGRAMING'),
(89, 'JDK (Java Development Kit)', 'JDK merupakan superset dari JRE', '05/01/2017', 0, 'JAVA_PROGRAMING'),
(90, 'JSP (Java Server Pages)', 'Teknologi web berbasis bahasa pemrograman Java ', '09/03/2017', 0, 'JAVA_PROGRAMING'),
(91, 'JVM (Java Virtual Machine)', 'Mesin imajiner (maya) yang bekerja dengan menyerupai aplikasi pada sebuah mesin nyata', '04/01/2017', 0, 'JAVA_PROGRAMING'),
(92, 'Eclipse', 'Eclipse tidak terlalu susah, anda cukup memfamiliarkan interface dan layoutnya saja', '08/02/2017', 0, 'ANROID_PROGRAMING'),
(93, 'XML', 'Webservice, Konfigurasi, Layout', '02/02/2017', 0, 'ANROID_PROGRAMING'),
(94, 'JAVA', 'Konsep seperti Class, Package, access modifier(public/prifat)', '02/03/2017', 0, 'ANROID PROGRAMING'),
(95, 'SQLite', 'Android menyimpan data data konfigurasi, data user dan data aplikasi di SQLite', '01/01/2017', 0, 'ANROID_PROGRAMING'),
(96, 'JSON', 'mengirim data dari webservice ke android', '06/03/2017', 0, 'ANROID_PROGRAMING'),
(97, 'LAN', 'Local Area Network ', '02/03/2017', 0, 'JARINGAN_KOMPUTER'),
(98, 'MAN', 'Metropolitant Area Network', '09/03/2017', 0, 'JARINGAN_KOMPUTER'),
(99, 'WAN', 'Wide Area Network', '28/04//2017', 0, 'JARINGAN_KOMPUTER'),
(100, 'Perkembangan Teknologi', 'Berbagai Informasi IT', '02/05/2017', 0, 'UMUM'),
(101, 'ISUE Teknologi', '', '02/05/2017', 0, 'UMUM');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE IF NOT EXISTS `post` (
  `id` int(255) NOT NULL,
  `id_kategori` int(10) NOT NULL,
  `idu` int(255) NOT NULL,
  `judul` text NOT NULL,
  `posting` text NOT NULL,
  `lihat2` int(8) NOT NULL,
  `date` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=102 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `idu` int(11) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(300) NOT NULL,
  `nope` varchar(20) NOT NULL,
  `tanggal` text NOT NULL,
  `web` varchar(100) NOT NULL,
  `avatar` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `jml_posting` int(6) NOT NULL,
  `jabat` varchar(50) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`idu`, `nama`, `email`, `password`, `nope`, `tanggal`, `web`, `avatar`, `jml_posting`, `jabat`) VALUES
(2, 'nita dwi f', 'nita@gmail.com', 'admin', '08676565', '', '', '', 0, 'Admin'),
(12, 'Nita Adjoh', 'nitadwifitriani.12ra@gmail.com', 'ee11cbb19052e40b07aac0ca060c23ee', '0876765678987', '03/05/2017', 'nitaadjoh@gmail.com', 'css/images/avatar/C360_2016-10-02-15-36-47-805.jpg', 1, 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `balas`
--
ALTER TABLE `balas`
  ADD PRIMARY KEY (`id_balas`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`idu`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `balas`
--
ALTER TABLE `balas`
  MODIFY `id_balas` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=63;
--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=102;
--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=102;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `idu` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
