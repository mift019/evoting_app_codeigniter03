-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 06, 2020 at 10:12 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci_evoting`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_pemilih`
--

CREATE TABLE `data_pemilih` (
  `id` int(9) NOT NULL,
  `nis` varchar(9) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `kelas` varchar(20) NOT NULL,
  `idkelas` varchar(9) NOT NULL,
  `jk` varchar(1) NOT NULL,
  `status` varchar(50) NOT NULL,
  `aktif` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_pemilih`
--

INSERT INTO `data_pemilih` (`id`, `nis`, `username`, `password`, `nama`, `kelas`, `idkelas`, `jk`, `status`, `aktif`) VALUES
(24, '14116078', '14116078', '14116078', 'Miftakhul Aziz', '10 BB', '57', 'L', 'Sudah Memilih', 1),
(25, '14116189', '14116189', '14116189', 'Ismail Adnan', '10 BB', '57', 'L', 'Sudah Memilih', 1);

-- --------------------------------------------------------

--
-- Table structure for table `data_pemilihan`
--

CREATE TABLE `data_pemilihan` (
  `idpemilihan` int(9) NOT NULL,
  `tipe` varchar(9) NOT NULL,
  `idpemilih` varchar(9) NOT NULL,
  `idkandidat` varchar(9) NOT NULL,
  `waktu` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_pemilihan`
--

INSERT INTO `data_pemilihan` (`idpemilihan`, `tipe`, `idpemilih`, `idkandidat`, `waktu`) VALUES
(6, 'siswa', '24', '8', '2020-07-05 12:01:14.659666'),
(7, 'siswa', '25', '9', '2020-07-05 17:11:00.661656');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'members', 'General User');

-- --------------------------------------------------------

--
-- Table structure for table `import`
--

CREATE TABLE `import` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `dob` varchar(20) NOT NULL,
  `contact_no` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kandidat`
--

CREATE TABLE `kandidat` (
  `idkandidat` int(9) NOT NULL,
  `organisasi` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `nourut` varchar(9) NOT NULL,
  `jumlahsuara` varchar(9) NOT NULL,
  `visi` text NOT NULL,
  `misi` text NOT NULL,
  `foto` varchar(50) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kandidat`
--

INSERT INTO `kandidat` (`idkandidat`, `organisasi`, `nama`, `nourut`, `jumlahsuara`, `visi`, `misi`, `foto`, `status`) VALUES
(6, 'OSIS', 'HMIF ITB', '01', '0', '<p>OSMANSA</p>', '<p>OSMANSA</p>', 'walpaper_02.jpg', '1'),
(8, 'OSIS', 'Himatemia UNILA', '03', '1', '<p>Menjadi Manusia Sukses<br></p>', '<p>Mantap Jiwa<br></p>', 'walpaper_012.jpg', '1'),
(9, 'OSIS', 'HMIF ITERA', '02', '1', '<p>a<br></p>', '<p>s<br></p>', 'walpaper_04.jpg', '1');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `idkelas` int(9) NOT NULL,
  `kelas` varchar(50) NOT NULL,
  `jumlah` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`idkelas`, `kelas`, `jumlah`) VALUES
(1, '10 IPA 1', 36),
(2, '10 IPA 2', 36),
(3, '10 IPA 3', 36),
(4, '10 BB', 36),
(5, '11 IPA 1', 36),
(6, '11 BB', 36),
(7, '11 IPA 5', 36),
(8, '11 IPA 4', 36),
(9, '11 IPA 3', 36),
(10, '11 IPA 2', 36),
(11, '11 IPA 6', 36),
(12, '11 IPA 7', 36),
(13, '11 IPS 1', 36),
(14, '11 IPS 2', 36),
(15, '11 IPS 3', 36),
(16, '11 IPS 4', 36),
(17, '12 IPA 1', 36),
(18, '12 IPA 2', 36),
(19, '12 IPA 3', 36),
(20, '12 IPA 4', 36),
(21, '12 IPA 5', 36),
(22, '12 IPA 6', 36),
(24, '12 IPA 7', 36),
(25, '12 IPS 1', 36),
(26, '12 IPS 2', 36),
(27, '12 IPS 3', 36),
(28, '12 IPS 4', 36),
(29, '12 BB', 36),
(30, '12 IPS 4', 36),
(31, '12 IPS 3', 36),
(32, '12 IPS 2', 36),
(33, '12 IPS 1', 36),
(34, '12 IPA 7', 36),
(35, '12 IPA 6', 36),
(36, '12 IPA 5', 36),
(37, '12 IPA 4', 36),
(38, '12 IPA 3', 36),
(39, '12 IPA 2', 36),
(40, '12 IPA 1', 36),
(41, '12 BB', 36),
(42, '11 IPS 4', 36),
(43, '11 IPS 3', 36),
(44, '11 IPS 2', 36),
(45, '11 IPS 1', 36),
(46, '11 IPA 7', 36),
(47, '11 IPA 6', 36),
(48, '11 IPA 5', 36),
(49, '11 IPA 4', 36),
(50, '11 IPA 3', 36),
(51, '11 IPA 2', 36),
(52, '11 IPA 1', 36),
(53, '11 BB', 36),
(54, '10 IPA 3', 36),
(55, '10 IPA 2', 36),
(56, '10 IPA 1', 36),
(57, '10 BB', 36);

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `login_attempts`
--

