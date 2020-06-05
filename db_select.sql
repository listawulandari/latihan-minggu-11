-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 13 Sep 2017 pada 16.38
-- Versi Server: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_select`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE IF NOT EXISTS `kategori` (
  `kategori_id` int(11) NOT NULL AUTO_INCREMENT,
  `kategori_nama` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`kategori_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`kategori_id`, `kategori_nama`) VALUES
(1, 'Kosmetik'),
(2, 'Minuman'),
(3, 'Makanan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `subkategori`
--

CREATE TABLE IF NOT EXISTS `subkategori` (
  `subkategori_id` int(11) NOT NULL AUTO_INCREMENT,
  `subkategori_nama` varchar(50) DEFAULT NULL,
  `subkategori_kategori_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`subkategori_id`),
  KEY `subkategori_kategori_id` (`subkategori_kategori_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data untuk tabel `subkategori`
--

INSERT INTO `subkategori` (`subkategori_id`, `subkategori_nama`, `subkategori_kategori_id`) VALUES
(12, 'Face wash', 1),
(13, 'Lips Stick', 1),
(14, 'Skin Care', 1),
(15, 'Body Wash', 1),
(16, 'Minuman Soda', 2),
(17, 'Minuman Dingin', 2),
(18, 'Milkshake', 2),
(19, 'Soft Drink', 2),
(20, 'Breakfast', 3),
(21, 'Lunch', 3),
(22, 'Dinner', 3);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `subkategori`
--
ALTER TABLE `subkategori`
  ADD CONSTRAINT `subkategori_ibfk_1` FOREIGN KEY (`subkategori_kategori_id`) REFERENCES `kategori` (`kategori_id`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
