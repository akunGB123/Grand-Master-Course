-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2021 at 06:29 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_gmcourse`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `idAdmin` int(11) NOT NULL,
  `namaAdmin` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`idAdmin`, `namaAdmin`, `username`, `password`) VALUES
(3, 'admin', 'admin', '$2y$10$mzRmqugMtUDadnVnZsKtp.cCb9CQlZ73yWp4QzFLghkSe.IWo.UtG'),
(7, 'admin2', 'admin2', '$2y$10$5zcfT/PhqVkzIPVLCOVOKOqLB0D0Dd8I16uNUL4xwHEVAkSSgILLW');

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `idGuru` int(11) NOT NULL,
  `namaGuru` varchar(100) NOT NULL,
  `noHp` varchar(20) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`idGuru`, `namaGuru`, `noHp`, `alamat`, `username`, `password`) VALUES
(1, 'Hadian Syafiar', '081273625123', 'Komplek Taman Melati 2 nomor 5', 'hadian1_guru', '$2y$10$dlakAnHZ9kLkr8kDFOZ3bu.tFW55ZJTlxHM3q.DmpV4Iu52XCnlym'),
(2, 'Kusuma Ningrat', '081263532782', 'Jalan Merdeka nomor 3', 'kusuma1_guru', '$2y$10$GyDC4LBSK9WhpPp8TWfR6eyBRgc72sIE2pusNpnmmj8BxeQlIGbzC'),
(3, 'Baringin', '081245672123', 'Jalan Kasuari nomor 5', 'baringin1_guru', '$2y$10$/wmudGpuecaDJZSpWDXOXOtxv2ZFoOfkvwRrdGHLBGzn1KSDd07OK'),
(30, 'Amin', '08123123', 'disini', 'amin_guru', '$2y$10$VcJeF5QCfClRMF888oJQbOLmybEWs4JWOzi5zJmCUsQscvt6tGkbK'),
(31, 'Fredian', '08123412421', 'alamat jauh', 'fredian1_guru', '$2y$10$rJyAV.CuuT5MVC2.GU3hPOfk4F51T3atXqg8MsGB0/6gMcf3zQ1yS'),
(32, 'Udin', '08123423434', 'dekat', 'udin_guru', '$2y$10$NttRanhlHpBwzGeBss.OKe4gQHeETKjaNG.zXfHl5256YXLCw6MPO'),
(33, 'Mamat', '0987654321', 'Jalan Betutu nomor 5', 'mamat_guru', '$2y$10$sqekiZl3tIB1HSErlBEP5eOeyXu0aWZeB2C3P103OVhVXppfkVyk2');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal`
--

