-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2023 at 01:12 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ppl`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin1`
--

CREATE TABLE `admin1` (
  `id` int(12) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(50) NOT NULL,
  `nomorhp` varchar(12) NOT NULL,
  `jeniskelamin` varchar(12) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fotoprofil` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin1`
--

INSERT INTO `admin1` (`id`, `nama`, `username`, `email`, `nomorhp`, `jeniskelamin`, `alamat`, `password`, `fotoprofil`) VALUES
(12, 'Adel', 'Adeliawulan282', 'adelwln282@gmail.com', '089536723562', 'Perempuan', 'JL. S. Parman No 39, Jember, Jawa Timur', '$2y$10$bH9GNrXAq5go3sUKkFx2GOcz3OZcHbza3/b8l1lN1TFGMtBQQwr6q', 'profil.png'),
(13, 'Intan', 'Intan123', 'Intan123@gmail.com', '081231908700', 'Perempuan', 'JL. Jawa No 98, Pasuruan Jawa Timur', '$2y$10$BWKewyf9eZ5AkYQG9QFeg.A/dqHZmGP2l79FvAvSj6QhWpqqijWAq', 'profil.png'),
(14, 'Iqbal', 'Iqbal456', 'Iqbal456@gmail.com', '082423516527', 'Laki laki', 'JL. Jawa III No 60, Kediri, Jawa Timur', '$2y$10$3H5Y6jhIn3iN1HECoTdJuO3icse0F0n3.w710oAIZvciLjllCwblG', 'profil.png'),
(15, 'Wawan', 'Wawan132', 'Wawan132@gmail.com', '086543223244', 'Laki laki', 'JL. Sumatra No 76, Jember, Jawa Timur', '$2y$10$61tKJw.kQvSSs40ClfRyr.HSlfZ02G2XrLtb53qCJATRbvAWbwYCK', 'profil.png'),
(16, 'Dimas', 'Dimas321', 'Dimas321@gmail.com', '085131425363', 'Laki laki', 'JL. Bangka No 90, Solo, Jawa Tengah', '$2y$10$rnicv1VzzGjnNb/edCEm6etTvIMISUVwoeqdaZJi7woq7ZXC6ojai', 'profil.png');

-- --------------------------------------------------------

--
-- Stand-in structure for view `admin2`
-- (See below for the actual view)
--
CREATE TABLE `admin2` (
`id` int(12)
,`nama` varchar(255)
,`username` varchar(255)
,`email` varchar(50)
,`nomorhp` varchar(12)
,`jeniskelamin` varchar(12)
,`alamat` varchar(255)
,`password` varchar(255)
,`fotoprofil` varchar(255)
);

-- --------------------------------------------------------

--
-- Table structure for table `komentar`
--

CREATE TABLE `komentar` (
  `id_komentar` int(12) NOT NULL,
  `id_postingan` int(12) NOT NULL,
  `username` varchar(255) NOT NULL,
  `konten` varchar(255) NOT NULL,
  `tanggal` varchar(255) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `komentar`
--

INSERT INTO `komentar` (`id_komentar`, `id_postingan`, `username`, `konten`, `tanggal`, `status`) VALUES
(25, 42, 'Dimas321', 'ini komentar', 'Tuesday, 02 - 05 - 23 ', 'tampil'),
(26, 47, 'Tasya789', 'Terimakasih infonya', 'Tuesday, 02 - 05 - 23 ', 'tampil'),
(28, 47, 'Herman154', 'Kelebihannya apa saja?', 'Tuesday, 02 - 05 - 23 ', 'tampil'),
(29, 46, 'Herman154', 'Apakah itu ampuh?', 'Tuesday, 02 - 05 - 23 ', 'tampil'),
(30, 45, 'Tasya789', 'Kelebihannya apa saja?', 'Tuesday, 02 - 05 - 23 ', 'tampil'),
(31, 49, 'Tasya789', 'Terimakasih', 'Tuesday, 02 - 05 - 23 ', 'tampil'),
(32, 48, 'Didik376', 'Cara ampuh mengatasi', 'Tuesday, 02 - 05 - 23 ', 'tampil');

-- --------------------------------------------------------

--
-- Table structure for table `modul`
--

CREATE TABLE `modul` (
  `id` int(12) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `gambarsampul` varchar(255) NOT NULL,
  `video` varchar(255) NOT NULL,
  `narasumber` varchar(50) NOT NULL,
  `modul` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `modul`
--

INSERT INTO `modul` (`id`, `judul`, `deskripsi`, `gambarsampul`, `video`, `narasumber`, `modul`) VALUES
(26, 'Klasifikasi Hasil Prediksi Panen Padi Berdasarkan Fisiologis Menggunakan Metode Naive Bayes Classification', 'Dalam prediksi hasil panen padi, Perlu keahlian khusus dalam menganalisa hasil prediksi padi menjelang masa panen dengan mempertimbangkan bayak faktor seperti: luas lahan, faktor cuaca, kondisi air, kondisi tanaman padi dan lain-lain.', '6450b7c00a348.jpg', 'https://www.youtube.com/embed/-6UlR4qe8og', 'Rudi Hariyanto', '6450b7fd17434.pdf'),
(27, 'Sistem Prediksi Produktifitas Pertanian Padi Menggunakan Data Mining', 'Prediksi akan melakukan pengolahan data data pendukung dalam peningkatan produktifitas pertanian', '6450ba0fc0fd6.png', 'https://youtube.com/embed/A0d0Dc6zJ0Q', 'S Maesaroh', '645000abaf00c.pdf'),
(28, 'Kadar vitamin C buah tomat (Lycopersicum esculentum Mill) tiap fase kematangan berdasar hari setelah tanam', 'Vitamin C pada tiap fase kematangan buah yang diukur berdasar hari setelah tanam sebagai acuan waktu panen', '6450bb8bd0c8c.jpg', 'https://youtube.com/embed/0qtebFbt6GM', 'E Kurniawati', '645000f828237.pdf'),
(29, 'Pengaruh aplikasi asam humat dan pupuk npk terhadap serapan nitrogen, pertumbuhan tanaman padi di lahan sawah', 'Perlakuan pemberian asam humat dan pupuk NPK Phonska 15-15-15 dapat meningkatkan serapan nitrogen pada tanaman padi pada umur 4 MST dan 7 MST, pertumbuhan vegetative tanaman, residu nitrogen dalam tanah, pH tanah, dan C-organik tanah', '6450baf36b409.jpg', 'https://youtube.com/embed/28Eo_Xm8LYg', 'Y Nuraini', '6450018c8b339.pdf'),
(30, 'Efisiensi penggunaan pupuk–N untuk pengurangan kehilangan nitrat pada lahan pertanian', 'pada usaha pertanian dan untuk mengurangi tingkat pencemaran nitrat di lingkungan. Efisiensi penggunaan pupuk tersebut membantu terwujudnya pertanian yang berkelanjutan', '6450bb4430965.png', 'https://youtube.com/embed/-6UlR4qe8og', 'A Triyono', '');

-- --------------------------------------------------------

--
-- Table structure for table `petani`
--

CREATE TABLE `petani` (
  `id` int(12) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `nomorhp` varchar(12) NOT NULL,
  `jeniskelamin` varchar(12) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` varchar(25) NOT NULL,
  `fotoprofil` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `petani`
--

INSERT INTO `petani` (`id`, `nama`, `username`, `email`, `nomorhp`, `jeniskelamin`, `alamat`, `password`, `status`, `fotoprofil`) VALUES
(20, 'Sugiarto', 'Sugiarto121', 'Sugiarto121@gmail.com', '089536724566', 'Laki laki', 'JL. S. Parman No 23, Blitar, Jawa Timur', '$2y$10$fHsligjPYP/MXayaFLy4u.cieSuuLXc9KCR5ReR0NJ7QKgiGA74ga', 'Aktif', 'profil.png'),
(21, 'Didik', 'Didik376', 'Didik376@gmail.com', '081231907656', 'Laki laki', 'JL. Jawa IV No 80, Pasuruan, Jawa Timur', '$2y$10$sFHWASPpqOyPwsOYMaJ7/OLBU/tSBZQdsqVhaA6wI.bznlTxv7LUW', 'Tidak Aktif', 'profil.png'),
(22, 'Wati', 'Wati789', 'Wati789@gmail.com', '082423212334', 'Perempuan', 'JL. Jawa I No 61, Bandung, Jawa Tengah', '$2y$10$Jx1qmE8JLKn2.T6Tt/SfmemtegmVB1MPoxn8XrLeINbdlvR6BWVQu', 'Tidak Aktif', 'profil.png'),
(23, 'Deni', 'Deni567', 'Deni567@gmail.com', '087899765432', 'Laki laki', 'JL. Sumatra No 42, Jember, Jawa Timur', '$2y$10$82k1CB/2mK.AanfFdqZEv.8nHhh8lnRLtTRnJjTCHWiXe1.7EyW/2', 'Aktif', 'profil.png'),
(24, 'Hendra', 'Hendra154', 'Hendra@gmail.com', '087644322445', 'Laki laki', 'JL. S. Parman No 50, Solo, Jawa Tengah', '$2y$10$NIaEjoutg6BoR.gFYjy/nOzxby/C7pHanNLXQ1qo40KNyOOP7Duyq', 'Aktif', 'profil.png');

-- --------------------------------------------------------

--
-- Stand-in structure for view `petani2`
-- (See below for the actual view)
--
CREATE TABLE `petani2` (
`id` int(12)
,`nama` varchar(50)
,`username` varchar(255)
,`email` varchar(255)
,`nomorhp` varchar(12)
,`jeniskelamin` varchar(12)
,`alamat` varchar(255)
,`password` varchar(255)
,`status` varchar(25)
,`fotoprofil` varchar(255)
);

-- --------------------------------------------------------

--
-- Table structure for table `postingan`
--

CREATE TABLE `postingan` (
  `id` int(12) NOT NULL,
  `username` varchar(50) NOT NULL,
  `konten` varchar(255) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `tanggaldibuat` varchar(255) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `postingan`
--

INSERT INTO `postingan` (`id`, `username`, `konten`, `gambar`, `tanggaldibuat`, `status`) VALUES
(45, 'Herman154', 'Obat tanaman terbaru dari kami', '6450bf7ee8a10.jpg', 'Tuesday, 02 - 05 - 23 ', 'tampil'),
(46, 'Wati789', 'Berbagi solusi', '6450c05f0d85a.jpg', 'Tuesday, 02 - 05 - 23 ', 'tampil'),
(47, 'Wiwik121', 'Vitamin rekomendasi untuk padi', '6450c230b613d.jpeg', 'Tuesday, 02 - 05 - 23 ', 'tampil'),
(48, 'Didik376', 'Penyebabnya bisa beberapa faktor tersebut', '6450c2a893952.jpg', 'Tuesday, 02 - 05 - 23 ', 'tampil'),
(49, 'Tasya789', 'Vitamin rekomendasi untuk panen muda', '6450c2ffdf283.jpg', 'Tuesday, 02 - 05 - 23 ', 'tampil');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(12) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `perusahaan` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `tanggallahir` varchar(50) NOT NULL,
  `nomorhp` varchar(12) NOT NULL,
  `jeniskelamin` varchar(50) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fotoprofil` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `nama`, `username`, `perusahaan`, `email`, `tanggallahir`, `nomorhp`, `jeniskelamin`, `alamat`, `password`, `fotoprofil`) VALUES
(4, 'Wiwik', 'Wiwik121', 'PT Inti Makmur', 'Wiwik121@gmail.com', '01/07/1990', '089536724566', 'Perempuan', 'JL. S. Parman No 21, Jember, Jawa Timur', '$2y$10$dublclaqKIButwRiCHzB2.3mIYskbmJbiMX/yq27afXi.BzOT5IwO', 'profil.png'),
(5, 'Sabar', 'Sabar376', 'PT Delima', 'Intan123@gmail.com', '02/07/1990', '081231907656', 'Laki laki', 'JL. Jawa IV No 80, Solo, Jawa Tengah', '$2y$10$ZZwVMcIrY743nvD9/JpoCuyf8laWY6gtwec14ziR9Tw0OYu4Ufv2q', 'profil.png'),
(6, 'Tasya', 'Tasya789', 'PT Citra', 'Tasya789@gmail.com', '03/07/1990', '082423212334', 'Perempuan', 'JL. Jawa I No 61, Probolinggo, Jawa Timur', '$2y$10$EUMaIZVbyPRzUCo2nywgLuDIqXLEsJ0zGb33.xlfT4zrata6c/jgi', 'profil.png'),
(7, 'Ahmad', 'Ahmad567', 'PT Putra', 'Ahmad567@gmail.com', '04/07/1990', '087899765432', 'Laki laki', 'JL. Sumatra No 42, Blitar, Jawa Timur', '$2y$10$tG4l1cBsIWN5UXwurft4detDtESryuShUPwuzMrFTwRZwXg3NYzaK', 'profil.png'),
(8, 'Herman', 'Herman154', 'PT Sejahtera', 'Herman154@gmail.com', '05/07/1990', '087644322445', 'Laki laki', 'JL. S. Parman No 50, Bandung, Jawa Tengah', '$2y$10$FqTk0UfE9Oo6V7XJLAyPo.FXNXncxX9e8i11X9nCMwtCFRjEjVo5G', 'profil.png');

-- --------------------------------------------------------

--
-- Stand-in structure for view `sales2`
-- (See below for the actual view)
--
CREATE TABLE `sales2` (
`id` int(12)
,`nama` varchar(255)
,`username` varchar(255)
,`perusahaan` varchar(255)
,`email` varchar(255)
,`tanggallahir` varchar(50)
,`nomorhp` varchar(12)
,`jeniskelamin` varchar(50)
,`alamat` varchar(255)
,`password` varchar(255)
,`fotoprofil` varchar(255)
);

-- --------------------------------------------------------

--
-- Structure for view `admin2`
--
DROP TABLE IF EXISTS `admin2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `admin2`  AS SELECT `admin1`.`id` AS `id`, `admin1`.`nama` AS `nama`, `admin1`.`username` AS `username`, `admin1`.`email` AS `email`, `admin1`.`nomorhp` AS `nomorhp`, `admin1`.`jeniskelamin` AS `jeniskelamin`, `admin1`.`alamat` AS `alamat`, `admin1`.`password` AS `password`, `admin1`.`fotoprofil` AS `fotoprofil` FROM `admin1` ;

-- --------------------------------------------------------

--
-- Structure for view `petani2`
--
DROP TABLE IF EXISTS `petani2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `petani2`  AS SELECT `petani`.`id` AS `id`, `petani`.`nama` AS `nama`, `petani`.`username` AS `username`, `petani`.`email` AS `email`, `petani`.`nomorhp` AS `nomorhp`, `petani`.`jeniskelamin` AS `jeniskelamin`, `petani`.`alamat` AS `alamat`, `petani`.`password` AS `password`, `petani`.`status` AS `status`, `petani`.`fotoprofil` AS `fotoprofil` FROM `petani` ;

-- --------------------------------------------------------

--
-- Structure for view `sales2`
--
DROP TABLE IF EXISTS `sales2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `sales2`  AS SELECT `sales`.`id` AS `id`, `sales`.`nama` AS `nama`, `sales`.`username` AS `username`, `sales`.`perusahaan` AS `perusahaan`, `sales`.`email` AS `email`, `sales`.`tanggallahir` AS `tanggallahir`, `sales`.`nomorhp` AS `nomorhp`, `sales`.`jeniskelamin` AS `jeniskelamin`, `sales`.`alamat` AS `alamat`, `sales`.`password` AS `password`, `sales`.`fotoprofil` AS `fotoprofil` FROM `sales` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin1`
--
ALTER TABLE `admin1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id_komentar`);

--
-- Indexes for table `modul`
--
ALTER TABLE `modul`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `petani`
--
ALTER TABLE `petani`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `postingan`
--
ALTER TABLE `postingan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin1`
--
ALTER TABLE `admin1`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id_komentar` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `modul`
--
ALTER TABLE `modul`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `petani`
--
ALTER TABLE `petani`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `postingan`
--
ALTER TABLE `postingan`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
