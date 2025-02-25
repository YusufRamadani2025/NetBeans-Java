-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 07 Jan 2025 pada 00.59
-- Versi server: 8.0.30
-- Versi PHP: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_perpus`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `anggota`
--

CREATE TABLE `anggota` (
  `MemberID` char(5) COLLATE utf8mb4_general_ci NOT NULL,
  `Name` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Address` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `PhoneNumber` varchar(15) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Email` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `anggota`
--

INSERT INTO `anggota` (`MemberID`, `Name`, `Address`, `PhoneNumber`, `Email`) VALUES
('AN001', 'Andi Setiawan', 'Jl. Merdeka No. 10, Jakarta', '081234567890', 'andi.setiawan@gmail.com'),
('AN002', 'Budi Santoso', 'Jl. Pahlawan No. 23, Bandung', '082345678901', 'budi.santoso@gmail.com'),
('AN003', 'Citra Dewi', 'Jl. Raya Kembang No. 5, Surabaya', '083456789012', 'citra.dewi@gmail.com'),
('AN004', 'Dewi Rahmawati', 'Jl. Anggrek No. 7, Yogyakarta', '081345678901', 'dewi.rahmawati@gmail.com'),
('AN005', 'Eko Prasetyo', 'Jl. Kebangsaan No. 8, Semarang', '082456789012', 'eko.prasetyo@gmail.com'),
('AN006', 'Fani Nurul', 'Jl. Hibrida No. 3, Medan', '083567890123', 'fani.nurul@gmail.com'),
('AN007', 'Gilang Saputra', 'Jl. Kenangan No. 12, Bali', '081456789012', 'gilang.saputra@gmail.com'),
('AN008', 'Hani Lestari', 'Jl. Melati No. 6, Malang', '082567890123', 'hani.lestari@gmail.com'),
('AN009', 'Iqbal Hidayat', 'Jl. Nusantara No. 4, Palembang', '083678901234', 'iqbal.hidayat@gmail.com'),
('AN010', 'Jeni Wulandari', 'Jl. Jenderal No. 9, Makassar', '081567890123', 'jeni.wulandari@gmail.com');

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `BookID` char(5) COLLATE utf8mb4_general_ci NOT NULL,
  `Title` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Author` varchar(30) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Publisher` varchar(30) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `PublishedYear` year DEFAULT NULL,
  `Genre` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Copies` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`BookID`, `Title`, `Author`, `Publisher`, `PublishedYear`, `Genre`, `Copies`) VALUES
