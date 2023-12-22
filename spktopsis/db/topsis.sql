-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 10 Jun 2023 pada 17.13
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `topsis`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tab_alternatif`
--

CREATE TABLE `tab_alternatif` (
  `id_alternatif` int(11) NOT NULL,
  `nama_alternatif` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tab_alternatif`
--

INSERT INTO `tab_alternatif` (`id_alternatif`, `nama_alternatif`) VALUES
(1, 'A. Hamid Ms'),
(2, 'Abdul Rahman Bakrun'),
(3, 'Ahmad Hamid'),
(4, 'Ahmad Jazari'),
(5, 'Eddy Iswandi Ar'),
(6, 'Effendi Bin Seni'),
(7, 'Gusti Erwandi'),
(8, 'Halimah'),
(9, 'Haminah (1)'),
(10, 'Haminah (2)'),
(11, 'Hariadi'),
(12, 'Hermansyah'),
(13, 'Hermanto'),
(14, 'Jamilah'),
(15, 'M. Lahir'),
(16, 'Sartono'),
(17, 'Sy. Abu Bakar'),
(18, 'Sy. M. Nour'),
(19, 'Sy. Rejab'),
(20, 'Sy. Umar');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tab_kriteria`
--

CREATE TABLE `tab_kriteria` (
  `id_kriteria` int(11) NOT NULL,
  `nama_kriteria` varchar(255) DEFAULT NULL,
  `bobot` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tab_kriteria`
--

