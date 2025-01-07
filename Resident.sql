-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 13 Des 2024 pada 04.36
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Resident`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `diskusi`
--

CREATE TABLE `diskusi` (
  `id` int(11) NOT NULL,
  `sender_name` varchar(100) DEFAULT NULL,
  `topic_title` varchar(255) DEFAULT NULL,
  `topic_content` text DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `diskusi`
--

INSERT INTO `diskusi` (`id`, `sender_name`, `topic_title`, `topic_content`, `parent_id`, `created_at`) VALUES
(23, 'kur', 'air keruh', 'iya nih... air di rumah gua keruh jugaa', NULL, '2024-11-13 07:11:19'),
(24, 'aleq', 'air keruh', 'udh 3 hari ini airnya keruh ', NULL, '2024-11-13 07:11:50'),
(25, 'zea', 'air keruh', 'ada yang udah lapor belum?\r\n', NULL, '2024-11-13 07:12:55'),
(26, 'kur', 'air keruh', 'gua udh coba lapor sih tinggal tunggu balesannya aja gess', NULL, '2024-11-13 07:14:35'),
(29, 'Admin', 'Balasan untuk kur', 'baik bapak/ibu, saat ini kami sedang memperoses pelaporannya 🙏🏼', 26, '2024-11-13 07:18:53');

-- --------------------------------------------------------

--
-- Struktur dari tabel `Login`
--

CREATE TABLE `Login` (
  `Iduser` int(11) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelaporan`
--