('B001', 'Laskar Pelangi', 'Andrea Hirata', 'Bentang Pustaka', '2008', 'Fiksi', 20),
('B002', 'Ayat-Ayat Cinta', 'Habiburrahman El Shirazy', 'Kharisma', '2008', 'Romantis', 15),
('B003', 'Bumi Manusia', 'Pramoedya Ananta Toer', 'Baling Press', '1980', 'Sejarah', 25),
('B004', 'Gundala', 'Harya Suraminata', 'Gramedia', '1969', 'Komik', 10),
('B005', 'Supernova', 'Dewi Lestari', 'Bentang Pustaka', '2001', 'Fiksi', 18),
('B006', 'Pulang', 'Tere Liye', 'Republika', '2016', 'Fiksi', 22),
('B007', 'Negeri 5 Menara', 'A. Fuadi', 'Gramedia', '2009', 'Fiksi', 12),
('B008', 'Rindu', 'Tere Liye', 'Republika', '2018', 'Fiksi', 17),
('B009', 'Perahu Kertas', 'Dee Lestari', 'Bentang Pustaka', '2009', 'Fiksi', 19),
('B010', 'The Girls', 'Lisa See', 'Gramedia', '2012', 'Fiksi', 14),
('B011', 'Cinta Brontosaurus', 'Raditya Dika', 'Diva Press', '2010', 'Humor', 16),
('B012', 'Marmut Merah Jambu', 'Raditya Dika', 'Diva Press', '2014', 'Humor', 20),
('B013', 'Jangan Kembali', 'Tere Liye', 'Republika', '2020', 'Fiksi', 13),
('B014', 'Siti Nurbaya', 'Marah Roesli', 'Balai Pustaka', '1922', 'Klasik', 8),
('B015', 'Dilan 1990', 'Pidi Baiq', 'Pastel Books', '2014', 'Romantis', 30),
('B016', 'Dilan 1991', 'Pidi Baiq', 'Pastel Books', '2015', 'Romantis', 28),
('B017', 'Aroma Karsa', 'Dee Lestari', 'Bentang Pustaka', '2018', 'Fiksi', 12),
('B018', 'Sampai Jumpa Lagi', 'Marga T', 'Gramedia', '2019', 'Romantis', 14),
('B019', 'Jangan Takut', 'Fira Basuki', 'GagasMedia', '2020', 'Inspiratif', 16),
('B020', 'Filosofi Kopi', 'Dee Lestari', 'Bentang Pustaka', '2015', 'Fiksi', 22),
('B021', 'Kisah Tanah Jawa', 'Seno Gumira Ajidarma', 'Kompas', '2016', 'Fiksi', 11),
('B022', 'Laut Bercerita', 'Leila S. Chudori', 'Kepustakaan Populer Gramedia', '2014', 'Fiksi', 18),
('B023', 'Ronggeng Dukuh Paruk', 'Ahmad Tohari', 'Gramedia', '1982', 'Sejarah', 15),
('B024', 'Hujan Bulan Juni', 'Tere Liye', 'Republika', '2015', 'Romantis', 17),
('B025', 'Kisah 1001 Malam', 'Anonym', 'Khanza', '2017', 'Cerita', 20),
('B026', 'Mengejar Matahari', 'Tere Liye', 'Republika', '2014', 'Fiksi', 19),
('B027', 'Keluarga Cemara', 'Arswendo Atmowiloto', 'Gramedia', '2014', 'Keluarga', 21),
('B028', 'Kita Kembali', 'Ika Natassa', 'HarperCollins', '2019', 'Fiksi', 13),
('B029', 'Pulang', 'Tere Liye', 'Republika', '2016', 'Fiksi', 22),
('B030', 'Salah Asuhan', 'Abdul Malik', 'Balai Pustaka', '1939', 'Klasik', 10),
('B031', 'Bintang', 'Tere Liye', 'Republika', '2022', 'Fiksi', 15),
('B032', 'Aku dan Kalian', 'Oka Rusmini', 'Gramedia', '2018', 'Fiksi', 14),
('B033', 'Pandanglah Langit', 'Putu Wijaya', 'Kompas', '2017', 'Fiksi', 16),
('B034', 'Keris', 'Ahmad Tohari', 'Gramedia', '2006', 'Sejarah', 12),
('B035', 'Hujan', 'Tere Liye', 'Republika', '2021', 'Fiksi', 18),
('B036', 'Kisah Cinta di Kaki Gunung', 'Ayu Utami', 'Kepustakaan Populer Gramedia', '2020', 'Romantis', 14),
('B037', 'Salah Asuhan', 'Abdul Malik', 'Balai Pustaka', '1939', 'Klasik', 10),
('B038', 'Cinta Luar Biasa', 'Eko Puspa', 'Gramedia', '2022', 'Romantis', 17),
('B039', 'Jangan Baper', 'Seno Gumira Ajidarma', 'Kepustakaan Populer Gramedia', '2019', 'Humor', 20),
('B040', 'Matahari', 'Putu Wijaya', 'Kompas', '2018', 'Fiksi', 16),
('B041', 'Di Bawah Lindungan Ka\"bah', 'Hamka', 'Balai Pustaka', '1961', 'Klasik', 9),
('B042', 'Gerbang', 'Andrea Hirata', 'Bentang Pustaka', '2015', 'Fiksi', 13),
('B043', 'Tenggelamnya Kapal Van der Wijck', 'Hamka', 'Balai Pustaka', '1939', 'Klasik', 20),
('B044', 'Gara-Gara Cinta', 'Pidi Baiq', 'Pastel Books', '2018', 'Romantis', 22),
('B045', 'Hujan di Tengah Hari', 'Leila S. Chudori', 'Kepustakaan Populer Gramedia', '2022', 'Fiksi', 18),
('B046', 'Cerita Cinta', 'Dewi Lestari', 'Bentang Pustaka', '2019', 'Romantis', 15),
('B047', 'Cinta di Langit Mediterania', 'Asma Nadia', 'Republika', '2018', 'Romantis', 12),
('B048', 'Bumi', 'Tere Liye', 'Republika', '2021', 'Fiksi', 20),
('B049', 'The Blue', 'Dee Lestari', 'Bentang Pustaka', '2018', 'Fiksi', 14),
('B050', 'Belenggu', 'Armijn Pane', 'Balai Pustaka', '1940', 'Klasik', 8),
('B051', 'Kehidupan Pura-Pura', 'Putu Wijaya', 'Gramedia', '2021', 'Fiksi', 16),
('B052', 'Dua Dunia', 'Tere Liye', 'Republika', '2017', 'Fiksi', 18),
('B053', 'Pulau Satu', 'Ika Natassa', 'HarperCollins', '2020', 'Fiksi', 15),
('B054', 'Ada Apa dengan Cinta?', 'Dewi Lestari', 'Bentang Pustaka', '2019', 'Romantis', 19),
('B055', 'Rindu Tak Berujung', 'Asma Nadia', 'Republika', '2022', 'Fiksi', 13),
('B056', 'Kisah Cinta di Paris', 'Leila S. Chudori', 'Kepustakaan Populer Gramedia', '2021', 'Romantis', 14),
('B057', 'Panggil Aku Cinta', 'Pidi Baiq', 'Pastel Books', '2016', 'Romantis', 17),
('B058', 'Sebuah Cerita dari Surga', 'Tere Liye', 'Republika', '2020', 'Fiksi', 16),
('B059', 'Selamat Tinggal', 'Leila S. Chudori', 'Kepustakaan Populer Gramedia', '2022', 'Fiksi', 15),
('B060', 'Menunggu di Balik Pintu', 'Asma Nadia', 'Republika', '2021', 'Fiksi', 14),
('B061', 'Ketika Cinta Bertasbih', 'Habiburrahman El Shirazy', 'Kharisma', '2009', 'Romantis', 19),
('B062', 'Jangan Menangis', 'Putu Wijaya', 'Kompas', '2017', 'Fiksi', 18),
('B063', 'Kilas Balik', 'Raditya Dika', 'Diva Press', '2020', 'Humor', 16),
('B064', 'Tuan Tanah', 'Andrea Hirata', 'Bentang Pustaka', '2016', 'Fiksi', 12),
('B065', 'Keluarga Angkat', 'Ika Natassa', 'HarperCollins', '2019', 'Fiksi', 20),
('B066', 'Bintang di Langit', 'Tere Liye', 'Republika', '2019', 'Fiksi', 22),
('B067', 'Bumi dan Bulan', 'Leila S. Chudori', 'Kepustakaan Populer Gramedia', '2021', 'Fiksi', 15),
('B068', 'Kekasih yang Hilang', 'Dee Lestari', 'Bentang Pustaka', '2022', 'Romantis', 13),
('B069', 'Rasa', 'Pidi Baiq', 'Pastel Books', '2018', 'Romantis', 17),
('B070', 'Sewindu', 'Tere Liye', 'Republika', '2022', 'Fiksi', 18),
('B071', 'Cinta Sejati', 'Asma Nadia', 'Republika', '2018', 'Romantis', 14),
('B072', 'Buku Harian', 'Leila S. Chudori', 'Kepustakaan Populer Gramedia', '2021', 'Fiksi', 16),
('B073', 'Mimpi di Atas Awan', 'Andrea Hirata', 'Bentang Pustaka', '2017', 'Fiksi', 15),
('B074', 'Penghujung Rindu', 'Tere Liye', 'Republika', '2021', 'Fiksi', 20),
('B075', 'Senja di Bumi Pertiwi', 'Dewi Lestari', 'Bentang Pustaka', '2022', 'Romantis', 14);

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjaman`
--

CREATE TABLE `peminjaman` (
  `BorrowID` char(6) COLLATE utf8mb4_general_ci NOT NULL,
  `BookID` char(5) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `MemberID` char(5) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `BorrowDate` date DEFAULT NULL,
  `ReturnDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `peminjaman`