INSERT INTO `tab_kriteria` (`id_kriteria`, `nama_kriteria`, `bobot`) VALUES
(1, 'Jenis Kelamin', '0.10'),
(2, 'Pekerjaan', '0.10'),
(3, 'penghasilan', '0.10'),
(4, 'Material Dinding', '0.05'),
(5, 'Kondisi Dinding', '0.05'),
(6, 'Material Atap', '0.05'),
(7, 'Kondisi Atap', '0.05'),
(8, 'Material Lantai', '0.05'),
(9, 'Kondisi Lantai', '0.05'),
(10, 'Luas Rumah', '0.05'),
(11, 'Kepemilikan Kamar Mandi', '0.10'),
(12, 'Jumlah Penghuni', '0.10'),
(13, 'Pernah Mendapat Bantuan', '0.15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tab_poin`
--

CREATE TABLE `tab_poin` (
  `id_poin` varchar(10) NOT NULL,
  `poin` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tab_poin`
--

INSERT INTO `tab_poin` (`id_poin`, `poin`) VALUES
('1', '1'),
('2', '2'),
('3', '3'),
('4', '4');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tab_topsis`
--

CREATE TABLE `tab_topsis` (
  `id_alternatif` int(10) NOT NULL,
  `id_kriteria` int(10) NOT NULL,
  `nilai` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tab_topsis`
--

INSERT INTO `tab_topsis` (`id_alternatif`, `id_kriteria`, `nilai`) VALUES
(1, 1, 1),
(1, 2, 3),
(1, 3, 1),
(1, 4, 1),
(1, 5, 1),
(1, 6, 3),
(1, 7, 2),
(1, 8, 3),
(1, 9, 3),
(1, 10, 3),
(1, 11, 4),
(1, 12, 1),
(1, 13, 1),
(2, 1, 1),
(2, 2, 3),
(2, 3, 4),
(2, 4, 2),
(2, 5, 3),
(2, 6, 3),
(2, 7, 3),
(2, 8, 3),
(2, 9, 2),
(2, 10, 4),
(2, 11, 1),
(2, 12, 2),
(2, 13, 1),
(3, 1, 1),
(3, 2, 3),
(3, 3, 4),
(3, 4, 2),
(3, 5, 2),
(3, 6, 3),
(3, 7, 3),
(3, 8, 3),
(3, 9, 2),
(3, 10, 3),
(3, 11, 1),
(3, 12, 2),
(3, 13, 4),
(4, 1, 1),
(4, 2, 1),
(4, 3, 2),
(4, 4, 2),
(4, 5, 3),
(4, 6, 3),
(4, 7, 3),
(4, 8, 3),
(4, 9, 3),
(4, 10, 4),
(4, 11, 1),
(4, 12, 4),
(4, 13, 4),
(5, 1, 1),
(5, 2, 1),
(5, 3, 4),
(5, 4, 1),
(5, 5, 3),
(5, 6, 3),
(5, 7, 2),
(5, 8, 3),
(5, 9, 2),
(5, 10, 3),
(5, 11, 4),
(5, 12, 3),
(5, 13, 4),
(6, 1, 1),
(6, 2, 3),
(6, 3, 4),
(6, 4, 1),
(6, 5, 3),
(6, 6, 3),
(6, 7, 1),
(6, 8, 2),
(6, 9, 3),
(6, 10, 2),
(6, 11, 1),
(6, 12, 4),
(6, 13, 4),
(7, 1, 1),
(7, 2, 3),
(7, 3, 4),
(7, 4, 1),
(7, 5, 3),
(7, 6, 3),
(7, 7, 3),
(7, 8, 3),
(7, 9, 3),
(7, 10, 3),
(7, 11, 4),
(7, 12, 3),
(7, 13, 4),
(8, 1, 4),
(8, 2, 3),
(8, 3, 4),
(8, 4, 1),
(8, 5, 2),
(8, 6, 3),
(8, 7, 3),
(8, 8, 3),
(8, 9, 1),
(8, 10, 3),
(8, 11, 4),
(8, 12, 2),
(8, 13, 1),
(9, 1, 4),
(9, 2, 3),
(9, 3, 3),
(9, 4, 1),
(9, 5, 1),
(9, 6, 3),
(9, 7, 3),
(9, 8, 3),
(9, 9, 3),
(9, 10, 2),
(9, 11, 1),
(9, 12, 3),
(9, 13, 4),
(10, 1, 4),
(10, 2, 3),
(10, 3, 4),
(10, 4, 1),
(10, 5, 3),
(10, 6, 3),
(10, 7, 2),
(10, 8, 2),
(10, 9, 1),
(10, 10, 3),
(10, 11, 1),
(10, 12, 2),
(10, 13, 4),
(11, 1, 1),
(11, 2, 3),
(11, 3, 4),
(11, 4, 2),
(11, 5, 2),
(11, 6, 3),
(11, 7, 3),
(11, 8, 3),
(11, 9, 1),
(11, 10, 3),
(11, 11, 1),
(11, 12, 3),
(11, 13, 4),
(12, 1, 1),
(12, 2, 3),
(12, 3, 4),
(12, 4, 1),
(12, 5, 1),
(12, 6, 3),
(12, 7, 3),
(12, 8, 2),
(12, 9, 1),
(12, 10, 2),
(12, 11, 1),
(12, 12, 2),
(12, 13, 4),
(13, 1, 1),
(13, 2, 3),
(13, 3, 4),
(13, 4, 1),
(13, 5, 1),
(13, 6, 3),
(13, 7, 3),
(13, 8, 2),
(13, 9, 1),
(13, 10, 2),
(13, 11, 4),
(13, 12, 3),
(13, 13, 4),
(14, 1, 1),
(14, 2, 3),
(14, 3, 4),
(14, 4, 2),
(14, 5, 2),
(14, 6, 3),
(14, 7, 3),
(14, 8, 3),
(14, 9, 2),
(14, 10, 2),
(14, 11, 1),
(14, 12, 2),
(14, 13, 1),
(15, 1, 1),
(15, 2, 3),
(15, 3, 4),
(15, 4, 2),
(15, 5, 3),
(15, 6, 3),
(15, 7, 3),
(15, 8, 3),
(15, 9, 3),
(15, 10, 2),
(15, 11, 4),
(15, 12, 3),
(15, 13, 4),
(16, 1, 1),
(16, 2, 3),
(16, 3, 4),
(16, 4, 1),
(16, 5, 2),
(16, 6, 3),
(16, 7, 3),
(16, 8, 3),
(16, 9, 2),
(16, 10, 3),
(16, 11, 1),
(16, 12, 2),
(16, 13, 4),
(17, 1, 1),
(17, 2, 3),
(17, 3, 4),
(17, 4, 2),
(17, 5, 3),
(17, 6, 3),
(17, 7, 3),
(17, 8, 3),
(17, 9, 2),
(17, 10, 1),
(17, 11, 1),
(17, 12, 2),
(17, 13, 1),
(18, 1, 1),
(18, 2, 3),
(18, 3, 4),
(18, 4, 2),
(18, 5, 3),
(18, 6, 3),
(18, 7, 3),
(18, 8, 3),
(18, 9, 3),
(18, 10, 4),
(18, 11, 4),
(18, 12, 3),
(18, 13, 4),
(19, 1, 1),
(19, 2, 2),
(19, 3, 3),
(19, 4, 1),
(19, 5, 3),
(19, 6, 3),
(19, 7, 3),
(19, 8, 3),
(19, 9, 3),
(19, 10, 2),
(19, 11, 1),
(19, 12, 3),
(19, 13, 1),
(20, 1, 1),
(20, 2, 3),
(20, 3, 4),
(20, 4, 1),
(20, 5, 2),
(20, 6, 3),
(20, 7, 2),
(20, 8, 3),
(20, 9, 3),
(20, 10, 3),
(20, 11, 1),
(20, 12, 3),
(20, 13, 4);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tab_alternatif`
--
ALTER TABLE `tab_alternatif`
  ADD PRIMARY KEY (`id_alternatif`);

--
-- Indeks untuk tabel `tab_kriteria`
--
ALTER TABLE `tab_kriteria`
  ADD PRIMARY KEY (`id_kriteria`);

--
-- Indeks untuk tabel `tab_poin`
--
ALTER TABLE `tab_poin`
  ADD PRIMARY KEY (`id_poin`);

--
-- Indeks untuk tabel `tab_topsis`
--
ALTER TABLE `tab_topsis`
  ADD PRIMARY KEY (`id_alternatif`,`id_kriteria`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tab_alternatif`
--
ALTER TABLE `tab_alternatif`
  MODIFY `id_alternatif` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `tab_kriteria`
--
ALTER TABLE `tab_kriteria`
  MODIFY `id_kriteria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