INSERT INTO `login_attempts` (`id`, `ip_address`, `login`, `time`) VALUES
(12, '::1', 'administrator', 1593887192),
(13, '::1', 'admin1', 1593887241),
(14, '::1', 'admin1', 1593887251),
(15, '::1', 'admin1', 1593887274);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(32) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `penyelenggara` text NOT NULL,
  `tps` text NOT NULL,
  `provinsi` text NOT NULL,
  `kota` text NOT NULL,
  `kecamatan` text NOT NULL,
  `kelurahan` text NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `timestamp`, `penyelenggara`, `tps`, `provinsi`, `kota`, `kecamatan`, `kelurahan`, `alamat`) VALUES
(1, '2019-12-03 19:35:11', 'E-Voting HIMATEMIA UNILA', '01', 'Jawa Tengah', 'Surakarta', 'Kartasura', 'Pabelan', 'UMS Secretariat, Main Building Siti Walidah UMS, Jl. A. Yani No.284, Pabelan, Kartasura, Kota Surakarta, Jawa Tengah 57162');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(254) NOT NULL,
  `activation_selector` varchar(255) DEFAULT NULL,
  `activation_code` varchar(255) DEFAULT NULL,
  `forgotten_password_selector` varchar(255) DEFAULT NULL,
  `forgotten_password_code` varchar(255) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_selector` varchar(255) DEFAULT NULL,
  `remember_code` varchar(255) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `email`, `activation_selector`, `activation_code`, `forgotten_password_selector`, `forgotten_password_code`, `forgotten_password_time`, `remember_selector`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`) VALUES
(1, '127.0.0.1', 'administrator', '$2y$12$d88xj0WgEOmJTcoe34Vao.aSEsdFWzk4c8HauQN3ZzFUHR5AnwlrC', 'admin@admin.com', NULL, NULL, NULL, NULL, NULL, '163402dcbda46eae8a5c892f7f47a0eda6c5453f', '$2y$10$DeGsvPIkiIkJ2fuHsu.npe8U2H0cZFqHuwURfntOzWtnyMj0FESzi', 1268889823, 1593969082, 1, 'Administrator', '', 'ADMIN', '0');

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE `users_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(8, 1, 1),
(9, 1, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_pemilih`
--
ALTER TABLE `data_pemilih`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_pemilihan`
--
ALTER TABLE `data_pemilihan`
  ADD PRIMARY KEY (`idpemilihan`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `import`
--
ALTER TABLE `import`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kandidat`
--
ALTER TABLE `kandidat`
  ADD PRIMARY KEY (`idkandidat`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`idkelas`);

--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_email` (`email`),
  ADD UNIQUE KEY `uc_activation_selector` (`activation_selector`),
  ADD UNIQUE KEY `uc_forgotten_password_selector` (`forgotten_password_selector`),
  ADD UNIQUE KEY `uc_remember_selector` (`remember_selector`);

--
-- Indexes for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  ADD KEY `fk_users_groups_users1_idx` (`user_id`),
  ADD KEY `fk_users_groups_groups1_idx` (`group_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_pemilih`
--
ALTER TABLE `data_pemilih`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `data_pemilihan`
--
ALTER TABLE `data_pemilihan`
  MODIFY `idpemilihan` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `import`
--
ALTER TABLE `import`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kandidat`
--
ALTER TABLE `kandidat`
  MODIFY `idkandidat` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `idkelas` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
