-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 02, 2018 at 03:55 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ayoberbagi`
--

-- --------------------------------------------------------

--
-- Table structure for table `aksisosial`
--

CREATE TABLE `aksisosial` (
  `id_aksisosial` int(14) NOT NULL,
  `nama_desa` varchar(50) NOT NULL,
  `alamat_desa` varchar(100) NOT NULL,
  `tanggal_pelaksanaan` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `berbagibarang`
--

CREATE TABLE `berbagibarang` (
  `id_berbagibarang` int(14) NOT NULL,
  `kategori_barang` set('sembako','obat-obatan','buku','baju') NOT NULL,
  `no.hp` int(12) NOT NULL,
  `tanggal_tutup` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `berbagidana`
--

CREATE TABLE `berbagidana` (
  `id_berbagidana` int(14) NOT NULL,
  `nominal` int(50) NOT NULL,
  `metode_pembayaran` set('BCA','BNI','MANDIRI') NOT NULL,
  `no.hp` int(12) NOT NULL,
  `tanggal_tutup` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `infokampanye`
--

CREATE TABLE `infokampanye` (
  `nama_kampanye` varchar(50) NOT NULL,
  `deskripsi` text NOT NULL,
  `file` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sukarelawan`
--

CREATE TABLE `sukarelawan` (
  `id_sukarelawan` int(11) NOT NULL,
  `nama_sukarelawan` varchar(30) NOT NULL,
  `email_sukarelawan` varchar(50) NOT NULL,
  `nohp_sukarelawan` int(12) NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` int(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `level` int(16) NOT NULL,
  `nohp` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aksisosial`
--
ALTER TABLE `aksisosial`
  ADD PRIMARY KEY (`id_aksisosial`);

--
-- Indexes for table `berbagibarang`
--
ALTER TABLE `berbagibarang`
  ADD PRIMARY KEY (`id_berbagibarang`);

--
-- Indexes for table `berbagidana`
--
ALTER TABLE `berbagidana`
  ADD PRIMARY KEY (`id_berbagidana`);

--
-- Indexes for table `infokampanye`
--
ALTER TABLE `infokampanye`
  ADD PRIMARY KEY (`nama_kampanye`);

--
-- Indexes for table `sukarelawan`
--
ALTER TABLE `sukarelawan`
  ADD PRIMARY KEY (`id_sukarelawan`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
