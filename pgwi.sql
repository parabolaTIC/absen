-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2016 at 07:05 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `pgwi`
--

-- --------------------------------------------------------

--
-- Table structure for table `absensi`
--

CREATE TABLE IF NOT EXISTS `absensi` (
  `id_absensi` int(10) NOT NULL AUTO_INCREMENT,
  `nip` varchar(10) NOT NULL,
  `tanggal_absen` date NOT NULL,
  `jam_masuk` time NOT NULL,
  `jam_keluar` time NOT NULL,
  `status_masuk` enum('Y','N') NOT NULL DEFAULT 'N',
  `status_keluar` enum('Y','N') NOT NULL DEFAULT 'N',
  `ket` char(2) NOT NULL DEFAULT 'NA',
  `terlambat` enum('Y','N') NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id_absensi`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=53 ;

--
-- Dumping data for table `absensi`
--

INSERT INTO `absensi` (`id_absensi`, `nip`, `tanggal_absen`, `jam_masuk`, `jam_keluar`, `status_masuk`, `status_keluar`, `ket`, `terlambat`) VALUES
(39, '1234', '2013-01-15', '03:28:26', '00:00:00', 'N', 'N', 'I', 'N'),
(37, '1234', '2013-01-16', '03:22:16', '03:22:26', 'Y', 'Y', 'M', 'Y'),
(40, '1234', '2013-01-14', '03:31:50', '00:00:00', 'N', 'N', 'S', 'N'),
(41, '1234', '2013-01-13', '03:32:39', '03:32:55', 'Y', 'Y', 'M', 'N'),
(42, '1234', '2013-01-12', '03:39:01', '03:39:15', 'Y', 'Y', 'M', 'N'),
(43, '1234', '2013-01-11', '03:53:54', '03:54:23', 'Y', 'Y', 'M', 'N'),
(44, '1234', '2016-06-17', '19:41:23', '20:06:35', 'Y', 'Y', 'M', 'Y'),
(45, 'K3001', '2016-06-17', '20:00:19', '00:00:00', 'N', 'N', 'S', 'N'),
(46, 'K3001', '2016-06-19', '12:57:17', '12:57:39', 'Y', 'Y', 'M', 'Y'),
(47, 'K3002', '2016-06-19', '13:42:54', '13:43:16', 'Y', 'Y', 'M', 'Y'),
(48, 'K3004', '2016-06-19', '14:28:25', '14:29:24', 'Y', 'Y', 'M', 'Y'),
(49, 'P001', '2016-06-19', '14:37:44', '14:40:13', 'Y', 'Y', 'M', 'Y'),
(50, 'P002', '2016-06-19', '14:41:59', '00:00:00', 'N', 'N', 'I', 'N'),
(51, 'P003', '2016-06-19', '14:44:15', '00:00:00', 'N', 'N', 'S', 'N'),
(52, 'P004', '2016-06-19', '14:47:47', '14:49:02', 'Y', 'Y', 'M', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `bagian`
--

CREATE TABLE IF NOT EXISTS `bagian` (
  `id_bag` varchar(4) NOT NULL,
  `n_bag` varchar(25) NOT NULL,
  PRIMARY KEY (`id_bag`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bagian`
--

INSERT INTO `bagian` (`id_bag`, `n_bag`) VALUES
('B001', 'Kasir'),
('B002', 'Gudang');

-- --------------------------------------------------------

--
-- Table structure for table `h_jabatan`
--

CREATE TABLE IF NOT EXISTS `h_jabatan` (
  `idh` int(11) NOT NULL AUTO_INCREMENT,
  `idkjb` varchar(4) NOT NULL,
  `jab_old` varchar(20) NOT NULL,
  `tgl_ajb` date NOT NULL,
  `jabatan_baru` varchar(20) NOT NULL,
  `tgl_kjb` date NOT NULL,
  PRIMARY KEY (`idh`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `h_jabatan`
--

INSERT INTO `h_jabatan` (`idh`, `idkjb`, `jab_old`, `tgl_ajb`, `jabatan_baru`, `tgl_kjb`) VALUES
(10, 'KJ01', 'Rekom', '2009-01-16', 'Kepala Rekom', '2013-01-16'),
(11, 'KJ01', 'Kepala Rekom', '2009-01-16', 'Mgr.Rekom', '2013-01-16'),
(13, 'KJ02', 'Pegawai', '2012-01-14', 'Mgr.Pegawai', '2016-06-17');

-- --------------------------------------------------------

--
-- Table structure for table `jabatan`
--

CREATE TABLE IF NOT EXISTS `jabatan` (
  `id_jab` varchar(4) NOT NULL,
  `n_jab` varchar(20) NOT NULL,
  PRIMARY KEY (`id_jab`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jabatan`
--

INSERT INTO `jabatan` (`id_jab`, `n_jab`) VALUES
('J001', 'Pegawai'),
('J002', 'Kepala Pegawai'),
('J003', 'Mgr.Pegawai');

-- --------------------------------------------------------

--
-- Table structure for table `k_jabatan`
--

CREATE TABLE IF NOT EXISTS `k_jabatan` (
  `idkjb` varchar(4) NOT NULL,
  `nip` varchar(10) NOT NULL,
  `masa_kerja` int(10) NOT NULL,
  `keterangan` text NOT NULL,
  PRIMARY KEY (`idkjb`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `k_jabatan`
--

INSERT INTO `k_jabatan` (`idkjb`, `nip`, `masa_kerja`, `keterangan`) VALUES
('KJ01', '1234', 4, 'dsda'),
('KJ02', 'K3001', 4, '');

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE IF NOT EXISTS `pegawai` (
  `nip` varchar(10) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `tmpt_lahir` varchar(200) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `tgl_masuk` date NOT NULL,
  `id_bag` varchar(4) NOT NULL,
  `id_jab` varchar(4) NOT NULL,
  `foto` varchar(100) NOT NULL,
  PRIMARY KEY (`nip`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`nip`, `nama`, `tmpt_lahir`, `tgl_lahir`, `jenis_kelamin`, `alamat`, `tgl_masuk`, `id_bag`, `id_jab`, `foto`) VALUES
('P004', 'Bulli Tella', 'Nias', '1979-01-03', 'L', 'Medan', '2015-01-17', 'B001', 'J001', ''),
('P002', 'Sam Risonta Sembiring', 'Medan', '1980-01-02', 'L', 'Medan', '2008-02-18', 'B001', 'J002', ''),
('P003', 'Muzakkir Khalidin', 'Aceh', '1995-03-02', 'L', 'Medan', '2016-01-16', 'B001', 'J001', ''),
('P001', 'Muhammad Evan Faizal ', 'tebing tinggi', '1981-02-02', 'L', 'Medan', '2010-01-16', 'B001', 'J003', ''),
('P005', 'Luthfi Sugara', 'medan', '1985-01-04', 'L', 'Medan', '2015-02-01', 'B001', 'J001', '');

-- --------------------------------------------------------

--
-- Table structure for table `pelatihan`
--

CREATE TABLE IF NOT EXISTS `pelatihan` (
  `id_pelatihan` int(4) NOT NULL AUTO_INCREMENT,
  `nip` varchar(10) NOT NULL,
  `tgl_pelatihan` date NOT NULL,
  `topik_pelatihan` varchar(100) NOT NULL,
  `penyelenggara` text NOT NULL,
  `hasil_pelatihan` int(10) NOT NULL,
  PRIMARY KEY (`id_pelatihan`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- Table structure for table `pendidikan`
--

CREATE TABLE IF NOT EXISTS `pendidikan` (
  `idp` int(4) NOT NULL AUTO_INCREMENT,
  `nip` varchar(10) NOT NULL,
  `t_pdk` varchar(20) NOT NULL,
  `d_pdk` text NOT NULL,
  PRIMARY KEY (`idp`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

-- --------------------------------------------------------

--
-- Table structure for table `pengalaman_kerja`
--

CREATE TABLE IF NOT EXISTS `pengalaman_kerja` (
  `id_peker` int(4) NOT NULL AUTO_INCREMENT,
  `nip` varchar(10) NOT NULL,
  `nm_pekerjaan` varchar(50) NOT NULL,
  `d_pekerjaan` text NOT NULL,
  PRIMARY KEY (`id_peker`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `userid` varchar(50) NOT NULL,
  `passid` varchar(50) NOT NULL,
  `level_user` int(2) NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userid`, `passid`, `level_user`) VALUES
('admin', 'admin', 1),
('pimpinan', 'pimpinan', 2),
('P001', '12345', 3),
('P002', '12345', 3),
('P003', '12345', 3),
('P004', '12345', 3),
('P005', '12345', 3);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