--

INSERT INTO `peminjaman` (`BorrowID`, `BookID`, `MemberID`, `BorrowDate`, `ReturnDate`) VALUES
('BR001', 'B008', 'AN001', '2024-07-01', '2024-07-15'),
('BR002', 'B002', 'AN002', '2024-07-03', '2024-07-18'),
('BR003', 'B011', 'AN003', '2024-07-07', NULL),
('BR004', 'B014', 'AN004', '2024-07-10', '2024-07-25'),
('BR005', 'B007', 'AN005', '2024-07-12', '2024-07-29'),
('BR006', 'B005', 'AN006', '2024-07-15', '2024-08-01'),
('BR007', 'B010', 'AN007', '2024-07-18', '2024-08-10'),
('BR008', 'B012', 'AN008', '2024-07-20', NULL),
('BR009', 'B013', 'AN009', '2024-07-23', '2024-08-05'),
('BR010', 'B001', 'AN010', '2024-07-25', '2024-08-15'),
('BR011', 'B003', 'AN001', '2024-07-27', '2024-08-10'),
('BR012', 'B006', 'AN002', '2024-08-01', '2024-08-20'),
('BR013', 'B015', 'AN003', '2024-08-02', '2024-08-17'),
('BR014', 'B009', 'AN004', '2024-08-04', NULL),
('BR015', 'B007', 'AN005', '2024-08-07', '2024-08-25'),
('BR016', 'B008', 'AN006', '2024-08-10', '2024-08-30'),
('BR017', 'B011', 'AN007', '2024-08-12', NULL),
('BR018', 'B013', 'AN008', '2024-08-14', '2024-08-28'),
('BR019', 'B002', 'AN009', '2024-08-15', '2024-08-31'),
('BR020', 'B014', 'AN010', '2024-08-18', NULL),
('BR021', 'B010', 'AN001', '2024-08-20', '2024-08-30'),
('BR022', 'B003', 'AN002', '2024-08-22', NULL),
('BR023', 'B006', 'AN003', '2024-08-25', '2024-08-31'),
('BR024', 'B012', 'AN004', '2024-08-26', NULL),
('BR025', 'B013', 'AN005', '2024-08-27', '2024-08-31'),
('BR026', 'B007', 'AN006', '2024-08-28', NULL),
('BR027', 'B005', 'AN007', '2024-08-30', NULL),
('BR028', 'B001', 'AN008', '2024-08-01', '2024-08-15'),
('BR029', 'B015', 'AN009', '2024-08-03', '2024-08-17'),
('BR030', 'B008', 'AN010', '2024-08-05', '2024-08-20'),
('BR031', 'B014', 'AN001', '2024-08-08', '2024-08-23'),
('BR032', 'B009', 'AN002', '2024-08-10', '2024-08-26'),
('BR033', 'B003', 'AN003', '2024-08-12', NULL),
('BR034', 'B011', 'AN004', '2024-08-15', '2024-08-31'),
('BR035', 'B010', 'AN005', '2024-08-17', NULL),
('BR036', 'B015', 'AN006', '2024-08-20', '2024-08-30'),
('BR037', 'B012', 'AN007', '2024-08-22', '2024-08-31'),
('BR038', 'B007', 'AN008', '2024-08-25', NULL),
('BR039', 'B005', 'AN009', '2024-08-27', '2024-08-31'),
('BR040', 'B013', 'AN010', '2024-08-30', NULL),
('BR041', 'B006', 'AN001', '2024-08-01', '2024-08-15'),
('BR042', 'B010', 'AN002', '2024-08-03', NULL),
('BR043', 'B001', 'AN003', '2024-08-06', '2024-08-20'),
('BR044', 'B008', 'AN004', '2024-08-09', '2024-08-23'),
('BR045', 'B014', 'AN005', '2024-08-12', NULL),
('BR046', 'B007', 'AN006', '2024-08-15', '2024-08-31'),
('BR047', 'B013', 'AN007', '2024-08-18', '2024-08-31'),
('BR048', 'B009', 'AN008', '2024-08-21', NULL),
('BR049', 'B005', 'AN009', '2024-08-23', '2024-08-31'),
('BR050', 'B011', 'AN010', '2024-08-26', NULL),
('BR051', 'B012', 'AN001', '2024-08-28', '2024-08-31'),
('BR052', 'B006', 'AN002', '2024-08-29', NULL),
('BR053', 'B001', 'AN003', '2024-08-30', '2024-08-31'),
('BR054', 'B007', 'AN004', '2024-08-31', NULL),
('BR055', 'B015', 'AN005', '2024-08-01', '2024-08-15'),
('BR056', 'B010', 'AN006', '2024-08-03', '2024-08-17'),
('BR057', 'B003', 'AN007', '2024-08-05', '2024-08-20'),
('BR058', 'B009', 'AN008', '2024-08-08', NULL),
('BR059', 'B008', 'AN009', '2024-08-10', '2024-08-25'),
('BR060', 'B012', 'AN010', '2024-08-12', NULL),
('BR061', 'B013', 'AN001', '2024-08-14', '2024-08-31'),
('BR062', 'B015', 'AN002', '2024-08-16', NULL),
('BR063', 'B005', 'AN003', '2024-08-18', '2024-08-31'),
('BR064', 'B003', 'AN004', '2024-08-20', NULL),
('BR065', 'B007', 'AN005', '2024-08-22', '2024-08-31'),
('BR066', 'B010', 'AN006', '2024-08-24', NULL),
('BR067', 'B014', 'AN007', '2024-08-26', '2024-08-31'),
('BR068', 'B006', 'AN008', '2024-08-28', NULL),
('BR069', 'B001', 'AN009', '2024-08-30', '2024-08-31'),
('BR070', 'B008', 'AN010', '2024-08-31', NULL),
('BR071', 'B013', 'AN001', '2024-08-01', '2024-08-15'),
('BR072', 'B005', 'AN002', '2024-08-02', '2024-08-16'),
('BR073', 'B009', 'AN003', '2024-08-03', NULL),
('BR074', 'B014', 'AN004', '2024-08-04', '2024-08-18'),
('BR075', 'B012', 'AN005', '2024-08-05', '2024-08-20'),
('BR076', 'B007', 'AN006', '2024-08-06', '2024-08-21'),
('BR077', 'B010', 'AN007', '2024-08-07', '2024-08-22'),
('BR078', 'B015', 'AN008', '2024-08-08', NULL),
('BR079', 'B003', 'AN009', '2024-08-09', '2024-08-23'),
('BR080', 'B006', 'AN010', '2024-08-10', NULL),
('BR081', 'B008', 'AN001', '2024-08-11', '2024-08-25'),
('BR082', 'B011', 'AN002', '2024-08-12', '2024-08-30'),
('BR083', 'B012', 'AN003', '2024-08-13', NULL),
('BR084', 'B014', 'AN004', '2024-08-14', '2024-08-31'),
('BR085', 'B009', 'AN005', '2024-08-15', '2024-08-31'),
('BR086', 'B007', 'AN006', '2024-08-16', NULL),
('BR087', 'B015', 'AN007', '2024-08-17', '2024-08-31'),
('BR088', 'B003', 'AN008', '2024-08-18', NULL),
('BR089', 'B010', 'AN009', '2024-08-19', '2024-08-31'),
('BR090', 'B008', 'AN010', '2024-08-20', NULL),
('BR091', 'B006', 'AN001', '2024-08-21', '2024-08-31'),
('BR092', 'B012', 'AN002', '2024-08-22', NULL),
('BR093', 'B011', 'AN003', '2024-08-23', '2024-08-31'),
('BR094', 'B013', 'AN004', '2024-08-24', NULL),
('BR095', 'B015', 'AN005', '2024-08-25', '2024-08-31'),
('BR096', 'B003', 'AN006', '2024-08-26', NULL),
('BR097', 'B007', 'AN007', '2024-08-27', '2024-08-31'),
('BR098', 'B009', 'AN008', '2024-08-28', NULL),
('BR099', 'B014', 'AN009', '2024-08-29', '2024-08-31'),
('BR100', 'B012', 'AN010', '2024-08-30', NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`MemberID`);

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`BookID`);

--
-- Indeks untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`BorrowID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
