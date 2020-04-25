-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2020 at 06:04 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `daftar_sekolah`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
`id` int(11) NOT NULL,
  `nama_admin` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `nama_admin`, `password`) VALUES
(4, 'dino', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Table structure for table `data_orangtua`
--

CREATE TABLE IF NOT EXISTS `data_orangtua` (
`id` int(11) NOT NULL,
  `nama_pendaftar` varchar(100) NOT NULL,
  `id_pendaftar` int(11) NOT NULL,
  `nama_ayah` varchar(100) NOT NULL,
  `nama_ibu` varchar(100) NOT NULL,
  `nama_wali` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `provinsi` varchar(100) NOT NULL,
  `kota` varchar(100) NOT NULL,
  `kecamatan` varchar(100) NOT NULL,
  `kodepos` varchar(100) NOT NULL,
  `nohp` varchar(15) NOT NULL,
  `email_ortu` varchar(100) NOT NULL,
  `pendidikan_ayah` varchar(100) NOT NULL,
  `pendidikan_ibu` varchar(100) NOT NULL,
  `pekerjaan_ayah` varchar(100) NOT NULL,
  `pekerjaan_ibu` varchar(100) NOT NULL,
  `penghasilan_ortu` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_orangtua`
--

INSERT INTO `data_orangtua` (`id`, `nama_pendaftar`, `id_pendaftar`, `nama_ayah`, `nama_ibu`, `nama_wali`, `alamat`, `provinsi`, `kota`, `kecamatan`, `kodepos`, `nohp`, `email_ortu`, `pendidikan_ayah`, `pendidikan_ibu`, `pekerjaan_ayah`, `pekerjaan_ibu`, `penghasilan_ortu`) VALUES
(1, 'Siti Nurhayati', 2, 'bapa', 'ibu', 'sodara', 'Jakarta', 'jakarata', 'jakarta utara', 'papanggo', '11230', '098764327527', 'arthamandiri.am@gmail.com', 'sd', 'sd', 'swasta', 'swasta', 'under 1jt'),
(2, 'Dinosaur', 3, 'bapa', 'ibu', 'saiya', 'Bogor', 'jawabarat', 'Bogor utara', 'sindang sari', '22301', '12345678', '', 'sd', 's1', 'wirausaha', 'wirausaha', 'under 1jt');

-- --------------------------------------------------------

--
-- Table structure for table `dokumen`
--

CREATE TABLE IF NOT EXISTS `dokumen` (
`id` int(11) NOT NULL,
  `id_pendaftar` int(11) NOT NULL,
  `nama_pendaftar` varchar(100) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `ktp` varchar(100) NOT NULL,
  `akte` varchar(100) NOT NULL,
  `ijazah` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dokumen`
--

INSERT INTO `dokumen` (`id`, `id_pendaftar`, `nama_pendaftar`, `foto`, `ktp`, `akte`, `ijazah`) VALUES
(4, 3, 'Dinosaur', 'img/dokumen/foto/1.PNG', 'img/dokumen/ktp/2.PNG', 'img/dokumen/akte/3.PNG', 'img/dokumen/ijazah/4.PNG'),
(5, 2, 'Siti Nurhayati', 'img/dokumen/foto/4.PNG', 'img/dokumen/ktp/3.PNG', 'img/dokumen/akte/2.PNG', 'img/dokumen/ijazah/1.PNG');

-- --------------------------------------------------------

--
-- Table structure for table `formulir_mhs`
--

CREATE TABLE IF NOT EXISTS `formulir_mhs` (
`id` int(11) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `tempat_lahir` varchar(100) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `agama` varchar(20) NOT NULL,
  `berat_badan` varchar(10) NOT NULL,
  `tinggi_badan` varchar(10) NOT NULL,
  `goldarah` varchar(10) NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `alamat` text NOT NULL,
  `provinsi` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `tgl_daftar` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `formulir_mhs`
--

INSERT INTO `formulir_mhs` (`id`, `nama_lengkap`, `tempat_lahir`, `tgl_lahir`, `jenis_kelamin`, `agama`, `berat_badan`, `tinggi_badan`, `goldarah`, `no_hp`, `alamat`, `provinsi`, `email`, `tgl_daftar`) VALUES
(2, 'Siti Nurhayati', 'Jakarta', '2024-04-20', 'perempuan', 'islam', '12 KG', '167 CM', 'a', '0987654321', 'jakarta', 'jakarata', 'nsiti7621@gmail.com', '240420'),
(3, 'Dinosaur', 'Bekasi', '2024-04-20', 'laki-laki', 'islam', '25 KG', '150 Cm', 'A', '085811667903', 'Jakarta', 'jawabarat', 'cahyono05.yono@gmail.com', '240420');

-- --------------------------------------------------------

--
-- Table structure for table `pendidikan`
--

CREATE TABLE IF NOT EXISTS `pendidikan` (
`id` int(11) NOT NULL,
  `nama_pendaftar` varchar(100) NOT NULL,
  `id_pendaftar` int(11) NOT NULL,
  `status_slta` varchar(100) NOT NULL,
  `kota` varchar(100) NOT NULL,
  `kecamatan` varchar(100) NOT NULL,
  `kode_pos` varchar(10) NOT NULL,
  `nama_slta` varchar(100) NOT NULL,
  `no_ijazah` varchar(100) NOT NULL,
  `tahun lulus` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pendidikan`
--

INSERT INTO `pendidikan` (`id`, `nama_pendaftar`, `id_pendaftar`, `status_slta`, `kota`, `kecamatan`, `kode_pos`, `nama_slta`, `no_ijazah`, `tahun lulus`) VALUES
(1, 'Siti Nurhayati', 2, 'negeri', 'jakarta utara', 'papanggo', '11230', 'saiya', '12345678', '2019'),
(2, 'Dinosaur', 3, 'negeri', 'Bogor utara', 'sindang sari', '22301', 'apaan', '45678712', '2018');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_orangtua`
--
ALTER TABLE `data_orangtua`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dokumen`
--
ALTER TABLE `dokumen`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `formulir_mhs`
--
ALTER TABLE `formulir_mhs`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pendidikan`
--
ALTER TABLE `pendidikan`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `data_orangtua`
--
ALTER TABLE `data_orangtua`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `dokumen`
--
ALTER TABLE `dokumen`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `formulir_mhs`
--
ALTER TABLE `formulir_mhs`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `pendidikan`
--
ALTER TABLE `pendidikan`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