CREATE TABLE `pelaporan` (
  `id` int(11) NOT NULL,
  `pengirim` varchar(100) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `kategori` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `tanggal` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` varchar(20) DEFAULT 'Belum Ditangani'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pelaporan`
--

INSERT INTO `pelaporan` (`id`, `pengirim`, `judul`, `kategori`, `deskripsi`, `tanggal`, `created_at`, `status`) VALUES
(3, 'User 1', 'banyak hama serangga', 'Masalah Kebersihan', 'banyak hama kecoa', '2024-11-06', '2024-11-07 05:21:51', 'Selesai'),
(4, 'User 1', 'banyak hama serangga', 'Masalah Kebersihan', 'banyak tikus di sekitar komplek', '2024-11-08', '2024-11-08 12:14:41', 'Diproses'),
(5, 'User 1', 'banyak hama serangga', 'Masalah Kebersihan', 'banyak nyamuk', '2024-11-10', '2024-11-11 10:40:28', 'Diproses'),
(6, 'User 1', 'air keruh ', 'Masalah Kebersihan', 'sudah 3 hari ini air di seluruh komplek sedang keruh', '2024-11-13', '2024-11-13 07:20:42', 'Selesai'),
(7, 'User 1', 'Banyak nyamuk', 'Masalah Kebersihan', 'banyak nyamuk malaria', '2024-11-25', '2024-11-25 04:10:10', 'Belum Ditangani');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penghuni`
--

CREATE TABLE `penghuni` (
  `idpenghuni` int(11) NOT NULL,
  `namalengkap` varchar(100) NOT NULL,
  `jeniskelamin` char(10) DEFAULT NULL,
  `tanggallahir` date NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `notelp` varchar(15) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `penghuni`
--

INSERT INTO `penghuni` (`idpenghuni`, `namalengkap`, `jeniskelamin`, `tanggallahir`, `alamat`, `email`, `notelp`, `status`) VALUES
(1, 'Yuyun Hadianti', 'Perempuan', '1987-08-12', 'Jalan Cove 1 No 1', 'yuyun.hadianti@email.com', '+6281292099597', 'Sewa'),
(2, 'Maraden Reza Dwiputra', 'Laki-laki', '1990-06-05', 'Jalan Cove 1 No 2', 'maraden.dwiputra@email.com', '+6281222779997', 'Sewa'),
(3, 'Ary Setiawan', 'Laki-laki', '1993-03-17', 'Jalan Cove 1 No 3', 'ary.setiawan@email.com', '+6283892178917', 'Pemilik'),
(4, 'Deni Pratama', 'Laki-laki', '1991-01-28', 'Jalan Cove 1 No 5', 'deni.pratama@email.com', '+6285939557232', 'Sewa'),
(5, 'Ferdiansyah', 'Laki-laki', '1989-09-15', 'Jalan Cove 1 No 6', 'ferdiansyah@email.com', '+6282112123441', 'Pemilik'),
(6, 'Bewiliant Fransiska Mait', 'Perempuan', '1994-11-22', 'Jalan Cove 1 No 7', 'bewiliant.mait@email.com', '+6281903465070', 'Sewa'),
(7, 'Joshua Laurensius Pratama', 'Laki-laki', '1992-04-30', 'Jalan Cove 1 No 8', 'joshua.pratama@email.com', '+6281291464416', 'Sewa'),
(8, 'Ahmad Fachrista Purba', 'Laki-laki', '1995-07-19', 'Jalan Cove 1 No 9', 'ahmad.purba@email.com', '+6282113916591', 'Sewa'),
(9, 'Siti Noerchaeny', 'Perempuan', '1986-03-03', 'Jalan Cove 1 No 10', 'siti.noerchaeny@email.com', '+6281393070933', 'Pemilik'),
(10, 'dr. Kalis Waren', 'Laki-laki', '1983-02-11', 'Jalan Cove 1 No 11', 'kalis.waren@email.com', '+6281298822522', 'Sewa'),
(11, 'Yohana Setiawan', 'Perempuan', '1992-07-12', 'Jalan Cove 1 No 15', 'yohana.setiawan@email.com', '+6289660522967', 'Pemilik'),
(12, 'Neltjie Joan Mariana Hosang', 'Perempuan', '1988-02-25', 'Jalan Cove 1 No 17', 'neltjie.hosang@email.com', '+628113815055', 'Sewa'),
(13, 'Robby Cahyadi Kusnandar', 'Laki-laki', '1991-11-10', 'Jalan Cove 2 No 1', 'robby.kusnandar@email.com', '+6287882552898', 'Pemilik'),
(14, 'Yudha Pristanto', 'Laki-laki', '1987-06-18', 'Jalan Cove 2 No 2', 'yudha.pristanto@email.com', '+628111717464', 'Sewa'),
(15, 'Steffi Gabriella', 'Perempuan', '1993-01-15', 'Jalan Cove 2 No 3', 'steffi.gabriella@email.com', '+6281310271623', 'Pemilik'),
(16, 'Noah Gilrandy Revevalin', 'Laki-laki', '1995-03-05', 'Jalan Cove 2 No 5', 'noah.revevalin@email.com', '+6281310271623', 'Sewa'),
(17, 'Indah Tanti Permana', 'Perempuan', '1990-09-20', 'Jalan Cove 2 No 6', 'indah.permana@email.com', '+628170148942', 'Pemilik'),
(18, 'Ika Kartika', 'Perempuan', '1989-05-11', 'Jalan Cove 2 No 7', 'ika.kartika@email.com', '+6281239069197', 'Sewa'),
(19, 'Susanti Haryanto Theodore', 'Perempuan', '1988-12-28', 'Jalan Cove 2 No 8', 'susanti.theodore@email.com', '+628121031864', 'Pemilik'),
(20, 'Eva Christania', 'Perempuan', '1991-04-09', 'Jalan Cove 2 No 9', 'eva.christania@email.com', '+6281282635667', 'Sewa'),
(21, 'Bella Barzeera Taurizh', 'Perempuan', '1994-08-17', 'Jalan Cove 2 No 11', 'bella.taurizh@email.com', '+6285719423235', 'Pemilik'),
(22, 'Helsa', 'Perempuan', '1992-03-22', 'Jalan Cove 2 No 15', 'helsa@email.com', '+628111341187', 'Sewa'),
(23, 'Tania Agnesa', 'Perempuan', '1990-07-01', 'Jalan Cove 2 No 17', 'tania.agnesa@email.com', '+6282246299140', 'Pemilik'),
(24, 'Iwan Seciady & Michelia Violina', 'Laki-laki', '1987-11-09', 'Jalan Cove 2 No 19', 'iwan.violina@email.com', '+6281807349556', 'Sewa'),
(25, 'Jefta Jasson Sutanto', 'Laki-laki', '1992-06-14', 'Jalan Cove 2 No 21', 'jefta.sutanto@email.com', '+6282111172291', 'Pemilik'),
(26, 'Willy', 'Laki-laki', '1990-02-02', 'Jalan Cove 3 No 1', 'willy@email.com', '+6287820031972', 'Sewa'),
(27, 'Radiawanto', 'Laki-laki', '1988-10-15', 'Jalan Cove 3 No 2', 'radiawanto@email.com', '+6281315515186', 'Pemilik'),
(28, 'Richard', 'Laki-laki', '1993-07-25', 'Jalan Cove 3 No 3', 'richard@email.com', '+6287777115550', 'Sewa'),
(29, 'Yosea Riyadi Permana', 'Laki-laki', '1994-09-09', 'Jalan Cove 3 No 5', 'yosea.permana@email.com', '+6285886133613', 'Pemilik'),
(30, 'Ghina Firyal', 'Perempuan', '1995-12-01', 'Jalan Cove 3 No 6', 'ghina.firyal@email.com', '+6285691926381', 'Sewa'),
(31, 'Elysabeth Stevany', 'Perempuan', '1987-08-08', 'Jalan Cove 3 No 7', 'elysabeth.stevany@email.com', '+6285794112007', 'Pemilik'),
(32, 'Kenny Soangkupon', 'Laki-laki', '1991-05-05', 'Jalan Cove 3 No 8', 'kenny.soangkupon@email.com', '+628111680077', 'Sewa'),
(33, 'Eva', 'Perempuan', '1989-04-14', 'Jalan Cove 3 No 9', 'eva@email.com', '+6281586577736', 'Pemilik'),
(34, 'Nessya', 'Perempuan', '1993-11-30', 'Jalan Cove 3 No 10', 'nessya@email.com', '+628118622397', 'Sewa'),
(35, 'S. Jadiaman Sihombing', 'Laki-laki', '1988-03-27', 'Jalan Cove 3 No 11', 'jadiaman.sihombing@email.com', '+6281293920486', 'Pemilik'),
(36, 'Agus Susanto', 'Laki-laki', '1986-02-16', 'Jalan Cove 3 No 12', 'agus.susanto@email.com', '+6281385179912', 'Sewa'),
(37, 'Shelvia & Toni Citradinata', 'Laki-laki', '1990-08-18', 'Jalan Cove 3 No 15', 'shelvia.toni@email.com', '+6281807770109', 'Pemilik'),
(38, 'Bayu Putut Tri Nugroho', 'Laki-laki', '1995-06-29', 'Jalan Cove 3 No 16', 'bayu.nugroho@email.com', '+6285811516948', 'Sewa'),
(39, 'Enggriyeti', 'Perempuan', '1992-01-08', 'Jalan Cove 3 No 17', 'enggriyeti@email.com', '+6287809346991', 'Pemilik'),
(40, 'Fakhri Mawaridi', 'Laki-laki', '1994-10-19', 'Jalan Cove 3 No 18', 'fakhri.mawaridi@email.com', '+6287723890049', 'Sewa'),
(73, 'Fenny Pantjanata', 'Perempuan', '1995-05-10', 'Cove 03 No 1', 'fennypantjanata@email.com', '+6287832366222', 'Pemilik'),
(74, 'Annisa Azmi', 'Perempuan', '1992-08-20', 'Cove 03 No 2', 'annisaazmi@email.com', '+6281253443932', 'Pemilik'),
(75, 'Meygi Herdiana Sutomo', 'Laki-laki', '1990-11-05', 'Cove 03 No 3', 'meygiherdianasutomo@email.com', '+6281316596885', 'Pemilik'),
(76, 'Yuwisson Mulyono', 'Laki-laki', '1988-07-12', 'Cove 03 No 4', 'yuwissonmulyono@email.com', '+6281222783151', 'Pemilik'),
(77, 'David', 'Laki-laki', '1993-02-18', 'Cove 03 No 5', 'david@email.com', '+6281807058118', 'Pemilik'),
(78, 'Antonius Susiyanto', 'Laki-laki', '1991-01-07', 'Cove 03 No 6', 'antoniussusiyanto@email.com', '+6281215960489', 'Pemilik'),
(79, 'Syntia', 'Perempuan', '1994-12-25', 'Cove 03 No 7', 'syntia@email.com', '+6287785560932', 'Pemilik'),
(80, 'Revydo Yogi Ganesha', 'Laki-laki', '1990-09-16', 'Cove 03 No 8', 'revydoyogiganesha@email.com', '+6281223505999', 'Pemilik'),
(81, 'Susanwati', 'Perempuan', '1992-04-30', 'Cove 03 No 9', 'susanwati@email.com', '+628115973376', 'Pemilik'),
(82, 'Monica', 'Perempuan', '1989-11-11', 'Cove 03 No 10', 'monica@email.com', '+6281217222899', 'Pemilik'),
(83, 'Kurniawan Ihsan Loputra', 'Laki-laki', '1991-02-17', 'Cove 03 No 11', 'kurniawanihsanloputra@email.com', '+6285289413181', 'Pemilik'),
(84, 'Indriyanti', 'Perempuan', '1994-06-04', 'Cove 03 No 12', 'indriyanti@email.com', '+6281299409925', 'Pemilik'),
(85, 'Yustina Ayu Lestari Anggoro Putri', 'Perempuan', '1990-10-14', 'Cove 03 No 13', 'yustinaayulestarianggoroputri@email.com', '+6281382678282', 'Pemilik'),
(86, 'Josh William', 'Laki-laki', '1989-12-02', 'Cove 03 No 14', 'joshwilliam@email.com', '+6281808170907', 'Pemilik'),
(87, 'Joshua Enrico', 'Laki-laki', '1995-04-22', 'Cove 03 No 19', 'joshuaenrico@email.com', '+6285871999383', 'Pemilik'),
(88, 'Candra Setiawan', 'Laki-laki', '1989-06-30', 'Cove 03 No 20', 'candrasetiawan@email.com', '+6285939578606', 'Pemilik'),
(89, 'Julius Tantos', 'Laki-laki', '1990-08-11', 'Cove 03 No 21', 'juliustantos@email.com', '+628998896668', 'Pemilik'),
(90, 'Leonardo Yusnanda Thennar', 'Laki-laki', '1992-05-23', 'Cove 03 No 22', 'leonardoyusnandathennar@email.com', '+6287882434054', 'Pemilik'),
(91, 'Vinny Budiman', 'Perempuan', '1994-03-08', 'Cove 03 No 23', 'vinnybudiman@email.com', '+6281280831871', 'Pemilik'),
(92, 'Ryval Aryyan Vebwar Vermana', 'Laki-laki', '1991-09-17', 'Cove 03 No 24', 'ryvalaryyanvebwarvermana@email.com', '+628119940901', 'Pemilik'),
(93, 'Yunita Hadisuwarsa', 'Perempuan', '1993-12-02', 'Cove 03 No 25', 'yunitahadisuwarsa@email.com', '+6281219991907', 'Pemilik'),
(94, 'Mei Li', 'Perempuan', '1990-01-04', 'Cove 03 No 26', 'meili@email.com', '+6281283760099', 'Pemilik'),
(95, 'William Kurniawan', 'Laki-laki', '1989-03-22', 'Cove 03 No 27', 'williamkurniawan@email.com', '+628121800642', 'Pemilik'),
(96, 'Ardy', 'Laki-laki', '1992-05-14', 'Cove 03 No 28', 'ardy@email.com', '+628118889072', 'Pemilik'),
(97, 'Ni Luh Made Agustini Leonita', 'Perempuan', '1994-09-19', 'Cove 03 No 29', 'niluhmadeagustinileonita@email.com', '+6281911174374', 'Pemilik'),
(98, 'Muhammad Ilsyar Ridwan', 'Laki-laki', '1993-06-10', 'Cove 03 No 30', 'muhammadilsyarridwan@email.com', '+628891279849', 'Pemilik'),
(99, 'Zulham Nasution', 'Laki-laki', '1990-10-21', 'Cove 03 No 31', 'zulhamnasution@email.com', '+6281585025020', 'Pemilik'),
(100, 'Azhari Zaki Al-Qadri', 'Laki-laki', '1992-02-13', 'Cove 03 No 32', 'azharizakial-qadri@email.com', '+6281380332113', 'Pemilik'),
(134, 'Elisabeth Kristanti', 'Perempuan', '1995-07-22', 'Cove 06 No 2', 'elisabethkristanti@email.com', '+6287777889433', 'Pemilik'),
(135, 'Marcelinus Chandra RTD', 'Laki-laki', '1992-11-16', 'Cove 06 No 3', 'marcelinuschandra@email.com', '+6281905030294', 'Pemilik'),
(136, 'Ami', 'Perempuan', '1994-04-05', 'Cove 06 No 5', 'ami@email.com', '+6281389071660', 'Pemilik'),
(137, 'Alfred Henza', 'Laki-laki', '1991-09-23', 'Cove 06 No 6', 'alfredhenza@email.com', '+6282110974837', 'Pemilik'),
(138, 'Magdalena', 'Perempuan', '1993-12-30', 'Cove 06 No 7', 'magdalena@email.com', '+6287871152952', 'Pemilik'),
(139, 'Quirina Novianty', 'Perempuan', '1990-03-16', 'Cove 06 No 8', 'quirinanovianty@email.com', '+6283170846522', 'Pemilik'),
(140, 'Richard Wijaya', 'Laki-laki', '1989-07-14', 'Cove 06 No 9', 'richardwijaya@email.com', '+628170700788', 'Pemilik'),
(141, 'Victorius Trio dan Vesakha Ingrid Tandias', 'Laki-laki', '1990-06-25', 'Cove 06 No 10', 'victoriusvesakha@email.com', '+6281317677779', 'Pemilik'),
(142, 'Hilda Harsono', 'Perempuan', '1991-05-13', 'Cove 06 No 12', 'hildaharsono@email.com', '+6287784059588', 'Pemilik'),
(143, 'Roy Tumewan', 'Laki-laki', '1992-02-19', 'Cove 06 No 16', 'roytumewan@email.com', '+6285255525222', 'Pemilik'),
(144, 'Maria Lesmana', 'Perempuan', '1994-08-08', 'Cove 06 No 17', 'marialesmana@email.com', '+6281287259155', 'Pemilik'),
(145, 'Nidya', 'Perempuan', '1991-12-13', 'Cove 06 No 18', 'nidya@email.com', '+6285692070559', 'Pemilik'),
(146, 'Yulie', 'Perempuan', '1990-10-11', 'Cove 06 No 19', 'yulie@email.com', '+6281285381168', 'Pemilik'),
(147, 'Albert Lesmana', 'Laki-laki', '1989-03-20', 'Cove 06 No 20', 'albertlesmana@email.com', '+628118897272', 'Pemilik'),
(148, 'Ade Andreas', 'Laki-laki', '1992-06-10', 'Cove 06 No 22', 'adeandreas@email.com', '+628129398269', 'Pemilik'),
(149, 'Anton Siswo', 'Laki-laki', '1994-04-29', 'Cove 06 No 25', 'antonsiswo@email.com', '+6281386889846', 'Pemilik'),
(150, 'Joni', 'Laki-laki', '1993-11-15', 'Cove 06 No 26', 'joni@email.com', '+6281908316966', 'Pemilik'),
(151, 'Helen', 'Perempuan', '1991-01-24', 'Cove 06 No 27', 'helen@email.com', '+6289636187827', 'Pemilik'),
(152, 'Andri', 'Laki-laki', '1990-08-02', 'Cove 06 No 28', 'andri@email.com', '+6281310323564', 'Pemilik'),
(153, 'Jerry', 'Laki-laki', '1992-09-05', 'Cove 06 No 29', 'jerry@email.com', '+6287771177958', 'Pemilik'),
(154, 'Nathan Gabriel Gumulya', 'Laki-laki', '1993-12-20', 'Cove 06 No 30', 'nathangabrielgumulya@email.com', '+6282131919718', 'Pemilik'),
(155, 'Arie Susanto', 'Laki-laki', '1991-11-14', 'Cove 06 No 31', 'ariesusanto@email.com', '+62817788588', 'Pemilik'),
(156, 'Benny Soekarno Thiobuana', 'Laki-laki', '1992-07-22', 'Cove 06 No 32', 'bennysoekarnothiobuana@email.com', '+6287786250758', 'Pemilik'),
(157, 'Gideon', 'Laki-laki', '1994-01-10', 'Cove 06 No 33', 'gideon@email.com', '+6281294444278', 'Pemilik'),
(158, 'Welli Hansa', 'Laki-laki', '1992-11-20', 'Cove 06 No 35', 'wellihansa@email.com', '+6287700083712', 'Pemilik'),
(159, 'Elis Setyawati', 'Perempuan', '1990-06-17', 'Cove 06 No 36', 'elissetyawati@email.com', '+6287700030712', 'Pemilik'),
(160, 'Jaya Soedjinto', 'Laki-laki', '1993-10-14', 'Cove 06 No 37', 'jayasoedjinto@email.com', '+6282157000546', 'Pemilik'),
(161, 'Mentari Sri Wahyuni Tobing', 'Perempuan', '1995-03-12', 'Cove 07 No 1', 'mentarisriwahyunitobing@email.com', '+6285277796682', 'Pemilik'),
(162, 'Dennice Alfian', 'Laki-laki', '1992-02-20', 'Cove 07 No 2', 'dennicealfian@email.com', '+6281282990257', 'Pemilik'),
(163, 'Liem Giok Lien Nio', 'Perempuan', '1993-09-05', 'Cove 07 No 3', 'liemgiokliennio@email.com', '+628979318007', 'Pemilik'),
(164, 'Reinhart Jesayas Octavianus', 'Laki-laki', '1991-12-25', 'Cove 07 No 5', 'reinhartjesayasoctavianus@email.com', '+6287882157840', 'Pemilik'),
(165, 'Elly sukiwan', 'Perempuan', '1990-06-11', 'Cove 07 No 6', 'ellysukiwan@email.com', '+62895607495482', 'Pemilik'),
(166, 'Naomi Hosana Wiliam', 'Perempuan', '1993-04-18', 'Cove 07 No 7', 'naomihosanawiliam@email.com', '+6287888517588', 'Pemilik'),
(167, 'Alexander', 'Laki-laki', '1992-07-25', 'Cove 07 No 8', 'alexander@email.com', '+6287887163116', 'Pemilik'),
(168, 'Richard Tasib', 'Laki-laki', '1990-05-17', 'Cove 07 No 9', 'richardtasib@email.com', '+6281214757351', 'Pemilik'),
(169, 'Sutoyo', 'Laki-laki', '1993-02-21', 'Cove 07 No 10', 'sutoyo@email.com', '+6287879989899', 'Pemilik'),
(170, 'Hardy Surjadi', 'Laki-laki', '1991-04-10', 'Cove 07 No 11', 'hardysurjadi@email.com', '+6281281696644', 'Pemilik'),
(171, 'Reni', 'Perempuan', '1992-11-30', 'Cove 07 No 12', 'reni@email.com', '+6281250004462', 'Pemilik'),
(172, 'Khemasilani', 'Perempuan', '1994-08-15', 'Cove 07 No 15', 'khemasilani@email.com', '+6281398519522', 'Pemilik'),
(173, 'Sien Nie', 'Perempuan', '1991-09-25', 'Cove 07 No 16', 'siennie@email.com', '+6287888688969', 'Pemilik'),
(174, 'Rosalina Wijaya', 'Perempuan', '1993-05-18', 'Cove 07 No 17', 'rosalinawijaya@email.com', '+6281298617615', 'Pemilik'),
(175, 'Jefferson Kurnia', 'Laki-laki', '1990-12-14', 'Cove 07 No 18', 'jeffersonkurnia@email.com', '+6288908891235', 'Pemilik'),
(176, 'Anastasia W Lesmana Thio', 'Perempuan', '1992-06-03', 'Cove 07 No 19', 'anastasiawlesmanathio@email.com', '+62215358747', 'Pemilik'),
(177, 'Ricki Wijaya', 'Laki-laki', '1991-07-09', 'Cove 07 No 20', 'rickiwijaya@email.com', '+6287788008686', 'Pemilik'),
(178, 'Dipl. Ing. Dian Nur Rizki, ST', 'Laki-laki', '1994-01-17', 'Cove 07 No 21', 'dianrizki@email.com', '+6281219512349', 'Pemilik'),
(179, 'Gregorius Berlian Khoreson Kusuma Wirawan', 'Laki-laki', '1992-02-22', 'Cove 07 No 22', 'gregoriusberlian@email.com', '+6285669966057', 'Pemilik'),
(180, 'Sharon Angelica', 'Perempuan', '1993-10-07', 'Cove 07 No 26', 'sharonangelica@email.com', '+6281311070907', 'Pemilik'),
(181, 'Nivita Kurniawan', 'Perempuan', '1995-05-25', 'Cove 08 No 1', 'nivita@email.com', '+6287876886186', 'Pemilik'),
(182, 'Aryo Wibisono', 'Laki-laki', '1990-03-04', 'Cove 08 No 2', 'aryowibisono@email.com', '+6282173808912', 'Pemilik'),
(183, 'Fefdy', 'Laki-laki', '1991-07-09', 'Cove 08 No 3', 'fefdy@email.com', '+6285778885188', 'Pemilik'),
(184, 'Stefanus Rocky', 'Laki-laki', '1992-08-18', 'Cove 08 No 5', 'stefanusrocky@email.com', '+6281212102961', 'Pemilik'),
(185, 'Jansen Wiratama', 'Laki-laki', '1990-11-29', 'Cove 08 No 6', 'jansenwiratama@email.com', '+6283165078999', 'Pemilik'),
(186, 'Eko Budianto Sanjaya', 'Laki-laki', '1991-03-10', 'Cove 08 No 7', 'ekobudiantosanjaya@email.com', '+6287773629023', 'Pemilik'),
(187, 'Riestianti', 'Perempuan', '1993-09-23', 'Cove 08 No 11', 'riestianti@email.com', '+6281218155446', 'Pemilik'),
(188, 'Feby Veronika & Vincent Christoffer', 'Perempuan', '1992-01-18', 'Cove 08 No 12', 'febyveronika@email.com', '+6287854247861', 'Pemilik'),
(189, 'Yudha Dwiputra Kurniawan', 'Laki-laki', '1994-10-15', 'Cove 08 No 15', 'yudhadwiputrakurniawan@email.com', '+6283899011005', 'Pemilik'),
(190, 'Willy Tasdin', 'Laki-laki', '1992-07-30', 'Cove 08 No 17', 'willytasdin@email.com', '+6287889000897', 'Pemilik'),
(191, 'Kha Mui', 'Perempuan', '1990-12-05', 'Cove 08 No 21', 'khamui@email.com', '+6281315246898', 'Pemilik'),
(192, 'Erwin', 'Laki-laki', '1991-06-01', 'Cove 08 No 26', 'erwin@email.com', '+6281905587963', 'Pemilik'),
(193, 'Maria Sene', 'Perempuan', '1993-03-18', 'Cove 08 No 28', 'mariasene@email.com', '+6281392343418', 'Pemilik'),
(194, 'Lifana Clarissa', 'Perempuan', '1990-08-24', 'Cove 08 No 29', 'lifanaclarissa@email.com', '+6281323910851', 'Pemilik'),
(195, 'Hon King Wie', 'Laki-laki', '1992-09-02', 'Cove 09 No 1', 'honkingwie@email.com', '+6281293476119', 'Pemilik'),
(196, 'Athalya Wahyu', 'Perempuan', '1990-01-12', 'Cove 09 No 2', 'athalyawahyu@email.com', '+6285717805930', 'Pemilik'),
(197, 'Endang Sylvia', 'Perempuan', '1991-04-28', 'Cove 09 No 3', 'endangsylvia@email.com', '+6285624212169', 'Pemilik'),
(198, 'Ronnie Francis', 'Laki-laki', '1990-06-05', 'Cove 09 No 5', 'ronniefrancis@email.com', '+6287880633313', 'Pemilik'),
(199, 'Haryanto Suherman', 'Laki-laki', '1992-02-14', 'Cove 09 No 6', 'haryantosuherman@email.com', '+62817180419', 'Pemilik'),
(200, 'Kristina Sinurat', 'Perempuan', '1993-08-22', 'Cove 09 No 7', 'kristinasinurat@email.com', '+6281380253525', 'Pemilik'),
(201, 'Dave Gerard Que', 'Laki-laki', '1994-05-11', 'Cove 09 No 8', 'davegerardque@email.com', '+6281286023619', 'Pemilik'),
(202, 'Christine Nathalia', 'Perempuan', '1991-12-04', 'Cove 09 No 9', 'christinenathalia@email.com', '+6281291271001', 'Pemilik'),
(203, 'Robert Tjahjadi', 'Laki-laki', '1993-03-16', 'Cove 09 No 10', 'roberttjahjadi@email.com', '+6281219993803', 'Pemilik'),
(204, 'Yuanita', 'Perempuan', '1992-04-22', 'Cove 09 No 12', 'yuanita@email.com', '+6281333240424', 'Pemilik'),
(205, 'Wahyuni Dewi', 'Perempuan', '1993-06-15', 'Cove 09 No 15', 'wahyunidewi@email.com', '+6281280802705', 'Pemilik'),
(206, 'Pierre Henry', 'Laki-laki', '1990-09-04', 'Cove 09 No 16', 'pierrehenry@email.com', '+6287871665863', 'Pemilik'),
(207, 'Kevin Ramali', 'Laki-laki', '1994-07-25', 'Cove 09 No 17', 'kevinramali@email.com', '+6287776667128', 'Pemilik'),
(208, 'Sanny Ardian', 'Laki-laki', '1991-02-12', 'Cove 09 No 18', 'sannyardian@email.com', '+62816918818', 'Pemilik'),
(209, 'Indra Sulistia', 'Laki-laki', '1992-11-30', 'Cove 09 No 19', 'indrasulistia@email.com', '+6282123456554', 'Pemilik'),
(210, 'Regina Amalia', 'Perempuan', '1993-03-09', 'Cove 09 No 20', 'reginaamalia@email.com', '+628116167788', 'Pemilik'),
(246, 'Susanto', 'Laki-laki', '1990-01-01', 'Cove 09 No 21', 'susanto@email.com', '+6281234567890', 'Pemilik'),
(247, 'Dika Hizkia Permana', 'Laki-laki', '1991-02-02', 'Cove 09 No 22', 'dika@email.com', '+6281234567891', 'Pemilik'),
(248, 'Dr. Maulidya Ayudika Dandanah SpBTKV', 'Perempuan', '1985-03-03', 'Cove 10 No 02', 'maulidya@email.com', '+6281234567892', 'Pemilik'),
(249, 'Dendy', 'Laki-laki', '1992-04-04', 'Cove 10 No 03', 'dendy@email.com', '+6281234567893', 'Pemilik'),
(250, 'Muhammad Wisnu Nazar', 'Laki-laki', '1993-05-05', 'Cove 10 No 05', 'wisnu@email.com', '+6281234567894', 'Pemilik'),
(251, 'David Soeltanong', 'Laki-laki', '1994-06-06', 'Cove 10 No 06', 'david112@email.com', '+6281234567895', 'Pemilik'),
(252, 'Michele', 'Perempuan', '1995-07-07', 'Cove 10 No 07', 'michele@email.com', '+6281234567896', 'Pemilik'),
(253, 'Gerry Irvan', 'Laki-laki', '1990-08-08', 'Cove 10 No 08', 'gerry@email.com', '+6281234567897', 'Pemilik'),
(254, 'Darren', 'Laki-laki', '1991-09-09', 'Cove 10 No 09', 'darren@email.com', '+6281234567898', 'Pemilik'),
(255, 'Arte Pisceska', 'Laki-laki', '1992-10-10', 'Cove 10 No 12', 'arte@email.com', '+6281234567899', 'Pemilik'),
(256, 'Rudi', 'Laki-laki', '1993-11-11', 'Cove 10 No 18', 'rudi@email.com', '+6281234567900', 'Pemilik'),
(257, 'Stevie Purnama', 'Laki-laki', '1994-12-12', 'Cove 10 No 19', 'stevie@email.com', '+6281234567901', 'Pemilik'),
(258, 'Yuda', 'Laki-laki', '1989-01-13', 'Cove 10 No 21', 'yuda@email.com', '+6281234567902', 'Pemilik'),
(259, 'Tanoto Salim', 'Laki-laki', '1988-02-14', 'Cove 10 No 32', 'tanoto@email.com', '+6281234567903', 'Pemilik'),
(260, 'Ilona', 'Perempuan', '1995-03-15', 'Cove 11 No 01', 'ilona@email.com', '+6281234567904', 'Pemilik'),
(261, 'Tasya', 'Perempuan', '1994-04-16', 'Cove 11 No 02', 'tasya@email.com', '+6281234567905', 'Pemilik'),
(262, 'Lita Kustiati Handaja', 'Perempuan', '1993-05-17', 'Cove 11 No 03', 'lita@email.com', '+6281234567906', 'Pemilik'),
(263, 'Vincent', 'Laki-laki', '1992-06-18', 'Cove 11 No 05', 'vincent@email.com', '+6281234567907', 'Pemilik'),
(264, 'Lindar Fitriany', 'Perempuan', '1991-07-19', 'Cove 11 No 06', 'lindar@email.com', '+6281234567908', 'Pemilik'),
(265, 'Hansel Hadrian', 'Laki-laki', '1990-08-20', 'Cove 11 No 07', 'hansel@email.com', '+6281234567909', 'Pemilik'),
(266, 'Edy Susanto', 'Laki-laki', '1989-09-21', 'Cove 11 No 08', 'edy@email.com', '+6281234567910', 'Pemilik'),
(267, 'Evelyne Erlyana Suryawijaya', 'Perempuan', '1988-10-22', 'Cove 11 No 09', 'evelyne@email.com', '+6281234567911', 'Pemilik'),
(268, 'Stephanie Julian Elizabeth Saerang', 'Perempuan', '1987-11-23', 'Cove 11 No 10', 'stephanie@email.com', '+6281234567912', 'Pemilik'),
(269, 'Novi Otavia', 'Perempuan', '1996-12-24', 'Cove 11 No 11', 'novi@email.com', '+6281234567913', 'Pemilik'),
(270, 'Charles Gunawan', 'Laki-laki', '1995-01-25', 'Cove 11 No 12', 'charles@email.com', '+6281234567914', 'Pemilik'),
(271, 'Yuliana Oktoviani', 'Perempuan', '1994-02-26', 'Cove 11 No 15', 'yuliana@email.com', '+6281234567915', 'Pemilik'),
(272, 'Mikhael Darius', 'Laki-laki', '1993-03-27', 'Cove 11 No 16', 'mikhael@email.com', '+6281234567916', 'Pemilik'),
(273, 'Deby Susanti Suhendra', 'Perempuan', '1992-04-28', 'Cove 11 No 17', 'deby@email.com', '+6281234567917', 'Pemilik'),
(274, 'Marya Sisca', 'Perempuan', '1991-05-29', 'Cove 11 No 18', 'marya@email.com', '+6281234567918', 'Pemilik'),
(275, 'Melia Suryani', 'Perempuan', '1990-06-30', 'Cove 11 No 19', 'melia@email.com', '+6281234567919', 'Pemilik'),
(276, 'A. A. NGR. Oka Raditya Prima', 'Laki-laki', '1989-07-31', 'Cove 11 No 20', 'oka@email.com', '+6281234567920', 'Pemilik'),
(277, 'Shinta', 'Perempuan', '1988-08-01', 'Cove 11 No 21', 'shinta@email.com', '+6281234567921', 'Pemilik'),
(278, 'Octaviano Putra R. Tarigan', 'Laki-laki', '1990-09-02', 'Cove 11 No 22', 'octaviano@email.com', '+6281234567922', 'Pemilik'),
(279, 'Eldad Baltaszar', 'Laki-laki', '1991-10-03', 'Cove 11 No 23', 'eldad@email.com', '+6281234567923', 'Pemilik'),
(280, 'Jony, S.Kom', 'Laki-laki', '1989-11-04', 'Cove 11 No 25', 'jony@email.com', '+6281234567924', 'Pemilik'),
(281, 'Jason Jonathan', 'Laki-laki', '1990-01-01', 'Cove 11 No 26', 'jason@email.com', '+6281213995512', 'Pemilik'),
(282, 'Bima Ardi', 'Laki-laki', '1990-01-01', 'Cove 11 No 27', 'bima@email.com', '+6281617131213', 'Pemilik'),
(283, 'Sukiman', 'Laki-laki', '1990-01-01', 'Cove 11 No 28', 'sukiman@email.com', '+6281808457155', 'Pemilik'),
(284, 'Arnold P Bolang', 'Laki-laki', '1990-01-01', 'Cove 12 No 02', 'arnold@email.com', '+6281514684873', 'Pemilik'),
(285, 'Raven & Laras', 'Perempuan', '1990-01-01', 'Cove 12 No 03', 'ravenlaras@email.com', '+6281368348448', 'Pemilik'),
(286, 'Yansen', 'Laki-laki', '1990-01-01', 'Cove 12 No 08', 'yansen@email.com', '+6281286769718', 'Pemilik'),
(287, 'Susan', 'Perempuan', '1990-01-01', 'Cove 12 No 09', 'susan@email.com', '+6281210859676', 'Pemilik'),
(288, 'M. Azmi Hidayat', 'Laki-laki', '1990-01-01', 'Cove 12 No 12', 'azmi@email.com', '+6282183310233', 'Pemilik'),
(289, 'Ridho Pratama', 'Laki-laki', '1990-01-01', 'Cove 12 No 15', 'ridho@email.com', '+6282283370677', 'Pemilik'),
(290, 'Felicia', 'Perempuan', '1990-01-01', 'Cove 12 No 16', 'felicia@email.com', '+6287809577320', 'Pemilik'),
(291, 'Ciel', 'Laki-laki', '1990-01-01', 'Cove 12 No 17', 'ciel@email.com', '+6281380700842', 'Pemilik'),
(292, 'Robi Oktavianus', 'Laki-laki', '1990-01-01', 'Cove 12 No 18', 'robi@email.com', '+628170860868', 'Pemilik'),
(293, 'Nesya', 'Perempuan', '1990-01-01', 'Cove 12 No 19', 'nesya@email.com', '+6282318807259', 'Pemilik'),
(294, 'Vera', 'Perempuan', '1990-01-01', 'Cove 12 No 20', 'vera@email.com', '+6281808293812', 'Pemilik'),
(295, 'Citra', 'Perempuan', '1990-01-01', 'Cove 12 No 26', 'citra@email.com', '+6281282186345', 'Pemilik'),
(296, 'Asri Uswah', 'Perempuan', '1990-01-01', 'Cove 12 No 31', 'asri@email.com', '+6281315062091', 'Pemilik'),
(297, 'Randy Yuliandi', 'Laki-laki', '1990-01-01', 'Cove 12 No 33', 'randy@email.com', '+6282219992034', 'Pemilik'),
(298, 'Sye', 'Laki-laki', '1990-01-01', 'Cove 12 No 36', 'sye@email.com', '+6281995077995', 'Pemilik'),
(299, 'Jonathan', 'Laki-laki', '1990-01-01', 'Cove 12 No 50', 'jonathan@email.com', '+6282299009796', 'Pemilik'),
(300, 'Eti Herowati', 'Perempuan', '1990-01-01', 'Cove 15 No 01', 'eti@email.com', '+6282244837132', 'Pemilik'),
(301, 'Dicky Darmawan', 'Laki-laki', '1990-01-01', 'Cove 15 No 02', 'dicky@email.com', '+6287822110012', 'Pemilik'),
(302, 'Ricky Sinatra', 'Laki-laki', '1990-01-01', 'Cove 15 No 03', 'ricky@email.com', '+6285921588898', 'Pemilik'),
(303, 'Setyo Adi Raharjo', 'Laki-laki', '1990-01-01', 'Cove 15 No 05', 'setyo@email.com', '+6285811987685', 'Pemilik'),
(304, 'Abigail Vanessa', 'Perempuan', '1990-01-01', 'Cove 15 No 06', 'abigail@email.com', '+6281219159519', 'Pemilik'),
(305, 'Tana El San', 'Laki-laki', '1990-01-01', 'Cove 15 No 07', 'tana@email.com', '+628176602223', 'Pemilik'),
(306, 'Martin Huang', 'Laki-laki', '1990-01-01', 'Cove 15 No 08', 'martin@email.com', '+6287882405678', 'Pemilik'),
(307, 'Yohan Gunawan, ST', 'Laki-laki', '1990-01-01', 'Cove 15 No 09', 'yohan@email.com', '+6281553160951', 'Pemilik'),
(308, 'Eron Christian Yaputra', 'Laki-laki', '1990-01-01', 'Cove 15 No 10', 'eron@email.com', '+6281311477711', 'Pemilik'),
(309, 'Stefanie', 'Perempuan', '1990-01-01', 'Cove 15 No 11', 'stefanie@email.com', '+628179977620', 'Pemilik'),
(310, 'Robin Suprapto', 'Laki-laki', '1990-01-01', 'Cove 15 No 12', 'robin@email.com', '+6281318588248', 'Pemilik'),
(311, 'Alex Suryaman', 'Laki-laki', '1990-01-01', 'Cove 15 No 15', 'alex@email.com', '+6285881447544', 'Pemilik'),
(312, 'Michael', 'Laki-laki', '1990-01-01', 'Cove 15 No 16', 'michael@email.com', '+6281312223311', 'Pemilik'),
(369, 'Wahyuni Kumala', 'Perempuan', '1990-01-01', 'Cove 15 No 17', 'wahyuni@email.com', '+6281365501210', 'Pemilik'),
(370, 'Yhulianto Saputro, A.Md', 'Laki-laki', '1990-01-01', 'Cove 15 No 18', 'yhulianto@email.com', '+6285715644092', 'Pemilik'),
(371, 'Vincent', 'Laki-laki', '1990-01-01', 'Cove 15 No 19', 'vincent23@email.com', '+628119182805', 'Pemilik'),
(372, 'Agus Sugianto', 'Laki-laki', '1990-01-01', 'Cove 15 No 20', 'agus@email.com', '+6281779999240', 'Pemilik'),
(373, 'Sergio Jan Tonggi Soetedjo', 'Laki-laki', '1990-01-01', 'Cove 15 No 22', 'sergio@email.com', '+6282113700054', 'Pemilik'),
(374, 'Andreas', 'Laki-laki', '1990-01-01', 'Cove 15 No 23', 'andreas@email.com', '+6285217176576', 'Pemilik'),
(375, 'Dita Solihah', 'Perempuan', '1990-01-01', 'Cove 15 No 25', 'dita@email.com', '+6281287887910', 'Pemilik'),
(376, 'Andriel Putra', 'Laki-laki', '1990-01-01', 'Cove 15 No 26', 'andriel@email.com', '+6285959846883', 'Pemilik'),
(377, 'Citra Andhini', 'Perempuan', '1990-01-01', 'Cove 15 No 27', 'citraa@email.com', '+628114055777', 'Pemilik'),
(378, 'Elisa Gozali', 'Perempuan', '1990-01-01', 'Cove 15 No 28', 'elisa@email.com', '+628170005088', 'Pemilik'),
(379, 'Liana Widjaja', 'Perempuan', '1990-01-01', 'Cove 15 No 29', 'liana@email.com', '+6287890140000', 'Pemilik'),
(380, 'Verani', 'Perempuan', '1990-01-01', 'Cove 15 No 30', 'verani@email.com', '+6281223500099', 'Pemilik'),
(381, 'R Agung Indrayana', 'Laki-laki', '1990-01-01', 'Cove 15 No 31', 'ragung@email.com', '+6285219790004', 'Pemilik'),
(382, 'Grita', 'Perempuan', '1990-01-01', 'Cove 16 No 02', 'grita@email.com', '+6282157607351', 'Pemilik'),
(383, 'Sofian Leo Suhondo', 'Laki-laki', '1990-01-01', 'Cove 16 No 03', 'sofian@email.com', '+628111809710', 'Pemilik'),
(384, 'Irwin', 'Laki-laki', '1990-01-01', 'Cove 16 No 05', 'irwin@email.com', '+6282193896960', 'Pemilik'),
(385, 'Billy Liando', 'Laki-laki', '1990-01-01', 'Cove 16 No 06', 'billy@email.com', '+6281395956052', 'Pemilik'),
(386, 'Salman Helmy', 'Laki-laki', '1990-01-01', 'Cove 16 No 07', 'salman@email.com', '+6281291616170', 'Pemilik'),
(387, 'Belly Brata', 'Laki-laki', '1990-01-01', 'Cove 16 No 10', 'belly@email.com', '+6282175412588', 'Pemilik'),
(388, 'Steffan', 'Laki-laki', '1990-01-01', 'Cove 16 No 12', 'steffan@email.com', '+6281287725591', 'Pemilik'),
(389, 'Samuel Jan L', 'Laki-laki', '1990-01-01', 'Cove 16 No 15', 'samuel@email.com', '+6288210506160', 'Pemilik'),
(390, 'Indra Lim', 'Laki-laki', '1990-01-01', 'Cove 16 No 16', 'indra@email.com', '+6287875498006', 'Pemilik'),
(391, 'Bayu', 'Laki-laki', '1990-01-01', 'Cove 16 No 17', 'bayu@email.com', '+6282183326863', 'Pemilik'),
(392, 'Carolina', 'Perempuan', '1990-01-01', 'Cove 16 No 18', 'carolina@email.com', '+6285743412585', 'Pemilik'),
(393, 'Rini', 'Perempuan', '1990-01-01', 'Cove 16 No 19', 'rini@email.com', '+6287728051982', 'Pemilik'),
(394, 'Yusuf Wiyono', 'Laki-laki', '1990-01-01', 'Cove 16 No 21', 'yusuf@email.com', '+6287814400007', 'Pemilik'),
(395, 'M. Rizaldi', 'Laki-laki', '1990-01-01', 'Cove 16 No 22', 'rizaldi@email.com', '+6282245572298', 'Pemilik'),
(396, 'Andreas (InHauz Architect)', 'Laki-laki', '1990-01-01', 'Cove 16 No 23', 'andreas.inhauz@email.com', '+6287877811333', 'Pemilik'),
(397, 'Martinus Rafael', 'Laki-laki', '1990-01-01', 'Cove 16 No 29', 'martinusrafael@email.com', '+6281514882886', 'Pemilik'),
(398, 'Wandy S', 'Laki-laki', '1990-01-01', 'Cove 16 No 30', 'wandys@email.com', '+6287887647289', 'Pemilik'),
(399, 'Arthur', 'Laki-laki', '1990-01-01', 'Cove 16 No 31', 'arthur@email.com', '+6285280050990', 'Pemilik'),
(400, 'Yessy', 'Perempuan', '1990-01-01', 'Cove 16 No 32', 'yessy@email.com', '+6281321998860', 'Pemilik'),
(401, 'Ariesta Adies', 'Perempuan', '1990-01-01', 'Cove 16 No 36', 'ariesta.adies@email.com', '+6287780621289', 'Pemilik'),
(402, 'Alisca Chandra Rahmani', 'Perempuan', '1990-01-01', 'Cove 16 No 38', 'alisca.rahmani@email.com', '+6285950762885', 'Pemilik'),
(403, 'Andreas William', 'Laki-laki', '1990-01-01', 'Cove 16 No 50', 'andreas.william@email.com', '+6281287188186', 'Pemilik'),
(404, 'Donn Sandi', 'Laki-laki', '1990-01-01', 'Cove 16 No 52', 'donn.sandi@email.com', '+628122028762', 'Pemilik'),
(405, 'Laurent Christy', 'Perempuan', '1990-01-01', 'Cove 17 No 01', 'laurent.christy@email.com', '+6287887511074', 'Pemilik'),
(406, 'Johannes Julius', 'Laki-laki', '1990-01-01', 'Cove 17 No 02', 'johannes.julius@email.com', '+628999975633', 'Pemilik'),
(407, 'Monika Fragaria Vesca Septiara', 'Perempuan', '1990-01-01', 'Cove 17 No 03', 'monika.fvs@email.com', '+6282114606811', 'Pemilik'),
(408, 'Wahyu Rahyuni Butarbutar', 'Perempuan', '1990-01-01', 'Cove 17 No 05', 'wahyu.butarbutar@email.com', '+6285261624464', 'Pemilik'),
(409, 'Tanti Kristyanti', 'Perempuan', '1990-01-01', 'Cove 17 No 06', 'tanti.kristyanti@email.com', '+689689181131', 'Pemilik'),
(410, 'Rudolf V V Sumanti', 'Laki-laki', '1990-01-01', 'Cove 17 No 07', 'rudolf.sumanti@email.com', '+6281296617956', 'Pemilik'),
(411, 'Loviana', 'Perempuan', '1990-01-01', 'Cove 17 No 08', 'loviana@email.com', '+6281375777797', 'Pemilik'),
(412, 'Tjhin Pit Joeng', 'Laki-laki', '1990-01-01', 'Cove 17 No 09', 'tjhin.joeng@email.com', '+6281286957282', 'Pemilik'),
(413, 'Gregorius Rivaldo', 'Laki-laki', '1990-01-01', 'Cove 17 No 10', 'gregorius.rivaldo@email.com', '+6285946962294', 'Pemilik'),
(414, 'Ramos Julian', 'Laki-laki', '1990-01-01', 'Cove 17 No 11', 'ramos.julian@email.com', '+6281296902840', 'Pemilik'),
(415, 'Junior Suwardi', 'Laki-laki', '1990-01-01', 'Cove 17 No 12', 'junior.suwardi@email.com', '+6281289791003', 'Pemilik'),
(416, 'Ega Apriana', 'Perempuan', '1990-01-01', 'Cove 17 No 15', 'ega.apriana@email.com', '+6282280000152', 'Pemilik'),
(417, 'Yosep Prakasa Setiawan', 'Laki-laki', '1990-01-01', 'Cove 17 No 16', 'yosep.prakasa@email.com', '+6282210463469', 'Pemilik'),
(502, 'Katherine Sumartonjo', 'Perempuan', '1990-01-01', 'Cove 17 No 17', 'katherine.sumartonjo@email.com', '+6287771767788', 'Pemilik'),
(503, 'Machia Velli', 'Laki-laki', '1990-01-01', 'Cove 17 No 18', 'machia.velli@email.com', '+6287888862803', 'Pemilik'),
(504, 'Michael', 'Laki-laki', '1990-01-01', 'Cove 17 No 19', 'michael15@email.com', '+6285711230363', 'Pemilik'),
(505, 'Fabian Soelaeman', 'Laki-laki', '1990-01-01', 'Cove 17 No 20', 'fabian.soelaeman@email.com', '+62816864710', 'Pemilik'),
(506, 'Joseph', 'Laki-laki', '1990-01-01', 'Cove 17 No 21', 'joseph@email.com', '+6281807866655', 'Pemilik'),
(507, 'Rani S Nainggolan', 'Perempuan', '1990-01-01', 'Cove 17 No 22', 'rani.nainggolan@email.com', '+6281318922306', 'Pemilik'),
(508, 'Nedra Farina Widjaja', 'Perempuan', '1990-01-01', 'Cove 17 No 23', 'nedra.widjaja@email.com', '+628129797572', 'Pemilik'),
(509, 'Rendy', 'Laki-laki', '1990-01-01', 'Cove 17 No 25', 'rendy@email.com', '+6282112222077', 'Pemilik'),
(510, 'Willyam', 'Laki-laki', '1990-01-01', 'Cove 17 No 26', 'willyam@email.com', '+6281931398201', 'Pemilik'),
(511, 'Budi Sulaeman', 'Laki-laki', '1990-01-01', 'Cove 17 No 30', 'budi.sulaeman@email.com', '+6281905080773', 'Pemilik'),
(512, 'Lerry Janurengers', 'Laki-laki', '1990-01-01', 'Cove 17 No 35', 'lerry.janurengers@email.com', '+6281287869869', 'Pemilik'),
(513, 'Fenni Wilhelmina', 'Perempuan', '1990-01-01', 'Cove 17 No 37', 'fenni.wilhelmina@email.com', '+6281298577772', 'Pemilik'),
(514, 'Louis', 'Laki-laki', '1990-01-01', 'Cove 17 No 38', 'louis@email.com', '+62817766101', 'Pemilik'),
(515, 'Vinsensia Dian Kusparwanti', 'Perempuan', '1990-01-01', 'Cove 17 No 39', 'vinsensia.kusparwanti@email.com', '+6281905566665', 'Pemilik'),
(516, 'Michael', 'Laki-laki', '1990-01-01', 'Cove 17 No 50', 'michael244@email.com', '+6285210000787', 'Pemilik'),
(517, 'Ivan Irmawan', 'Laki-laki', '1990-01-01', 'Cove 17 No 58', 'ivan.irmawan@email.com', '+6281290836214', 'Pemilik'),
(518, 'Vinetty', 'Perempuan', '1990-01-01', 'Cove 17 No 60', 'vinetty@email.com', '+6287782510502', 'Pemilik'),
(519, 'Dio Permana', 'Laki-laki', '1990-01-01', 'Cove 17 No 66', 'dio.permana@email.com', '+628122240711', 'Pemilik'),
(520, 'Dio Permana', 'Laki-laki', '1990-01-01', 'Cove 17 No 68', 'dio.permana2@email.com', '+6281222400711', 'Pemilik'),
(521, 'Suwanda Tjandra', 'Laki-laki', '1990-01-01', 'Cove 18 No 01', 'suwanda.tjandra@email.com', '+62811908878', 'Pemilik'),
(522, 'Frendty Purba', 'Laki-laki', '1990-01-01', 'Cove 18 No 02', 'frendty.purba@email.com', '+628129062692', 'Pemilik'),
(523, 'Enrico', 'Laki-laki', '1990-01-01', 'Cove 18 No 03', 'enrico@email.com', '+6285731705922', 'Pemilik'),
(524, 'Dien Annisa', 'Perempuan', '1990-01-01', 'Cove 18 No 05', 'dien.annisa@email.com', '+6285715192467', 'Pemilik'),
(525, 'Febrina', 'Perempuan', '1990-01-01', 'Cove 18 No 06', 'febrina@email.com', '+6285971117207', 'Pemilik'),
(526, 'Hanis Pratama', 'Laki-laki', '1990-01-01', 'Cove 18 No 08', 'hanis.pratama@email.com', '+6281294228430', 'Pemilik'),
(527, 'Elyzabeth Karunia', 'Perempuan', '1990-01-01', 'Cove 18 No 10', 'elyzabeth.karunia@email.com', '+6282112107474', 'Pemilik'),
(528, 'Ramperto Pasaribu', 'Laki-laki', '1990-01-01', 'Cove 18 No 11', 'ramperto.pasaribu@email.com', '+6285288037733', 'Pemilik'),
(529, 'Fernando Martin', 'Laki-laki', '1990-01-01', 'Cove 18 No 12', 'fernando.martin@email.com', '+628988894868', 'Pemilik'),
(530, 'Oki Zeini', 'Laki-laki', '1990-01-01', 'Cove 18 No 07', 'oki.zeini@dummy.com', '+6285555555555', 'Pemilik'),
(531, 'Willy Romowono', 'Laki-laki', '1990-01-01', 'Cove 18 No 09', 'willy.romowono@dummy.com', '+6285555555556', 'Pemilik'),
(532, 'Yosh Paulus Johanes', 'Laki-laki', '1990-01-01', 'Cove 18 No 15', 'yosh.johanes@dummy.com', '+6285555555557', 'Pemilik'),
(533, 'Harold Hans Kristian Pasaribu', 'Laki-laki', '1990-01-01', 'Cove 18 No 16', 'harold.pasaribu@dummy.com', '+6285555555558', 'Pemilik'),
(534, 'Lorenzo Marco', 'Laki-laki', '1990-01-01', 'Cove 18 No 17', 'lorenzo.marco@dummy.com', '+6285555555559', 'Pemilik'),
(535, 'Dwi Kurniasih Sugiarni', 'Perempuan', '1990-01-01', 'Cove 18 No 18', 'dwi.sugiarni@dummy.com', '+6285555555560', 'Pemilik'),
(536, 'Alphine Susoanto', 'Laki-laki', '1990-01-01', 'Cove 18 No 19', 'alphine.susoanto@dummy.com', '+6285555555561', 'Pemilik'),
(649, 'Clarintha', 'Perempuan', '1990-01-01', 'Cove 18 No 20', 'clarintha21@dummy.com', '+6281398583538', 'Pemilik'),
(650, 'Lia Aryani Novitasari', 'Perempuan', '1991-05-10', 'Cove 18 No 21', 'lia.aryani11@dummy.com', '+628555555001', 'Pemilik'),
(651, 'Samuel Tjia', 'Laki-laki', '1992-07-15', 'Cove 18 No 22', 'samuel16.tjia@dummy.com', '+6283811580847', 'Pemilik'),
(652, 'Ramadhanu Yulianto', 'Laki-laki', '1989-09-20', 'Cove 18 No 23', 'ramadhanu98@dummy.com', '+628555555002', 'Pemilik'),
(653, 'Andrey Sapati Wirya', 'Laki-laki', '1990-12-25', 'Cove 18 No 25', 'andrey.sapati@dummy.com', '+628555555003', 'Penyewa'),
(654, 'Fiona Yosefina Theo Soza Hutapea', 'Perempuan', '1994-02-15', 'Cove 18 No 27', 'fiona.hutapea@dummy.com', '+628555555004', 'Pemilik'),
(655, 'Arie Lau Wijaya', 'Laki-laki', '1988-10-01', 'Cove 18 No 29', 'arie.lau@dummy.com', '+6282211360565', 'Penyewa'),
(656, 'Diana', 'Perempuan', '1993-08-08', 'Cove 18 No 31', 'diana@dummy.com', '+6285385958838', 'Pemilik'),
(657, 'Yessy Hwang', 'Perempuan', '1990-03-12', 'Cove 18 No 32', 'yessy.hwang@dummy.com', '+6281321998860', 'Pemilik'),
(658, 'Ferry Perdana Putra', 'Laki-laki', '1991-11-11', 'Cove 18 No 33', 'ferry.perdana@dummy.com', '+628555555005', 'Penyewa'),
(659, 'Amran Halim', 'Laki-laki', '1987-04-05', 'Cove 18 No 35', 'amran.halim@dummy.com', '+628555555006', 'Pemilik'),
(660, 'Ronal Toga Sibarani', 'Laki-laki', '1989-06-25', 'Cove 18 No 37', 'ronal.sibarani@dummy.com', '+628555555007', 'Pemilik'),
(661, 'Jessica Kristie', 'Perempuan', '1990-08-17', 'Cove 18 No 39', 'jessica.kristie@dummy.com', '+6281290929833', 'Pemilik'),
(662, 'Stepanus Heri Santosa', 'Laki-laki', '1994-01-30', 'Cove 18 No 50', 'stepanus.santosa@dummy.com', '+628555555008', 'Penyewa'),
(663, 'Ronaldi dan Sendy', 'Laki-laki', '1992-12-20', 'Cove 18 No 52', 'ronaldi.sendy@dummy.com', '+6282165102480', 'Pemilik'),
(664, 'Ni Putu Eka Desyanti, SE', 'Perempuan', '1989-02-05', 'Cove 19 No 01', 'ni.putu@dummy.com', '+628113866350', 'Pemilik'),
(665, 'Phebe', 'Perempuan', '1993-09-12', 'Cove 19 No 02', 'phebe@dummy.com', '+62811682662', 'Pemilik'),
(666, 'Khoirul Setyo Nugroho', 'Laki-laki', '1988-06-21', 'Cove 19 No 03', 'khoirul.nugroho@dummy.com', '+6281139919945', 'Pemilik'),
(667, 'Tunas Jaya Perkasa, PT', 'Laki-laki', '1990-04-11', 'Cove 19 No 05', 'tunas.perkasa@dummy.com', '+6281549313121', 'Penyewa'),
(668, 'Rio', 'Laki-laki', '1991-07-10', 'Cove 19 No 06', 'rio@dummy.com', '+6281288123458', 'Pemilik'),
(669, 'Tunas Jaya Perkasa, PT', 'Laki-laki', '1987-01-15', 'Cove 19 No 07', 'tunas.perkasa26@dummy.com', '+6281549313121', 'Penyewa'),
(670, 'Lubianto', 'Laki-laki', '1990-03-05', 'Cove 19 No 08', 'lubianto@dummy.com', '+6282157240881', 'Pemilik'),
(671, 'Rocky', 'Laki-laki', '1988-12-25', 'Cove 19 No 09', 'rocky@dummy.com', '+62811754008', 'Penyewa'),
(672, 'Maria Barnomo', 'Perempuan', '1992-05-19', 'Cove 19 No 10', 'maria.barnomo@dummy.com', '+6287877993773', 'Pemilik'),
(673, 'Corry Grace Bunga Liliosa Lubis, SE', 'Perempuan', '1989-09-30', 'Cove 19 No 12', 'corry.lubis@dummy.com', '+62811602562', 'Pemilik'),
(674, 'Harold & Laras', 'Laki-laki', '1994-11-08', 'Cove 19 No 16', 'harold.laras@dummy.com', '+6281317134441', 'Penyewa'),
(675, 'Kusnadi', 'Laki-laki', '1989-03-27', 'Cove 19 No 18', 'kusnadi@dummy.com', '+6281284219265', 'Pemilik'),
(676, 'Frindy Yudisia', 'Laki-laki', '1992-08-14', 'Cove 19 No 20', 'frindy.yudisia@dummy.com', '+6281381803668', 'Pemilik'),
(677, 'Akira Yenadhira', 'Laki-laki', '1991-04-02', 'Cove 19 No 22', 'akira.yenadhira@dummy.com', '+62818704792', 'Penyewa'),
(678, 'Christina Renny Heidyanti', 'Perempuan', '1993-12-12', 'Cove 19 No 26', 'christina.heidyanti@dummy.com', '+6281296812833', 'Pemilik'),
(679, 'Arita Riahati Panjaitan', 'Perempuan', '1987-09-09', 'Cove 19 No 28', 'arita.panjaitan@dummy.com', '+628555555009', 'Pemilik'),
(680, 'Julius', 'Laki-laki', '1990-01-10', 'Cove 19 No 30', 'julius@dummy.com', '+6281808042824', 'Pemilik'),
(681, 'Nicky Hendrawan', 'Laki-laki', '1988-06-15', 'Cove 19 No 32', 'nicky.hendrawan@dummy.com', '+6281311287888', 'Pemilik'),
(682, 'Andrian Meirawan Saputra', 'Laki-laki', '1993-03-17', 'Cove 19 No 36', 'andrian.saputra@dummy.com', '+6287863339920', 'Pemilik'),
(683, 'Gisela', 'Perempuan', '1991-07-12', 'Cove 19 No 38', 'gisela@dummy.com', '+6287784442099', 'Pemilik');

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `address` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `whatsapp_link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `name`, `image_url`, `address`, `description`, `price`, `whatsapp_link`) VALUES
(1, 'Kebab by Aslan’s', '/resident/img/kebab.jpg', 'Jalan Cove 1 No 13', 'Kebab premium dengan daging panggang juicy dan bumbu meresap sempurna, disajikan dalam balutan roti pita lembut. Dipadukan dengan sayuran segar seperti selada renyah, tomat manis, dan timun yang menyegarkan, serta saus spesial yang creamy dan gurih.', '25000.00', 'https://wa.me/qr/33HY2NNLHIZ4A1'),
(2, 'Seblak Putri’s Spice Haven', '/resident/img/seblak.jpg', 'Jalan Cove 3 No 10', 'Hidangan makanan pedas gurih dengan cita rasa khas yang menggugah selera, dibuat dari kerupuk kenyal yang dimasak dengan bumbu rempah asli. Dipadukan dengan campuran bahan seperti bakso, sosis, ceker ayam empuk, dan sayuran segar, menghadirkan sensasi pedas yang nendang dan kuah kental yang lezat.', '20000.00', 'https://wa.me/qr/33HY2NNLHIZ4A1'),
(3, 'Corndog Alex’s Kitchen', '/resident/img/corndog.jpg', 'Jalan Cove 1 No 5', 'Nikmati kelezatan corndog renyah dengan isian keju leleh dan sosis gurih yang dibalut adonan lembut, digoreng sempurna hingga keemasan. Tak ketinggalan, sosis kentang yang juicy dilapisi potongan kentang renyah, memberikan tekstur crispy di luar dan juicy di dalam di setiap gigitan!', '20000.00', 'https://wa.me/qr/33HY2NNLHIZ4A1'),
(4, 'Rujak Buah by Dafi’s', '/resident/img/rujak.jpg', 'Jalan Cove 2 No 7', 'Rujak buah segar dengan aneka potongan buah tropis seperti mangga muda, jambu, nanas, bengkoang, dan timun yang segar, berpadu sempurna dengan sambal rujak khas. Sambalnya terbuat dari gula merah yang legit, cabai pedas, garam, dan sedikit terasi, menciptakan rasa yang pedas, manis, dan gurih dalam satu gigitan.', '15000.00', 'https://wa.me/qr/33HY2NNLHIZ4A1'),
(5, 'Bakso Mercon by Husnul’s', '/resident/img/bakso.jpg', 'Jalan Cove 4 No 9', 'Bakso mercon dengan isian daging cincang pedas yang melimpah, siap meledak di mulut dengan sensasi pedas yang luar biasa! Bakso kenyal ini disajikan dalam kuah kaldu gurih yang kaya rasa, ditambah sambal ekstra pedas yang menggugah selera. Cocok untuk pencinta pedas sejati!', '25000.00', 'https://wa.me/qr/33HY2NNLHIZ4A1'),
(6, 'Fauzi’s Beverage House', '/resident/img/minuman.jpg', 'Jalan Cove 1 No 15', 'Nikmati aneka minuman segar seperti Choco Bomb, dengan cokelat kaya rasa dan whipped cream lembut; Matcha Bomb, yang menawarkan rasa lembut dari matcha premium dengan susu creamy; dan Mint Bomb, minuman segar berbasis mint yang menyejukkan dengan soda dan lemon.', '25000.00', 'https://wa.me/qr/33HY2NNLHIZ4A1'),
(10, 'Kursa Coffee', '/resident/img/Cappuccino.jpeg', 'Jalan Cove 1 no 20', 'Kopi berkualitas menggunakan biji kopi pilihan serta memberikan hari hari anda lebih indah.', '40000.00', 'https://wa.me/qr/33HY2NNLHIZ4A1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id` int(11) NOT NULL,
  `product_id` varchar(50) NOT NULL,
  `quantity` int(11) NOT NULL,
  `delivery_method` varchar(50) NOT NULL,
  `payment_method` varchar(50) NOT NULL,
  `transfer_bank` varchar(50) DEFAULT NULL,
  `total_price` decimal(15,2) NOT NULL,
  `transaction_date` datetime NOT NULL,
  `status` enum('Pending','Ditangani','Selesai') DEFAULT 'Pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id`, `product_id`, `quantity`, `delivery_method`, `payment_method`, `transfer_bank`, `total_price`, `transaction_date`, `status`, `created_at`) VALUES
(1, '1', 1, 'delivery', 'COD', NULL, '25000.00', '2024-12-12 21:05:22', 'Selesai', '2024-12-12 14:05:22'),
(2, '1', 1, 'pickup', 'COD', NULL, '25000.00', '2024-12-12 21:38:37', 'Pending', '2024-12-12 14:38:37'),
(3, '1', 1, 'pickup', 'COD', NULL, '25000.00', '2024-12-12 21:43:13', 'Pending', '2024-12-12 14:43:13'),
(4, '5', 1, 'pickup', 'Transfer', 'OVO', '25000.00', '2024-12-12 21:43:41', 'Pending', '2024-12-12 14:43:41'),
(5, '10', 31, 'delivery', 'Transfer', 'BCA', '1240000.00', '2024-12-12 22:05:17', 'Pending', '2024-12-12 15:05:17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `birth_date` date NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `full_name`, `birth_date`, `address`, `email`, `phone_number`, `password`) VALUES
(1, 'Fayed Abdul Hakim', '2024-12-12', 'jalan Cove 1 no 18', 'fayedabdulhakim@gmail.com', '089604237378', '$2y$10$0c9HRjqWAUq14QPLP8UgXOFgYAwv6xro7HZy48FtPclvQfdbiyh1i'),
(2, 'Yohana Setiawan', '2024-12-12', 'jalan Cove 1 no 98', 'yohana@gmail.com', '089604237528', '$2y$10$4YgSbG0bUNLpuMD/Fe7TxuRR/xlHIqCvYmsgsp6BQ3POwibeP7G2q');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `diskusi`
--
ALTER TABLE `diskusi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `Login`
--
ALTER TABLE `Login`
  ADD PRIMARY KEY (`Iduser`);

--
-- Indeks untuk tabel `pelaporan`
--
ALTER TABLE `pelaporan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `penghuni`
--
ALTER TABLE `penghuni`
  ADD PRIMARY KEY (`idpenghuni`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `diskusi`
--
ALTER TABLE `diskusi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT untuk tabel `pelaporan`
--
ALTER TABLE `pelaporan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `penghuni`
--
ALTER TABLE `penghuni`
  MODIFY `idpenghuni` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1196;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
