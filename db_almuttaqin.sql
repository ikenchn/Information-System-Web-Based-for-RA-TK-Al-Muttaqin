-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 20, 2021 at 12:40 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_almuttaqin`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminn`
--

CREATE TABLE `adminn` (
  `id_admin` int(11) NOT NULL,
  `nama_admin` varchar(25) NOT NULL,
  `nip` varchar(15) NOT NULL,
  `tempat` varchar(25) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `pendidikan` varchar(20) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `id` int(11) NOT NULL,
  `username` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adminn`
--

INSERT INTO `adminn` (`id_admin`, `nama_admin`, `nip`, `tempat`, `tgl_lahir`, `pendidikan`, `alamat`, `id`, `username`) VALUES
(5, 'Elisa Lalisa', '190922380202', 'Bandung', '1991-08-17', 'Sarjana', 'Jalan Mawar 4', 1, 0),
(6, 'Sarah Kinanti', '180191319', 'Jakarta', '1994-11-16', 'Sarjana', 'Jalan Cempedak 4', 2, 0),
(7, 'Iken Andita', '1828923', 'Surabaya', '1995-05-08', 'Sarjana', 'Jalan Anggur 2 Jakarta Selatan', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `dt_dirimurid`
--

CREATE TABLE `dt_dirimurid` (
  `id_dt_dirimurid` int(11) NOT NULL,
  `kebutuhan_khusus` varchar(30) NOT NULL,
  `jns_imun` varchar(30) NOT NULL,
  `wkt_imun` varchar(50) NOT NULL,
  `jns_sakit` varchar(50) NOT NULL,
  `wkt_sakit` varchar(50) NOT NULL,
  `lama_sakit` varchar(50) NOT NULL,
  `jmlh_penghuni` varchar(30) NOT NULL,
  `hal_bermain` varchar(20) NOT NULL,
  `tmn_sebaya` varchar(30) NOT NULL,
  `mkn_pagi` varchar(30) NOT NULL,
  `mkn_siang` varchar(30) NOT NULL,
  `mkn_malam` varchar(30) NOT NULL,
  `selera_mkn` varchar(30) NOT NULL,
  `hub_ayah` varchar(30) NOT NULL,
  `hub_ibu` varchar(30) NOT NULL,
  `hub_saudara` varchar(30) NOT NULL,
  `anak_bgair` varchar(30) NOT NULL,
  `tdr_malam` varchar(50) NOT NULL,
  `tdr_siang` varchar(50) NOT NULL,
  `ngompol` varchar(30) NOT NULL,
  `hal_tidur` varchar(100) NOT NULL,
  `anak_dirmh` varchar(30) NOT NULL,
  `hal_dirmh` varchar(100) NOT NULL,
  `dlm_kandungan` varchar(30) NOT NULL,
  `kelahiran` varchar(30) NOT NULL,
  `perkembangan` varchar(30) NOT NULL,
  `asuh_oleh` varchar(30) NOT NULL,
  `susu` varchar(30) NOT NULL,
  `makanan_tmbh` varchar(100) NOT NULL,
  `id_murid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dt_dirimurid`
--

INSERT INTO `dt_dirimurid` (`id_dt_dirimurid`, `kebutuhan_khusus`, `jns_imun`, `wkt_imun`, `jns_sakit`, `wkt_sakit`, `lama_sakit`, `jmlh_penghuni`, `hal_bermain`, `tmn_sebaya`, `mkn_pagi`, `mkn_siang`, `mkn_malam`, `selera_mkn`, `hub_ayah`, `hub_ibu`, `hub_saudara`, `anak_bgair`, `tdr_malam`, `tdr_siang`, `ngompol`, `hal_tidur`, `anak_dirmh`, `hal_dirmh`, `dlm_kandungan`, `kelahiran`, `perkembangan`, `asuh_oleh`, `susu`, `makanan_tmbh`, `id_murid`) VALUES
(51, 'Kesulitan Belajar', 'Antibodi', '2019', 'patah tulang', '2 tahun', '6 bulan', 'dewasa 3 anak 2', 'ada', 'Kurang', 'Cukup', 'Kurang', 'Cukup', 'Banyak', 'baik', 'sedang', 'kurang', 'tolong', 'pukul 8 hingga 4 pagi', 'pukul 4 hingga 5 sore', 'kadang-kadang', 'tidak ada', 'kurang', 'tidak ada', 'gangguan', 'normal', 'normal', 'ibu', 'asi', 'tidak ada', 51),
(54, 'tidak ada', 'Antibodi', '2019', 'darah rendah', '2 tahun', '1 bulan', 'dewasa 2 anak 2', 'ada', 'Kurang', 'Cukup', 'Baik', 'Baik', 'Tidak Pernah', 'baik', 'baik sekali', 'baikn sekali', 'tolong', 'pukul setengah 9 sampai pukul 6', 'tidak pernah', 'tidak', 'tidak ada', 'baik', 'kurang bersosialisasi dengan sekitar', 'normal', 'normal', 'normal', 'ibu', 'asi', 'buah pisang', 54),
(57, 'Kesulitan Belajar', 'antibodi', '2019', 'sakit badan', '2 tahun', '6 bulan', 'dewasa 2 anak 1', 'ada', 'Kurang', 'Baik', 'Baik', 'Baik', 'Banyak', 'baik', 'baik', 'baik', 'tolong', 'pukul setengah 9 sampai pukul 6', 'pukul 4 hingga 5 sore', 'tidak', 'tidak ada', 'baik', 'gemar beraktifitas', 'normal', 'normal', 'normal', 'ibu', 'asi', 'bubur kacang hijau', 57),
(58, 'tidak ada', 'vaksin', '2020', 'tidak ada', '3 tahun', 'belum', 'dewasa 2 anak 3', 'ada', 'Banyak', 'Cukup', 'Baik', 'Baik', 'Sedikit', 'baik', 'baik', 'baik', 'Kadang-kadang ditolong', 'pukul 8 hingga 5 pagi', 'tidak pernah', 'kadang-kadang', 'terkadang sulit tidur', 'cukup', 'sedikit pemalu', 'gangguan', 'normal', 'normal', 'ibu', 'asi', 'sayur bayam', 58),
(60, 'tidak ada', 'Imunisasi DPT-HB-Hib 2, Polio ', '2019', 'Tidak Pernah', 'Tidak Pernah', 'Tidak Pernah', 'dewasa 2 anak 1', 'ada', 'Kurang', 'Baik', 'Baik', 'Cukup', 'Banyak', 'sedang', 'baik', 'kurang', 'tidak', 'pukul 8 hingga 5 pagi', 'pukul 3 hingga 4 sore', 'tidak', 'perlu ditemani hingga tidur', 'baik', 'perlu teman sebaya', 'normal', 'normal', 'normal', 'ibu', 'asi', 'susu kedelai', 58),
(61, 'tidak ada', 'Imunisasi DPT-HB-Hib 2, Polio ', '2019', 'tidak ada', 'belum', 'Tidak Pernah', 'dewasa 2 anak 1', 'ada', 'Kurang', 'Cukup', 'Baik', 'Baik', 'Sedikit', 'sedang', 'baik', 'kurang', 'tidak', 'pukul 8 hingga 5 pagi', 'pukul 3 hingga 4 sore', 'ya', 'perlu ditemani', 'baik', 'perlu teman sebaya', 'normal', 'normal', 'normal', 'ibu', 'asi', 'susu kedelai', 58),
(62, 'tidak ada', 'Imunisasi DPT-HB-Hib 2, Polio ', '2019', 'tidak ada', 'belum', 'Tidak Pernah', 'dewasa 2 anak 1', 'ada', 'Kurang', 'Cukup', 'Baik', 'Baik', 'Sedikit', 'sedang', 'baik', 'kurang', 'tidak', 'pukul 8 hingga 5 pagi', 'pukul 3 hingga 4 sore', 'ya', 'perlu ditemani', 'baik', 'perlu teman sebaya', 'normal', 'normal', 'normal', 'ibu', 'asi', 'susu kedelai', 58),
(63, 'tidak ada', 'Imunisasi DPT-HB-Hib 2, Polio ', '2019', 'tidak ada', 'belum', 'Tidak Pernah', 'dewasa 2 anak 1', 'ada', 'Kurang', 'Cukup', 'Baik', 'Baik', 'Sedikit', 'sedang', 'baik', 'kurang', 'tidak', 'pukul 8 hingga 5 pagi', 'pukul 3 hingga 4 sore', 'ya', 'perlu ditemani', 'baik', 'perlu teman sebaya', 'normal', 'normal', 'normal', 'ibu', 'asi', 'susu kedelai', 58),
(66, 'tidak ada', 'Imunisasi DPT-HB-Hib 2, Polio ', '2019', 'tidak ada', 'Tidak Pernah', 'Tidak Pernah', 'dewasa 2 anak 1', 'ada', 'Kurang', 'Baik', 'Baik', 'Cukup', 'Sedikit', 'baik', 'baik sekali', 'kurang', 'tidak', 'pukul 8 hingga 4 pagi', 'pukul 3 hingga 4 sore', 'tidak', 'perlu ditemani', 'baik', 'perlu teman sebaya', 'normal', 'normal', 'normal', 'ibu', 'asi', 'susu kedelai', 62),
(67, 'tidak ada', 'Antibodi', '2019', 'tidak ada', 'Belum', 'Tidak Pernah', 'dewasa 2 anak 3', 'ada', 'Kurang', 'Baik', 'Baik', 'Cukup', 'Sedikit', 'baik', 'baik sekali', 'baikn sekali', 'tidak', 'pukul 10 sampai pukul 6 pagi', 'tidak tidur siang', 'tidak', 'tidak ada', 'baik', 'Perlu dilindungi', 'normal', 'normal', 'normal', 'ibu', 'asi', 'Suplemen', 63),
(68, 'Gangguan Komunikasi', 'Imunisasi Balita', '2020', 'sakit badan', '9 bulan', '1 bulan', 'dewasa 2 anak 2', 'tidak', 'Kurang', 'Baik', 'Baik', 'Cukup', 'Banyak', 'sedang', 'baik sekali', 'baik', 'tidak', 'pukul 10 sampai pukul 6 pagi', 'pukul 4 hingga 5 sore', 'tidak', 'harus di temani', 'cukup', 'Perlu disiplin', 'normal', 'normal', 'normal', 'ibu', 'asi', 'Susu Asi', 64),
(69, 'tidak ada', 'antibodi', '2019', 'tidak ada', 'belum', 'belum', 'dewasa 1 anak 1', 'tidak', 'Tidak Pernah', 'Baik', 'Baik', 'Baik', 'Banyak', 'baik', 'baik', 'kurang', 'tolong', 'pukul 10 sampai pukul 6 pagi', 'tidak pernah', 'tidak', 'tidak ada', 'baik', 'tidak ada', 'normal', 'normal', 'normal', 'wanita_lain', 'asi', 'tidak ada', 65),
(71, 'tidak ada', 'belum', '2020', 'sakit badan', '1 tahun', '3 bulan', 'dewasa 2 anak 2', 'tidak', 'Banyak', 'Baik', 'Baik', 'Baik', 'Sedikit', 'baik', 'baik', 'sedang', 'tidak', 'pukul 8 hingga 4 pagi', 'pukul 4 hingga 5 sore', 'tidak', 'Tidak ada', 'baik', 'perlu disiplin', 'gangguan', 'normal', 'normal', 'ibu', 'susu_kaleng', 'tidak ada', 67),
(72, 'tidak ada', 'imunisasi polio', '2018', 'tidak ada', 'tidak ada', 'tidak ada', 'dewasa 3 anak 6', 'ada', 'Kurang', 'Baik', 'Baik', 'Cukup', 'Banyak', 'baik', 'baik', 'baik', 'tolong', 'pukul 8 hingga 5 pagi', 'tidak pernah', 'ya', 'tidak ada', 'cukup', 'tidak ada', 'normal', 'normal', 'normal', 'ibu', 'asi', 'Buah', 68),
(74, 'tidak ada', 'belum', 'belum', 'tidak ada', 'belum', 'belum', 'dewasa 2 anak 2', 'ada', 'Kurang', 'Cukup', 'Baik', 'Baik', 'Banyak', 'baik', 'baik sekali', 'baikn sekali', 'tidak', 'pukul 10 sampai pukul 6 pagi', 'tidak tidur siang', 'tidak', 'Perlu di temani', 'baik', 'tidak ada', 'normal', 'normal', 'normal', 'ibu', 'asi', 'susu sapi', 70),
(75, 'tidak ada', 'Imunisasi DPT-HB-Hib 2, Polio ', '2019', 'tidak ada', 'tidak ada', 'tidak ada', 'dewasa 2 anak 2', 'ada', 'Banyak', 'Baik', 'Cukup', 'Baik', 'Banyak', 'baik', 'baik', 'baik', 'tolong', 'pukul 10 sampai pukul 6 pagi', 'pukul 4 hingga 5 sore', 'ya', 'tidak ada', 'cukup', 'tidak ada', 'normal', 'normal', 'normal', 'ibu', 'asi', 'sayur', 71),
(76, 'tidak ada', 'Antibodi', '2020', 'darah rendah', '2 tahun', '1 bulan', 'Dewasa 4 anak 3', 'ada', 'Banyak', 'Cukup', 'Cukup', 'Baik', 'Banyak', 'baik', 'baik', 'baik', 'tidak', 'pukul 10 sampai pukul 6 pagi', 'pukul 3 hingga 4 sore', 'tidak', 'tidak ada', 'baik', 'Perlu diberi kesabaran', 'normal', 'normal', 'normal', 'ibu', 'asi', 'Susu Kedelai', 72);

-- --------------------------------------------------------

--
-- Table structure for table `dt_ortu`
--

CREATE TABLE `dt_ortu` (
  `id_dt_ortu` int(11) NOT NULL,
  `nama_ayah` varchar(50) NOT NULL,
  `ktp_ayah` char(16) NOT NULL,
  `ttl_ayah` varchar(50) NOT NULL,
  `agama_ayah` varchar(30) NOT NULL,
  `sts_ayah` varchar(30) NOT NULL,
  `pendidikan_ayah` varchar(30) NOT NULL,
  `kerja_ayah` varchar(30) NOT NULL,
  `gaji_ayah` varchar(30) NOT NULL,
  `alamat_ayah` varchar(100) NOT NULL,
  `tlp_ayah` varchar(13) NOT NULL,
  `nama_ibu` varchar(50) NOT NULL,
  `ktp_ibu` char(16) NOT NULL,
  `ttl_ibu` varchar(50) NOT NULL,
  `agama_ibu` varchar(30) NOT NULL,
  `sts_ibu` varchar(30) NOT NULL,
  `pendidikan_ibu` varchar(30) NOT NULL,
  `kerja_ibu` varchar(30) NOT NULL,
  `gaji_ibu` varchar(30) NOT NULL,
  `alamat_ibu` varchar(100) NOT NULL,
  `tlp_ibu` varchar(13) NOT NULL,
  `id_murid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dt_ortu`
--

INSERT INTO `dt_ortu` (`id_dt_ortu`, `nama_ayah`, `ktp_ayah`, `ttl_ayah`, `agama_ayah`, `sts_ayah`, `pendidikan_ayah`, `kerja_ayah`, `gaji_ayah`, `alamat_ayah`, `tlp_ayah`, `nama_ibu`, `ktp_ibu`, `ttl_ibu`, `agama_ibu`, `sts_ibu`, `pendidikan_ibu`, `kerja_ibu`, `gaji_ibu`, `alamat_ibu`, `tlp_ibu`, `id_murid`) VALUES
(52, 'Jim Hopper', '222222222222', 'Indiana, 23 April 1990', 'Islam', 'Masih Hidup', 'Sarjana(S1)', 'Polisi', 'Lebih dari Rp.5.000.000', 'Jalan Bunga, Halim Perdana Kusuma , Jakarta Timur', '08992221119', 'Joyce Byers', '88772233440', 'Wisconsin 5 Juni 1993', 'Islam', 'Masih Hidup', 'Diploma', 'Ibu Rumah Tangga', 'Rp.3.000.000 s.d Rp.5.000.000', 'Jalan Bunga Halim Perdana Kusuma ', '0867993322', 51),
(55, 'Ahmad Ackerman', '11550909', 'Semarang 9 April 1994', 'Islam', 'Masih Hidup', 'Sarjana(S1)', 'Pegawai Swasta', 'Lebih dari Rp.5.000.000', 'Jalan Merbabu 03, Banyumanik, Semarang', '082228888899', 'Yuki Ackerman', '11557580909', 'Malang 02 Maret 1995', 'Islam', 'Masih Hidup', 'Sarjana (S1)', 'Karyawan Swata', 'Rp.2.000.000 s.d Rp.3.000.000', 'Jalan Merbabu 03, Banyumanik, Semarang', '0821998765', 54),
(58, 'Zaid Arlert', '12776659', 'Bekasi 3 maret 1989', 'Islam', 'Masih Hidup', 'Magister(S2)', 'traveller', 'Lebih dari Rp.5.000.000', 'Jalan Alumunium 3, Jatibening', '0823487654', 'Santika Putri', '1277893', 'Jakarta 5 Juni 1993', 'Islam', 'Masih Hidup', 'Sarjana (S1)', 'Ibu Rumah Tangga', 'Kurang dari Rp.500.000', 'Jalan Alumunium 3, Jatibening', '08229843343', 57),
(59, 'Erwin Smith', '11550909', 'Chicago, 14 Oktober 1995', 'Islam', 'Masih Hidup', 'Doktor(S3)', 'Diplomat', 'Lebih dari Rp.5.000.000', 'Jalan Melati 93, Kembangan, Jakarta Pusat', '0822983317', 'Niki Zefanya ', '11557580909', 'Jakarta 25 Januari 1999', 'Islam', 'Masih Hidup', 'Sarjana (S1)', 'Guru', 'Rp.1.000.000 s.d Rp.2.000.000', 'Jalan Melati 93, Kembangan, Jakarta Pusat', '0822900172', 58),
(61, 'Adi Guntoro', '1899528', 'Jogjakarta 28 Maret 1989', 'Islam', 'Masih Hidup', 'Sarjana(S1)', 'Karyawan Swasta', 'Lebih dari Rp.5.000.000', 'Jalan Sirih 97 Blimbing Kota Malang', '089278890189', 'Sahari Widyana', '180938992', 'Malang 2 Desember 1991', 'Islam', 'Masih Hidup', 'Sarjana (S1)', 'Karyawan Swasta', 'Rp.3.000.000 s.d Rp.5.000.000', 'Jalan Sirih 97 Blimbing Kota Malang', '08291899089', 58),
(62, 'Adi Guntoro', '18109100282', 'Jogjakarta 28 Maret 1989', 'Islam', 'Masih Hidup', 'Sarjana(S1)', 'Karyawan Swasta', 'Lebih dari Rp.5.000.000', 'Jalan Sirih 97 Blimbing Kota Malang', '08729181028', 'Sahari Widyana', '183029272902', 'Malang 2 Desember 1991', 'Islam', 'Masih Hidup', 'Sarjana (S1)', 'Pegawai swasta', 'Rp.3.000.000 s.d Rp.5.000.000', 'Jalan Sirih 97 Blimbing Kota Malang', '082910190101', 58),
(63, 'Adi Guntoro', '18109100282', 'Jogjakarta 28 Maret 1989', 'Islam', 'Masih Hidup', 'Sarjana(S1)', 'Karyawan Swasta', 'Lebih dari Rp.5.000.000', 'Jalan Sirih 97 Blimbing Kota Malang', '08729181028', 'Sahari Widyana', '183029272902', 'Malang 2 Desember 1991', 'Islam', 'Masih Hidup', 'Sarjana (S1)', 'Pegawai swasta', 'Rp.3.000.000 s.d Rp.5.000.000', 'Jalan Sirih 97 Blimbing Kota Malang', '082910190101', 58),
(64, 'Adi Guntoro', '18109100282', 'Jogjakarta 28 Maret 1989', 'Islam', 'Masih Hidup', 'Sarjana(S1)', 'Karyawan Swasta', 'Lebih dari Rp.5.000.000', 'Jalan Sirih 97 Blimbing Kota Malang', '08729181028', 'Sahari Widyana', '183029272902', 'Malang 2 Desember 1991', 'Islam', 'Masih Hidup', 'Sarjana (S1)', 'Pegawai swasta', 'Rp.3.000.000 s.d Rp.5.000.000', 'Jalan Sirih 97 Blimbing Kota Malang', '082910190101', 58),
(67, 'Adi Guntoro', '12896406', 'Jogjakarta 28 Maret 1989', 'Islam', 'Masih Hidup', 'Sarjana(S1)', 'Karyawan Swasta', 'Rp.3.000.000 s.d Rp.5.000.000', 'Jalan Sirih 97 Kota Malang', '08292928320', 'Sahari Widyana', '192183013180', 'Malang 2 Desember 1991', 'Islam', 'Masih Hidup', 'Sarjana (S1)', 'Karyawan Swasta', 'Rp.2.000.000 s.d Rp.3.000.000', 'Jalan Sirih97 Kota Malang', '082294922020', 62),
(68, 'Tri Widyono', '119720201810', 'Jakarta 6 April 1990', 'Islam', 'Masih Hidup', 'Magister(S2)', 'Pegawai Negeri Sipil', 'Lebih dari Rp.5.000.000', 'Jalan Mangga 24 Jatibening, Bekasi', '08927834929', 'Anita Lestari', '19238320310', 'Jakarta 10 Mei 1991', 'Islam', 'Masih Hidup', 'Sarjana (S1)', 'Karyawan Swata', 'Rp.3.000.000 s.d Rp.5.000.000', 'Jalan Mangga 24 Jatibening, Bekasi', '0829178881', 63),
(69, 'Grisha Yeager', '99999999999', 'Klaten 26 Januari 1985', 'Islam', 'Masih Hidup', 'Doktor(S3)', 'Dokter', 'Lebih dari Rp.5.000.000', 'Jalan Sina 70 Jatimakmur Bekasi', '0829181190', 'Carla Yeager', '88888888888', 'Semarang 29 Januari 1991', 'Islam', 'Masih Hidup', 'SMA/MA/Sederajat', 'Ibu Rumah Tangga', 'Rp.2.000.000 s.d Rp.3.000.000', 'Jalan Sina 70 Jatimakmur Bekasi', '0829179303', 64),
(70, 'Dido Leonhart', '222222222222', 'Semarang 9 April 1990', 'Islam', 'Masih Hidup', 'Sarjana(S1)', 'Karyawan Swasta', 'Rp.3.000.000 s.d Rp.5.000.000', 'Jalan Benda 29 Cilandak Jakarta Selatan', '089283232', 'Khaira Leonhart', '1921201303', 'Jakarta ,02 februari 1993', 'Islam', 'Sudah Meninggal', 'Diploma', 'tidak ada', 'Pilih', 'Jalan Muray 11 Jakarta Selatan', '089239232992', 65),
(72, 'John Ral', '222222222222', 'Jogjakarta 28 Maret 1989', 'Kristen', 'Masih Hidup', 'Sarjana(S1)', 'Pegawai Swasta', 'Rp.3.000.000 s.d Rp.5.000.000', 'Jalan Kamboja 5 Jati Asih Bekasi', '081111111111', 'Siska Putri', '183029272902', 'Malang 2 Desember 1991', 'Islam', 'Masih Hidup', 'Sarjana (S1)', 'Ibu Rumah Tangga', 'Rp.2.000.000 s.d Rp.3.000.000', 'Jalan Kamboja 5 Jati Asih Bekasi', '08219218219', 67),
(73, 'Andito Pamungkas', '12802203203930', 'Bekasi 3 maret 1989', 'Islam', 'Masih Hidup', 'Sarjana(S1)', 'Diplomat', 'Lebih dari Rp.5.000.000', 'Jalan Barat 9 Sunter Jakarta Utara', '082271921821', 'Winda Pamungkas', '88772233440', 'Malang 02 Maret 1995', 'Budha', 'Masih Hidup', 'Diploma', 'Wiraswasta', 'Rp.3.000.000 s.d Rp.5.000.000', 'Jalan Barat 9 Sunter Jakarta Utara', '08291212932', 68),
(75, 'Andi Ahmad', '129102130320', 'Makkasar 5 Mei 1990', 'Islam', 'Masih Hidup', 'Sarjana(S1)', 'Karyawan Swasta', 'Lebih dari Rp.5.000.000', 'Jalan Meranti 90 Bekasi Jawa Barat', '08232392302', 'Bebby Widya', '121833020320', 'Jakarta 25 November 1995', 'Islam', 'Masih Hidup', 'Diploma', 'Ibu Rumah Tangga', 'Rp.3.000.000 s.d Rp.5.000.000', 'Jalan Meranti 90 Bekasi Jawa Barat', '082298224292', 70),
(76, 'Yono Suryono', '222222222222', 'Semarang 9 April 1994', 'Islam', 'Masih Hidup', 'Sarjana(S1)', 'Karyawan Swasta', 'Rp.3.000.000 s.d Rp.5.000.000', 'Jalan Mangga 9 Jatibening', '081111111111', 'Amalia', '88888888888', 'Malang 02 Maret 1995', 'Islam', 'Masih Hidup', 'Diploma', 'tidak ada', 'Kurang dari Rp.500.000', 'Jalan Mangga 9 Jatibening', '081111111111', 71),
(77, 'Widyono Supratman', '99999999999', 'Surabaya 28 Maret 1989', 'Islam', 'Masih Hidup', 'Sarjana(S1)', 'Dokter', 'Rp.500.000 s.d Rp.1.000.000', 'Jalan Tebu 90 Jatibening Dua Bekasi', '081111111111', 'Anna Sinchya', '88888888888', 'Bali 29 April 1993', 'Budha', 'Masih Hidup', 'Sarjana (S1)', 'Karyawan Swata', 'Rp.2.000.000 s.d Rp.3.000.000', 'Jalan Tebu 90 Jatibening Dua Bekasi', '083323927', 72);

-- --------------------------------------------------------

--
-- Table structure for table `form_daful`
--

CREATE TABLE `form_daful` (
  `id_form_daful` int(11) NOT NULL,
  `nama_lkp` varchar(50) NOT NULL,
  `nik` varchar(15) NOT NULL,
  `thn_ajaran` varchar(10) NOT NULL,
  `dr_kelompok` varchar(20) NOT NULL,
  `ke_kelompok` varchar(30) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `tmpt_lahir` varchar(25) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `nama_ayah` varchar(50) NOT NULL,
  `bukti_bayar` varchar(100) NOT NULL,
  `id_murid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `form_daful`
--

INSERT INTO `form_daful` (`id_form_daful`, `nama_lkp`, `nik`, `thn_ajaran`, `dr_kelompok`, `ke_kelompok`, `alamat`, `tmpt_lahir`, `tgl_lahir`, `nama_ayah`, `bukti_bayar`, `id_murid`, `username`) VALUES
(23, 'Clarissa Saraswati', '2147483647', '2021', 'Murid Baru', 'Kelompok Bermain', 'Jalan Mangga 24 Jatibening ', 'Jakarta', '2018-12-01', 'Tri Widyono', '', 0, 'clarisaras'),
(24, 'Mikasa Ackerman', '1509090909', '2019', 'Kelompok Bermain', 'TK A', 'Jalan Semangka 1', 'Jakarta', '2018-02-12', 'Ahmad Ackerman', '', 0, 'mikasa15'),
(25, 'Anna Shirley', '2147483647', '2019', 'TK A', 'TK B', 'Jalan Sirih 97 Blimbing Malang', 'Malang', '2018-04-02', 'Adi Guntoro', '', 0, 'anna_'),
(26, 'Eren Yeager', '2147483647', '2019', 'Kelompok Bermain', 'TK B', 'Jalan Sina 70 Jatimakmur Bekasi', 'Semarang', '2018-03-30', 'Grisha Yeager', '', 0, 'eren30'),
(27, 'Armin Arlert', '120311999', '2019', 'Kelompok Bermain', 'TK A', 'Jalan Alumunium 3 Jatibening Bekasi', 'Surabaya', '2018-11-03', 'Zaid Arlert', '', 0, 'arminn'),
(28, 'Annie Leonhart', '1289734629', '2020', 'TK A', 'TK B', 'Jalan Benda 29 Cilandak Jakarta Selatan', 'Jakarta', '2017-04-02', 'Dido Leonhart', '', 0, 'anniehart'),
(29, 'Nicole Zenaba-Smith', '189022334', '2021', 'Murid Baru', 'Kelompok Bermain', 'Jalan Buah', 'Osaka', '2017-06-18', 'Erwin Smith', '', 0, 'nikizefanya'),
(31, 'Petra Ral', '2147483647', '2021', 'Murid Baru', 'Kelompok Bermain', 'Jalan Kamboja 5 Jati Asih Bekasi', 'Jakarta', '2018-12-06', 'John Ral', '', 0, 'petraral'),
(32, 'Winda Allisa', '2147483647', '2022', 'TK A', 'TK B', 'Jalan Barat 9 Sunter Jakarta Utara', 'Bandung', '2016-11-28', 'Andito Pamungkas', '', 0, 'wandaaa'),
(34, 'Iken Alifah', '2147483647', '2021', 'Murid Baru', 'Kelompok Bermain', 'Jalan Meranti 90 Bekasi Jawa Barat', 'Jakarta', '2018-12-25', 'Andi Ahmad', '', 0, 'ikenlif'),
(35, 'Putri ', '2147483647', '2021', 'Murid Baru', 'Kelompok Bermain', 'Jalan Mangga 9 Jatibening', 'Jakarta', '2017-08-10', 'Yono Suryono', '', 0, 'putri1'),
(37, 'Audrey Hepburn', '2147483647', '2022', 'TK A', 'TK B', 'Jalan Tebu 9', 'Surabaya', '2017-06-11', 'Widyono Supratman', '70092-struk bukti pembayaran.png', 0, 'audrey_');

-- --------------------------------------------------------

--
-- Table structure for table `gambar_info`
--

CREATE TABLE `gambar_info` (
  `id_gambar_info` int(11) NOT NULL,
  `nama_gambar` varchar(100) NOT NULL,
  `id_info` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `guruu`
--

CREATE TABLE `guruu` (
  `id_guru` int(11) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `nip` varchar(15) NOT NULL,
  `tmpt` varchar(20) NOT NULL,
  `tanggal` varchar(25) NOT NULL,
  `jenis_kel` varchar(20) NOT NULL,
  `pendidikan` varchar(15) NOT NULL,
  `jabatan` varchar(15) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `no_tlp` varchar(16) NOT NULL,
  `foto_guru` varchar(100) NOT NULL,
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `guruu`
--

INSERT INTO `guruu` (`id_guru`, `nama`, `nip`, `tmpt`, `tanggal`, `jenis_kel`, `pendidikan`, `jabatan`, `alamat`, `no_tlp`, `foto_guru`, `id`, `username`) VALUES
(6, 'Yeni Cahyani', '112236789', 'Bekasi', '23 Juli 1992', 'Wanita', 'Sarjana', 'Guru TK B', 'Jalan Mawar 3', '0899772273', '85099-Black and White 005.jpg', 15, 'yeni09'),
(10, 'Niki Zefanya', '1125019922', 'Jakarta', '25 Januari 1999', 'wahita', 'SMA', 'Guru PG', 'Jalan Gula 202 Jakarta', '0822348971', '96657-niki.jpg', 18, 'nikizefanya'),
(15, 'Levi Ackerman', '1921021010', 'Jakarta', '25 Desember 1985', 'pria', 'Sarjana', 'Guru TK A', 'Jalan Sina 18 Jakarta Timur', '0822682298393', '68336-levi.jpg', 2, 'leviheicho');

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE `info` (
  `id_info` int(11) NOT NULL,
  `nama_info` varchar(255) NOT NULL,
  `isi_info` varchar(255) NOT NULL,
  `tgl_info` date NOT NULL DEFAULT current_timestamp(),
  `gambar_info` varchar(100) NOT NULL,
  `username` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`id_info`, `nama_info`, `isi_info`, `tgl_info`, `gambar_info`, `username`) VALUES
(2, 'Tahun Ajaran Murid Baru', 'Selamat naik kelas! Selamat Tahun ajaran baru!', '2021-06-25', '64101-kelas1.jpg', 'iken25'),
(5, 'Informasi Pendaftaran Murid Baru', 'Penerimaan murid baru telah dibuka, untuk anak usia 3 tahun masuk ke Kelompok Bermain', '2021-06-27', '69976-sosial.jpg', 'iken25'),
(6, 'Kunjungan Wisata Murid', 'Kunjungan wisata untuk kelompok TK A dan B ke Musium, pada hari senin dan jangan lupa membawa bekal!', '2021-06-29', '73546-Kindergarten-readiness.jpg', 'putri1'),
(7, 'Selamat Datang ', 'Selamat Datang Murid Baru', '2021-07-08', '64567-kelas1.jpg', 'putri1'),
(8, 'Lomba ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor i', '2021-09-17', '10590-news-paper.png', 'ali00');

-- --------------------------------------------------------

--
-- Table structure for table `informasi`
--

CREATE TABLE `informasi` (
  `id_informasi` int(11) NOT NULL,
  `judul_informasi` varchar(255) NOT NULL,
  `isi_informasi` varchar(255) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `tgl_info` date NOT NULL DEFAULT current_timestamp(),
  `username` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `kepsek`
--

CREATE TABLE `kepsek` (
  `id_kepsek` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `nip` varchar(15) NOT NULL,
  `tmp_lahir` varchar(20) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `lulusan` varchar(30) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `jenis_kelamin` varchar(15) NOT NULL,
  `no_tlp` varchar(15) NOT NULL,
  `username` varchar(255) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kepsek`
--

INSERT INTO `kepsek` (`id_kepsek`, `nama`, `nip`, `tmp_lahir`, `tgl_lahir`, `lulusan`, `alamat`, `jenis_kelamin`, `no_tlp`, `username`, `id`) VALUES
(1, 'Sukma Saraswati', '111999888222', 'Jakarta', '1992-02-11', 'Sarjana S1', 'Jalan Maninjau', 'wanita', '0822682298393', 'sukmawati', 31),
(3, 'Rahman A', '11223345678', 'Bekasi', '2021-07-01', 'SMA', 'Jalan Angka', 'pria', '0899922227', 'rahman57', 33),
(4, 'Anita Larasati', '111999888222', 'Belitung', '1992-07-03', 'Sarjana S1', 'Jalan Mangga', 'wanita', '08899223333', 'anitati', 34);

-- --------------------------------------------------------

--
-- Table structure for table `matapelajaran`
--

CREATE TABLE `matapelajaran` (
  `id_mapel` int(11) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `info_mapel` varchar(150) NOT NULL,
  `gambar_mapel` varchar(100) NOT NULL,
  `username` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `matapelajaran`
--

INSERT INTO `matapelajaran` (`id_mapel`, `nama`, `info_mapel`, `gambar_mapel`, `username`) VALUES
(14, 'Menggambar', 'Menumbuhkan kreativitas anak melalui seni menggambar', '70964-gambar.jpg', 'iken25'),
(15, 'Iqrar', 'Mengajarkan beriman kepada Allah SWT sejak dini', '53380-prayingkid.jpg', 'ali00'),
(16, 'Iqro', 'Memperkenalkan huruf Arab', '60471-iqro.jpg', 'putri1'),
(18, 'Membaca', 'membaca adalah jendela dunia', '89164-kelas.jpg', 'putri1');

-- --------------------------------------------------------

--
-- Table structure for table `murid`
--

CREATE TABLE `murid` (
  `id_murid` int(11) NOT NULL,
  `nik` int(15) NOT NULL,
  `nama_lkp` varchar(50) NOT NULL,
  `nama_pgl` varchar(30) NOT NULL,
  `jk` varchar(20) NOT NULL,
  `tmpt_lahir` varchar(25) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `anak_ke` varchar(10) NOT NULL,
  `jml_sdr` int(10) NOT NULL,
  `jarak_rumah` int(11) NOT NULL,
  `jenis_sekolah` varchar(11) NOT NULL,
  `asal_sekolah` varchar(50) NOT NULL,
  `jalan` varchar(50) NOT NULL,
  `kelurahan` varchar(50) NOT NULL,
  `kecamatan` varchar(50) NOT NULL,
  `kabupaten` varchar(50) NOT NULL,
  `provinsi` varchar(30) NOT NULL,
  `kd_pos` int(5) NOT NULL,
  `status_tgl` varchar(30) NOT NULL,
  `di_biayai` varchar(30) NOT NULL,
  `tgl_daftar` date NOT NULL DEFAULT current_timestamp(),
  `username` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `murid`
--

INSERT INTO `murid` (`id_murid`, `nik`, `nama_lkp`, `nama_pgl`, `jk`, `tmpt_lahir`, `tgl_lahir`, `anak_ke`, `jml_sdr`, `jarak_rumah`, `jenis_sekolah`, `asal_sekolah`, `jalan`, `kelurahan`, `kecamatan`, `kabupaten`, `provinsi`, `kd_pos`, `status_tgl`, `di_biayai`, `tgl_daftar`, `username`) VALUES
(51, 2147483647, 'Jane Eleven Hopper', 'Eleven', 'perempuan', 'Jakarta', '2017-01-15', '1', 3, 0, 'bimba', 'Bimba 1 Jakarta', 'Jalan Bunga', 'Halim', 'Kp.Makassar', 'Jakarta Timur', 'DKI Jakarta', 13110, 'Ikut Saudara atau Kerabat', 'Wali', '2021-06-22', 'sashaaa'),
(54, 1509090909, 'Mikasa Ackerman', 'Mikasa', 'perempuan', 'Jakarta', '2018-02-12', '1', 2, 3, 'paud', 'PAUD Kamila', 'Jalan Merbabu 03', 'Gedawang', 'Banyumanik', 'Semarang', 'Jawa Tengah', 50266, 'Ikut Orang tua', 'Orang Tua Kandung', '2021-06-22', 'mikasa15'),
(57, 120311999, 'Armin Arlert', 'Armin', 'laki', 'Surabaya', '2018-11-03', '1', 1, 0, 'bimba', 'Bimba Cahaya', 'jl. Alumunium 3', 'Jatibening', 'Pondok Gede', 'Kota Bekasi', 'Jawa Barat', 17413, 'Ikut Orang tua', 'Orang Tua Kandung', '2021-06-22', 'arminn'),
(58, 189022334, 'Nicole Zenaba-Smith', 'Nicole', 'perempuan', 'Osaka', '2017-06-18', '3', 3, 0, 'blm', 'belum ada', 'Jalan Melati 93', 'Kembangan Selatan', 'Kembangan ', 'Jakarta Pusat', 'DKI Jakarta', 11610, 'Ikut Orang tua', 'Tanggung Jawab Sendiri', '2021-06-22', 'nikizefanya'),
(62, 2147483647, 'Anna Shirley', 'Anna', 'perempuan', 'Malang', '2018-04-02', '1', 1, 0, 'bimba', 'belum ada', 'Jalan Sirih 97', 'Purwantoro', 'Blimbing', 'Kota Malang', 'Jawa Timur', 65122, 'Ikut Saudara atau Kerabat', 'Wali', '0000-00-00', 'anna_'),
(63, 2147483647, 'Clarissa Saraswati', 'Claris', 'perempuan', 'Jakarta', '2018-12-01', '2', 3, 0, 'blm', 'Belum pernah', 'Jalan Mangga 24', 'Jatibening', 'Pondok Gede', 'Bekasi', 'Jawa Barat', 17412, 'Ikut Orang tua', 'Orang Tua Kandung', '2021-06-25', 'clarisaras'),
(64, 2147483647, 'Eren Yeager', 'Eren', 'laki', 'Semarang', '2018-03-30', '1', 2, 0, 'tk', 'Taman Kanak-kanak Shinggeki ', 'Jalan Sina 70', 'Jatimakmur', 'Pondok Gede', 'Bekasi', 'Jawa Barat', 17412, 'Ikut Orang tua', 'Tanggung Jawab Sendiri', '2021-06-26', 'eren30'),
(65, 1289734629, 'Annie Leonhart', 'Annie', 'perempuan', 'Jakarta', '2017-04-02', '1', 1, 0, 'tk', 'Taman Kanak-kanak Senang', 'Jalan Benda 29', 'Gandaria Selatan', 'Cilandak', 'Jakarta Selatan', 'DKI Jakarta', 12420, 'Rumah Kos atau Kontrakan/Sewa', 'Wali', '2021-06-26', 'anniehart'),
(67, 2147483647, 'Petra Ral', 'Petra', 'perempuan', 'Jakarta', '2018-12-06', '1', 2, 0, 'blm', 'belum ada', 'Jalan Kamboja 5', 'Jati Asih', 'Pondok Gede', 'Bekasi', 'Jawa Barat', 17412, 'Ikut Saudara atau Kerabat', 'Orang Tua Kandung', '2021-06-28', 'petraral'),
(68, 2147483647, 'Winda Allisa', 'Winda', 'perempuan', 'Bandung', '2016-11-28', '3', 6, 0, 'tk', 'RA TK Al-Muttaqin', 'Jalan Barat 9', 'Sunter', 'Tanjung Priok', 'Jakarta Utara', 'DKI Jakarta', 14350, 'Rumah Kos atau Kontrakan/Sewa', 'Wali', '2021-06-28', 'wandaaa'),
(70, 2147483647, 'Iken Alifah', 'Iken ', 'perempuan', 'Jakarta', '2018-12-25', '1', 2, 0, 'blm', 'belum ada', 'Jalan Meranti 90', 'Jati Asih', 'Pondok Gede', 'Bekasi', 'Jawa Barat', 17412, 'Rumah Kos atau Kontrakan/Sewa', 'Orang Tua Kandung', '2021-06-29', 'ikenlif'),
(71, 2147483647, 'Putri ', 'Putri', 'perempuan', 'Jakarta', '2017-08-10', '1', 2, 0, 'blm', 'belum ada', 'Jalan Mangga 9', 'Jatibening', 'Pondok Gede', 'Bekasi', 'Jawa Barat', 17412, 'Ikut Orang tua', 'Orang Tua Kandung', '2021-07-08', 'putri1'),
(72, 2147483647, 'Audrey Hepburn', 'Audrey', 'perempuan', 'Surabaya', '2017-06-11', '1', 3, 0, 'tk', 'TK Negeri Surabaya', 'Jalan Tebu 90', 'Jatibening Dua', 'Pondok Gede', 'Bekasi', 'Jawa Barat', 17412, 'Ikut Orang tua', 'Tanggung Jawab Sendiri', '2021-07-11', 'audrey_');

-- --------------------------------------------------------

--
-- Table structure for table `nilai`
--

CREATE TABLE `nilai` (
  `id_nilai` int(11) NOT NULL,
  `nama_lkp` varchar(50) NOT NULL,
  `kelompok` varchar(20) NOT NULL,
  `nilai_agama` varchar(5) NOT NULL,
  `ket_agama` varchar(100) NOT NULL,
  `nilai_iqro` varchar(5) NOT NULL,
  `ket_iqro` varchar(100) NOT NULL,
  `nilai_shalat` varchar(5) NOT NULL,
  `ket_shalat` varchar(100) NOT NULL,
  `nilai_akhlak` varchar(5) NOT NULL,
  `ket_akhlak` varchar(100) NOT NULL,
  `nilai_sosial` varchar(5) NOT NULL,
  `ket_sosial` varchar(100) NOT NULL,
  `nilai_emosi` varchar(5) NOT NULL,
  `ket_emosi` varchar(100) NOT NULL,
  `nilai_bahasa` varchar(5) NOT NULL,
  `ket_bahasa` varchar(100) NOT NULL,
  `nilai_aksara` varchar(5) NOT NULL,
  `ket_aksara` varchar(100) NOT NULL,
  `nilai_bilangan` varchar(5) NOT NULL,
  `ket_bilangan` varchar(100) NOT NULL,
  `nilai_huruf` varchar(5) NOT NULL,
  `ket_huruf` varchar(100) NOT NULL,
  `nilai_sains` varchar(5) NOT NULL,
  `ket_sains` varchar(100) NOT NULL,
  `nilai_pola` varchar(5) NOT NULL,
  `ket_pola` varchar(100) NOT NULL,
  `nilai_warna` varchar(5) NOT NULL,
  `ket_warna` varchar(100) NOT NULL,
  `thn_ajaran` varchar(10) NOT NULL,
  `pesan` varchar(100) NOT NULL,
  `username` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `id_murid` int(11) NOT NULL,
  `id_form_daful` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nilai`
--

INSERT INTO `nilai` (`id_nilai`, `nama_lkp`, `kelompok`, `nilai_agama`, `ket_agama`, `nilai_iqro`, `ket_iqro`, `nilai_shalat`, `ket_shalat`, `nilai_akhlak`, `ket_akhlak`, `nilai_sosial`, `ket_sosial`, `nilai_emosi`, `ket_emosi`, `nilai_bahasa`, `ket_bahasa`, `nilai_aksara`, `ket_aksara`, `nilai_bilangan`, `ket_bilangan`, `nilai_huruf`, `ket_huruf`, `nilai_sains`, `ket_sains`, `nilai_pola`, `ket_pola`, `nilai_warna`, `ket_warna`, `thn_ajaran`, `pesan`, `username`, `id`, `id_murid`, `id_form_daful`) VALUES
(36, 'Iken Alifah', 'Kelompok Bermain', 'B+', 'perkembangan murid dalam agama membaik', 'B', 'Pemahaman mengenai iqro baik', 'D', 'sangat baik', 'B+', 'baik sekali', 'B', 'sudah ada perkembangan', 'C', 'sudah berkembang', 'B+', 'baikk', 'B', 'baikk', 'A', 'baik', 'A', 'baik sekali', 'A', 'baik', 'A+', 'baik sekali', 'B', 'baik', '2021', 'Tingkatkan bersosialisasi', 'leviheicho', 2, 0, 0),
(37, 'Mikasa Ackerman', 'TK A', 'A+', 'baik', 'A', 'baik', 'B+', 'sangat baik', 'B', 'mulai ada perkembangan', 'B+', 'mulai ada interaksi antar sesama', 'B+', 'emosi sudah mulai stabil', 'B+', 'baik', 'B', 'milai ada perkembangan dalam nilai aksara', 'A+', 'pengenalan bilangan sudah baik', 'A', 'pengenalan huruf mulai lancar', 'A+', 'ilmu sains diterapkan dengan baik', 'B', 'pola bentuk mulai terlihat', 'B+', 'pengenalan warna sudah baik', '2021', 'Mulailah aktif di sekolah', 'leviheicho', 2, 0, 0),
(38, 'Anna Shirley', 'TK B', 'A+', 'murid mengikuti dengan baik', 'B+', 'perkembangan murid sudah sesuai harapan', 'A', 'shalat sudah baik', 'B', 'akhlak murid semakin membaik', 'B', 'perkembangan sosial pada murid sudah baik', 'B', 'sudah baik', 'B', 'perkembangan sudah terlihat', 'A', 'perkembangan pada aksara sudah baik', 'B+', 'perkembangan baik', 'A', 'pengenalan huruf sudah lancar', 'B+', 'ilmu sains sudah diterapkan', 'A+', 'murid sudah mengenal pola dan bentuk dengan baik', 'B', 'murid sudah mengenal warna dengan baik', '2022', 'Anak murid sudah baik', 'leviheicho', 2, 0, 0),
(39, 'Petra Ral', 'Kelompok Bermain', 'B+', 'baik', 'B+', 'baik', 'A', 'sangat baik', 'C', 'belum', 'A+', 'tidak pendiam', 'B+', 'baik', 'A+', 'baik', 'A+', 'baik', 'C', 'baik sekali', 'A', 'sangat baik', 'A', 'baik', 'A+', 'baik sekali', '', 'belum ada perkembangan', '2021', 'Mulailah aktif di sekolah', 'leviheicho', 2, 0, 0),
(40, 'Audrey Hepburn', 'TK B', 'B+', 'Perkembangan dalam Agama sudah mulai meningkat', 'B', 'Perkembangan membaca iqro mulai ada kemajuan', 'B', 'Perkembangan shalah meningkat', 'A+', 'Akhlak sangat terpuji', 'B+', 'Sudah mulai bersosialisasi', 'A', 'Pengendalian emosi sudah terkendali dengan baik', 'A', 'Dalam mengungkapkan sesuatu sudah baik', 'A', 'Nilai aksara sudah baik', 'A', 'Pemahaman bilangan sudah meningkat dengan baik', 'A', 'Pemahaman huruf sudah meningkat dengan baik', 'B', 'Penerapan ilmu sains mulai berkembang', 'B+', 'Pengenalan pola dan bentuk sudah meningkat sesuai harapan', '', 'Murid dapat mengenal warna dengan baik', '2022', 'tingkatkanlah dalam ilmu agama', 'leviheicho', 2, 0, 0),
(41, 'Petra Ral', 'Kelompok Bermain', 'A+', 'Dipertahankan Nilainya', 'A', 'Perkembangan Baik', 'B+', 'Penilaian Shalat meningkat', 'B+', 'Perkembangan murid seusai harapan', 'A+', 'Murid baik dalam sosial', 'A', 'Emosi pada murid baik', 'A', 'Perkembangan pada Bahasa meningkat', 'B', 'Perkembangan meningkat', 'A', 'Pengenalan terhadap bilangan baik', 'A', 'pengenalan pada huruf meningkat', 'A+', 'Perkembangan sains meningkat', 'B+', 'Pengenalan pola dan bentuk sesuai harapan', '', 'pengenalan warna baik', '2021', 'pertahankan perkembangan yang ada', 'nikizefanya', 18, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nilai_fisik`
--

CREATE TABLE `nilai_fisik` (
  `id_nilai_fisik` int(11) NOT NULL,
  `nilai_motorik_kasar` varchar(10) NOT NULL,
  `ket_kasar` varchar(100) NOT NULL,
  `nilai_motorik_halus` varchar(10) NOT NULL,
  `ket_halus` varchar(100) NOT NULL,
  `sehat_fisik` varchar(10) NOT NULL,
  `ket_fisik` varchar(100) NOT NULL,
  `nilai_bb` varchar(10) NOT NULL,
  `nilai_tb` varchar(10) NOT NULL,
  `pesan_fisik` varchar(100) NOT NULL,
  `ekskul1` varchar(20) NOT NULL,
  `nilai_ekskul1` varchar(5) NOT NULL,
  `ekskul2` varchar(20) NOT NULL,
  `nilai_ekskul2` varchar(5) NOT NULL,
  `sakit` varchar(30) NOT NULL,
  `izin` varchar(30) NOT NULL,
  `tnp_keterangan` varchar(30) NOT NULL,
  `id_nilai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nilai_fisik`
--

INSERT INTO `nilai_fisik` (`id_nilai_fisik`, `nilai_motorik_kasar`, `ket_kasar`, `nilai_motorik_halus`, `ket_halus`, `sehat_fisik`, `ket_fisik`, `nilai_bb`, `nilai_tb`, `pesan_fisik`, `ekskul1`, `nilai_ekskul1`, `ekskul2`, `nilai_ekskul2`, `sakit`, `izin`, `tnp_keterangan`, `id_nilai`) VALUES
(2, 'A', 'motorik baik', 'A+', 'baik', 'B+', 'baik', '25kg', '10cm', 'pertumbuhan baik', 'menari', 'K', 'olahraga', 'B', '2 hari', '3 hari', '2 hari', 36),
(3, 'B', 'sudah ada perkembangan', 'A', 'sudah dengan baik', 'B', 'fisik baik', '12kg', '90cm', 'pertumbuhan baik', 'olahraga', 'C', '', 'Nilai', '2 hari', '0 hari', '2 hari', 37),
(4, 'B+', 'kemampuan motorik kasar sudah baik', 'A', 'perkembangan motorik halus semakin membaik', 'B+', 'perkembangan fisik baik', '29 kg', '100 cm', 'pertumbuhan semakin baik', 'menyanyi', 'B', '', 'Nilai', '2 hari', '4 hari', '1 hari', 38),
(5, 'B+', 'motorik kasar baik', 'A+', 'motorik halus membaik', 'A', 'perkembangan fisik baik', '26kg', '93 cm', 'pertumbuhan baik', 'menyanyi', 'B', 'olahraga', 'C', '3 Hari', '4 Hari', '', 39),
(6, 'A+', 'perkembangan pada motorik kasar meningkat dengan baik', 'A+', 'Nilai motorik halus sudah sangat baik', 'B+', 'kesehatan fisik sudah baik', '24 kg', '105cm', 'pertumbuhan baik', 'senam', 'C', 'menari', 'B', '2 hari', '3 hari', '', 40),
(7, 'A', 'perkembangan motorik kasar baik', 'A', 'perkembangan motorik halus baik', 'A+', 'perkembangan fisik baik', '20kg', '80 cm', 'pertumbuhan baik', 'menari', 'K', 'olahraga', 'C', '2 hari', '3 hari', '1 hari', 41);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nama`, `username`, `password`, `level`) VALUES
(1, 'iken alifia', 'iken25', 'iken1111', 'admin'),
(2, 'levi ackerman', 'leviheicho', 'levi2525', 'guru'),
(3, 'audrey hepburn', 'audrey_', 'audrey4444', 'murid'),
(7, 'sasha', 'sashaaa', 'sasha2222', 'murid'),
(12, 'ruru', 'ruru10', '9bf048de82836ab1c33be2b2cb18e794', 'murid'),
(13, 'riana', 'riana5', '8c85a6b61720d4688c50fe89c0b4ad1d', 'murid'),
(14, 'ali', 'ali00', 'ali0000', 'admin'),
(15, 'Yeni', 'Yeni09', 'yeni9999', 'guru'),
(16, 'Mikasa Ackerman', 'mikasa15', 'mikasa1515', 'murid'),
(17, 'Armin Arlert', 'arminn', 'arlert3', 'murid'),
(18, 'Niki Zefanya', 'nikizefanya', 'niki1111', 'guru'),
(19, 'Anna Shirley', 'anna_', 'anna7777', 'murid'),
(20, 'Clarissa Saraswati', 'clarisaras', 'saraswati2', 'murid'),
(21, 'Eren Yeager', 'eren30', 'tatakae', 'murid'),
(22, 'Annie Leonhart', 'anniehart', 'leonhart2', 'murid'),
(23, 'Iken Alifia', 'alifia3', 'alifia3333', 'murid'),
(24, 'Petra Ral', 'petraral', 'ral612', 'murid'),
(25, 'Wanda Allisa', 'wandaaa', 'wanda1234', 'murid'),
(26, 'Marisa Herman', 'marisaherman', 'risa2917', 'murid'),
(27, 'iken Alif', 'ikenlif', 'iken11', 'murid'),
(29, 'Putri Ashari', 'putriasha', 'putri1919', 'murid'),
(30, 'putri ', 'putri1', 'putri1111', 'murid'),
(31, 'Sukma Saraswati', 'sukmawati', 'watiwati', 'kepala sekolah'),
(33, 'Rahman', 'rahman57', 'rahman7777', 'kepala sekolah'),
(34, 'Anita Larasati', 'anitati', 'laras00', 'kepala sekolah'),
(35, 'Larasati Alaya', 'alayasati', 'laras39', 'guru'),
(36, 'Widya ', 'wiwidya', 'wiwid20', 'guru');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminn`
--
ALTER TABLE `adminn`
  ADD PRIMARY KEY (`id_admin`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `dt_dirimurid`
--
ALTER TABLE `dt_dirimurid`
  ADD PRIMARY KEY (`id_dt_dirimurid`),
  ADD KEY `dt_dirimurid_ibfk_1` (`id_murid`);

--
-- Indexes for table `dt_ortu`
--
ALTER TABLE `dt_ortu`
  ADD PRIMARY KEY (`id_dt_ortu`),
  ADD KEY `dt_ortu_ibfk_1` (`id_murid`);

--
-- Indexes for table `form_daful`
--
ALTER TABLE `form_daful`
  ADD PRIMARY KEY (`id_form_daful`),
  ADD KEY `id_murid` (`id_murid`);

--
-- Indexes for table `gambar_info`
--
ALTER TABLE `gambar_info`
  ADD PRIMARY KEY (`id_gambar_info`),
  ADD KEY `id_info` (`id_info`);

--
-- Indexes for table `guruu`
--
ALTER TABLE `guruu`
  ADD PRIMARY KEY (`id_guru`),
  ADD KEY `username` (`username`),
  ADD KEY `guruu` (`id`);

--
-- Indexes for table `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`id_info`);

--
-- Indexes for table `informasi`
--
ALTER TABLE `informasi`
  ADD PRIMARY KEY (`id_informasi`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `kepsek`
--
ALTER TABLE `kepsek`
  ADD PRIMARY KEY (`id_kepsek`),
  ADD KEY `id` (`id`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `matapelajaran`
--
ALTER TABLE `matapelajaran`
  ADD PRIMARY KEY (`id_mapel`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `murid`
--
ALTER TABLE `murid`
  ADD PRIMARY KEY (`id_murid`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`id_nilai`),
  ADD KEY `username` (`username`),
  ADD KEY `id_murid` (`id_murid`);

--
-- Indexes for table `nilai_fisik`
--
ALTER TABLE `nilai_fisik`
  ADD PRIMARY KEY (`id_nilai_fisik`),
  ADD KEY `id_nilai` (`id_nilai`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`username`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adminn`
--
ALTER TABLE `adminn`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `dt_dirimurid`
--
ALTER TABLE `dt_dirimurid`
  MODIFY `id_dt_dirimurid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `dt_ortu`
--
ALTER TABLE `dt_ortu`
  MODIFY `id_dt_ortu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `form_daful`
--
ALTER TABLE `form_daful`
  MODIFY `id_form_daful` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `gambar_info`
--
ALTER TABLE `gambar_info`
  MODIFY `id_gambar_info` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `guruu`
--
ALTER TABLE `guruu`
  MODIFY `id_guru` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `info`
--
ALTER TABLE `info`
  MODIFY `id_info` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `informasi`
--
ALTER TABLE `informasi`
  MODIFY `id_informasi` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kepsek`
--
ALTER TABLE `kepsek`
  MODIFY `id_kepsek` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `matapelajaran`
--
ALTER TABLE `matapelajaran`
  MODIFY `id_mapel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `murid`
--
ALTER TABLE `murid`
  MODIFY `id_murid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `nilai`
--
ALTER TABLE `nilai`
  MODIFY `id_nilai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `nilai_fisik`
--
ALTER TABLE `nilai_fisik`
  MODIFY `id_nilai_fisik` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `adminn`
--
ALTER TABLE `adminn`
  ADD CONSTRAINT `id` FOREIGN KEY (`id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `dt_dirimurid`
--
ALTER TABLE `dt_dirimurid`
  ADD CONSTRAINT `dt_dirimurid_ibfk_1` FOREIGN KEY (`id_murid`) REFERENCES `murid` (`id_murid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `dt_ortu`
--
ALTER TABLE `dt_ortu`
  ADD CONSTRAINT `dt_ortu_ibfk_1` FOREIGN KEY (`id_murid`) REFERENCES `murid` (`id_murid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `gambar_info`
--
ALTER TABLE `gambar_info`
  ADD CONSTRAINT `gambar_info_ibfk_1` FOREIGN KEY (`id_info`) REFERENCES `info` (`id_info`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `guruu`
--
ALTER TABLE `guruu`
  ADD CONSTRAINT `guruu` FOREIGN KEY (`id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `kepsek`
--
ALTER TABLE `kepsek`
  ADD CONSTRAINT `kepsek_ibfk_1` FOREIGN KEY (`id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `murid`
--
ALTER TABLE `murid`
  ADD CONSTRAINT `username` FOREIGN KEY (`username`) REFERENCES `users` (`username`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `nilai_fisik`
--
ALTER TABLE `nilai_fisik`
  ADD CONSTRAINT `nilai_fisik_ibfk_1` FOREIGN KEY (`id_nilai`) REFERENCES `nilai` (`id_nilai`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