CREATE TABLE `jadwal` (
  `idJadwal` int(11) NOT NULL,
  `tanggalJadwal` varchar(20) NOT NULL,
  `jamJadwal` varchar(10) NOT NULL,
  `durasi` int(11) NOT NULL,
  `idMatpel` int(11) NOT NULL,
  `idGuru` int(11) NOT NULL,
  `idSiswa` int(11) NOT NULL,
  `namaMatpel` varchar(100) NOT NULL,
  `namaGuru` varchar(100) NOT NULL,
  `namaSiswa` varchar(100) NOT NULL,
  `accJadwal` varchar(100) NOT NULL,
  `bayarJadwal` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jadwal`
--

INSERT INTO `jadwal` (`idJadwal`, `tanggalJadwal`, `jamJadwal`, `durasi`, `idMatpel`, `idGuru`, `idSiswa`, `namaMatpel`, `namaGuru`, `namaSiswa`, `accJadwal`, `bayarJadwal`) VALUES
(14, '09/06/2021', '18:30', 2, 2, 2, 18, 'Biologi', 'Kusuma Ningrat', 'Andi', '0', '0'),
(15, '10/06/2021', '22:35', 3, 3, 3, 17, 'Matematika', 'Baringin', 'Siswa', '0', '0'),
(16, '09/06/2021', '22:37', 1, 12, 3, 19, 'Fisika', 'Baringin', 'Agung', '0', '0'),
(17, '08/06/2021', '22:35', 2, 20, 31, 19, 'Kimia', 'Fredian', 'Agung', '0', '0'),
(19, '23/06/2021', '09:40', 1, 20, 31, 17, 'Kimia', 'Fredian', 'Siswa', '1', '1'),
(25, '10/06/2021', '18:30', 3, 23, 32, 20, 'Matematika', 'Udin', 'Apoy', '1', '1'),
(26, '16/06/2021', '18:30', 2, 3, 3, 20, 'Matematika', 'Baringin', 'Apoy', '0', '0'),
(28, '07/06/2021', '23:00', 1, 1, 1, 21, 'Biologi', 'Hadian Syafiar', 'Opoi', '1', '1'),
(30, '08/06/2021', '23:21', 2, 22, 30, 20, 'Kimia', 'Amin', 'Apoy', '1', '2'),
(31, '08/06/2021', '00:23', 1, 22, 30, 20, 'Kimia', 'Amin', 'Apoy', '1', '1'),
(32, '16/06/2021', '00:35', 2, 23, 32, 17, 'Matematika', 'Udin', 'Siswa', '2', '2'),
(33, '08/06/2021', '22:48', 1, 22, 30, 20, 'Kimia', 'Amin', 'Apoy', '2', '0'),
(34, '10/06/2021', '19:50', 0, 22, 30, 23, 'Kimia', 'Amin', 'Udin', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `matpel`
--

CREATE TABLE `matpel` (
  `idMatpel` int(11) NOT NULL,
  `namaMatpel` varchar(100) NOT NULL,
  `idGuru` int(11) NOT NULL,
  `namaGuru` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `matpel`
--

INSERT INTO `matpel` (`idMatpel`, `namaMatpel`, `idGuru`, `namaGuru`) VALUES
(1, 'Biologi', 1, 'Hadian Syafiar'),
(2, 'Biologi', 2, 'Kusuma Ningrat'),
(3, 'Matematika', 3, 'Baringin'),
(12, 'Fisika', 3, 'Baringin'),
(20, 'Kimia', 31, 'Fredian'),
(22, 'Kimia', 30, 'Amin'),
(23, 'Matematika', 32, 'Udin');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `idSiswa` int(11) NOT NULL,
  `namaSiswa` varchar(100) NOT NULL,
  `noHp` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`idSiswa`, `namaSiswa`, `noHp`, `alamat`, `email`, `username`, `password`) VALUES
(17, 'Siswa', '08123123', 'pkp', 'siswa@gmail.com', 'siswa', '$2y$10$MAVEoHnCeKHmhD24i4/bAOehqOnfMzwanOcoAm1yDCNUHzg8Bq8Tu'),
(18, 'Andi', '079128312', 'alamat siswa 3', 'siswa3@gmail.com', 'siswa3', '$2y$10$RFa8PG0AI2KCNWjSMr21eOYAOBQbdXR9kxWh1cSexpRX3Y0JJk.aa'),
(19, 'Agung', '1243236', 'alamat siswa 4', 'siswa4@gmail.com', 'siswa4', '$2y$10$ZruqWolwq.NkQ49UWsnp3eDu.ZCF/hz8wLM/wLe7QF.zgI8tsdxtG'),
(20, 'Apoy', '082145678123', 'Jalan Purnama 2', 'apoy@gmail.com', 'siswa5', '$2y$10$7TsgfnKI6miY5F3WdAIfyO2dqR7jw6uqkD5xLGYURenOU5h1DJSyC'),
(21, 'Opoi', '0812312442', 'Jalan Jekicen no 5', 'opoi@gmail.com', 'siswa6', '$2y$10$h/bpbb5Xdys86M0jq.68y.hUnaouRI.gBttXG9BIDng6uhTq3YMYK'),
(23, 'Udin', '08765678934', 'Komplek Jurnal No 9', 'udin@gmail.com', 'udin_siswa', '$2y$10$EJrH5o3txqr5kopkI.PMue5UcGXpL8h1tKJIvlS2oSxi.1lw4SI0O'),
(24, 'Haaland', '098765432', 'Jalan Kosovo nomor 6', 'haaland@gmail.com', 'haaland_siswa', '$2y$10$nrVDuo/.oDQ0wodsSAq4G.LfljHPN9MWxzyNyYAJME3A39N612thO');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`idAdmin`);

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`idGuru`);

--
-- Indexes for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`idJadwal`),
  ADD KEY `idMatpel` (`idMatpel`),
  ADD KEY `idGuru` (`idGuru`),
  ADD KEY `idSiswa` (`idSiswa`);

--
-- Indexes for table `matpel`
--
ALTER TABLE `matpel`
  ADD PRIMARY KEY (`idMatpel`),
  ADD KEY `idGuru` (`idGuru`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`idSiswa`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `idAdmin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `guru`
--
ALTER TABLE `guru`
  MODIFY `idGuru` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `idJadwal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `matpel`
--
ALTER TABLE `matpel`
  MODIFY `idMatpel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `idSiswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD CONSTRAINT `jadwal_ibfk_1` FOREIGN KEY (`idMatpel`) REFERENCES `matpel` (`idMatpel`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `jadwal_ibfk_2` FOREIGN KEY (`idGuru`) REFERENCES `guru` (`idGuru`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `jadwal_ibfk_3` FOREIGN KEY (`idSiswa`) REFERENCES `siswa` (`idSiswa`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `matpel`
--
ALTER TABLE `matpel`
  ADD CONSTRAINT `matpel_ibfk_1` FOREIGN KEY (`idGuru`) REFERENCES `guru` (`idGuru`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
