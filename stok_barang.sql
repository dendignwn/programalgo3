-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Okt 2021 pada 03.38
-- Versi server: 10.1.36-MariaDB
-- Versi PHP: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stok_barang`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `idbarang` int(11) NOT NULL,
  `nama_barang` varchar(45) DEFAULT NULL,
  `jenis_barang` varchar(45) DEFAULT NULL,
  `stok_barang` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`idbarang`, `nama_barang`, `jenis_barang`, `stok_barang`) VALUES
(1, 'Kecap Bango', 'Bahan Baku', 19),
(2, 'Telor Ayam', 'Bahan Baku', 43),
(3, 'Sari Roti', 'Makanan', 23),
(4, 'Axe Boddy Spray', 'Parfum', 66),
(5, 'Pepsodent', 'Odol', 33),
(6, 'Susu Indomilk', 'minuman', 21),
(7, 'Chitato BBQ', 'Makanan', 51),
(8, 'Miranda Hair Colour', 'Cat Rambut', 15),
(9, 'Topi NY', 'Accesories', 0),
(10, 'Rider Clothes', 'Baju', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `history`
--

CREATE TABLE `history` (
  `idhistory` int(11) NOT NULL,
  `waktu` varchar(75) DEFAULT NULL,
  `jenis_barang` varchar(45) DEFAULT NULL,
  `nama_barang` varchar(45) DEFAULT NULL,
  `kegiatan` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `history`
--

INSERT INTO `history` (`idhistory`, `waktu`, `jenis_barang`, `nama_barang`, `kegiatan`) VALUES
(1, '05/01/2020 12:28:18', 'Kecap Bango', 'Bahan Baku', 'Memabahkan barang baru jenis Bahan Baku dengan nama Kecap Bango'),
(2, '05/01/2020 12:28:55', 'Kecap Bango', 'Bahan Baku', 'Menambah stok barang Kecap Bango berjulmah 0 sebanyak 19 sehingga stok barang Kecap Bango menjadi 19'),
(3, '05/01/2020 01:02:10', 'Telor Ayam', 'Bahan Baku', 'Memabahkan barang baru jenis Bahan Baku dengan nama Telor Ayam'),
(4, '05/01/2020 01:02:27', 'Sari Roti', 'Makanan', 'Memabahkan barang baru jenis Makanan dengan nama Sari Roti'),
(5, '05/01/2020 01:02:56', 'Axe Boddy Spray', 'Parfum', 'Memabahkan barang baru jenis Parfum dengan nama Axe Boddy Spray'),
(6, '05/01/2020 01:03:05', 'Pepsodent', 'Odol', 'Memabahkan barang baru jenis Odol dengan nama Pepsodent'),
(7, '05/01/2020 01:03:25', 'Susu Indomilk', 'minuman', 'Memabahkan barang baru jenis minuman dengan nama Susu Indomilk'),
(8, '05/01/2020 01:03:41', 'Chitato BBQ', 'Makanan', 'Memabahkan barang baru jenis Makanan dengan nama Chitato BBQ'),
(9, '05/01/2020 01:04:03', 'Miranda Hair Colour', 'Cat Rambut', 'Memabahkan barang baru jenis Cat Rambut dengan nama Miranda Hair Colour'),
(10, '05/01/2020 01:04:16', 'Telor Ayam', 'Bahan Baku', 'Menambah stok barang Telor Ayam berjulmah 0 sebanyak 43 sehingga stok barang Telor Ayam menjadi 43'),
(11, '05/01/2020 01:10:06', 'Sari Roti', 'Makanan', 'Menambah stok barang Sari Roti berjulmah 0 sebanyak 23 sehingga stok barang Sari Roti menjadi 23'),
(12, '05/01/2020 01:10:12', 'Axe Boddy Spray', 'Parfum', 'Menambah stok barang Axe Boddy Spray berjulmah 0 sebanyak 66 sehingga stok barang Axe Boddy Spray menjadi 66'),
(13, '05/01/2020 01:10:19', 'Pepsodent', 'Odol', 'Menambah stok barang Pepsodent berjulmah 0 sebanyak 33 sehingga stok barang Pepsodent menjadi 33'),
(14, '05/01/2020 01:10:23', 'Susu Indomilk', 'minuman', 'Menambah stok barang Susu Indomilk berjulmah 0 sebanyak 21 sehingga stok barang Susu Indomilk menjadi 21'),
(15, '05/01/2020 01:10:28', 'Chitato BBQ', 'Makanan', 'Menambah stok barang Chitato BBQ berjulmah 0 sebanyak 51 sehingga stok barang Chitato BBQ menjadi 51'),
(16, '05/01/2020 01:10:35', 'Miranda Hair Colour', 'Cat Rambut', 'Menambah stok barang Miranda Hair Colour berjulmah 0 sebanyak 15 sehingga stok barang Miranda Hair Colour menjadi 15'),
(17, '05/01/2020 01:11:10', 'Topi NY', 'Accesories', 'Memabahkan barang baru jenis Accesories dengan nama Topi NY'),
(18, '05/01/2020 01:11:28', 'Rider Clothes', 'Baju', 'Memabahkan barang baru jenis Baju dengan nama Rider Clothes');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`) VALUES
(1, 'admin', 'admin'),
(2, 'dendi', 'dendi123');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`idbarang`);

--
-- Indeks untuk tabel `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`idhistory`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `barang`
--
ALTER TABLE `barang`
  MODIFY `idbarang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `history`
--
ALTER TABLE `history`
  MODIFY `idhistory` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD CONSTRAINT `barang_ibfk_1` FOREIGN KEY (`idbarang`) REFERENCES `history` (`idhistory`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
