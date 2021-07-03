-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 28 Jun 2021 pada 08.08
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_thl`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_admin`
--

CREATE TABLE `m_admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `nama_admin` varchar(50) NOT NULL,
  `level` int(11) NOT NULL,
  `last_login` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `m_admin`
--

INSERT INTO `m_admin` (`id_admin`, `username`, `password`, `nama_admin`, `level`, `last_login`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Admin Pusat', 1, 0),
(2, 'operator', '4b583376b2767b923c3e1da60d10de59', 'Operator', 2, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_agama`
--

CREATE TABLE `m_agama` (
  `id_agama` int(11) NOT NULL,
  `nama_agama` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `m_agama`
--

INSERT INTO `m_agama` (`id_agama`, `nama_agama`) VALUES
(1, 'Islam'),
(2, 'Kristen'),
(3, 'Katolik'),
(4, 'Hindu'),
(5, 'Budha');

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_jenjang`
--

CREATE TABLE `m_jenjang` (
  `id_jenjang` int(10) NOT NULL,
  `nama_jenjang` enum('SD','SMP','SMA/Sederajat','DI','DII','DIII','DIV','S-1','S-2') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_riwayat_kontrak`
--

CREATE TABLE `m_riwayat_kontrak` (
  `id_riwayat` int(150) NOT NULL,
  `id_pegawai` int(130) NOT NULL,
  `mulai_kontrak` date NOT NULL,
  `akhir_kontrak` date NOT NULL,
  `no_kontrak` varchar(25) NOT NULL,
  `tgl_kontrak` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_status_kawin`
--

CREATE TABLE `m_status_kawin` (
  `id_status` int(10) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `m_status_kawin`
--

INSERT INTO `m_status_kawin` (`id_status`, `status`) VALUES
(1, 'Kawin'),
(2, 'Belum Kawin'),
(3, 'Cerai');

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_thl`
--

CREATE TABLE `m_thl` (
  `id_pegawai` int(50) NOT NULL,
  `nik` varchar(50) NOT NULL,
  `nama` varchar(500) NOT NULL,
  `tempat_lahir` varchar(50) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `status_kawin` int(1) NOT NULL,
  `agama` int(1) NOT NULL,
  `gelar_depan` varchar(5) NOT NULL,
  `gelar_belakang` varchar(5) NOT NULL,
  `jenjang_pendidikan` varchar(49) NOT NULL,
  `pendidikan` varchar(100) NOT NULL,
  `tgl_mulai_kontrak_awal` date NOT NULL,
  `tgl_akhir_kontrak_awal` date NOT NULL,
  `no_kontrak_awal` varchar(25) NOT NULL,
  `tgl_kontrak_awal` date NOT NULL,
  `kdunor` varchar(500) NOT NULL,
  `pekerjaan` varchar(400) NOT NULL,
  `alamat` varchar(300) NOT NULL,
  `npwp` varchar(25) NOT NULL,
  `no_bpjs_tenagakerja` varchar(20) NOT NULL,
  `no_bpjs_kesehatan` varchar(20) NOT NULL,
  `status_kontrak` enum('AKTIV','TIDAK AKTIV','','') NOT NULL,
  `add_at` datetime NOT NULL,
  `add_by` int(6) NOT NULL,
  `edit_at` datetime NOT NULL,
  `edit_by` int(6) NOT NULL,
  `foto` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `m_thl`
--

INSERT INTO `m_thl` (`id_pegawai`, `nik`, `nama`, `tempat_lahir`, `tgl_lahir`, `jenis_kelamin`, `status_kawin`, `agama`, `gelar_depan`, `gelar_belakang`, `jenjang_pendidikan`, `pendidikan`, `tgl_mulai_kontrak_awal`, `tgl_akhir_kontrak_awal`, `no_kontrak_awal`, `tgl_kontrak_awal`, `kdunor`, `pekerjaan`, `alamat`, `npwp`, `no_bpjs_tenagakerja`, `no_bpjs_kesehatan`, `status_kontrak`, `add_at`, `add_by`, `edit_at`, `edit_by`, `foto`) VALUES
(109, '12321343245', 'sontoloyo', 'BATU', '2001-01-17', 'Perempuan', 0, 0, 'drs', 'sp', 'SD', 'sd', '2021-06-03', '2021-05-24', '23t67554', '2021-05-30', 'batukom', 'ngawur', 'baty', '2424354657', '11234557', '121325354654', 'AKTIV', '0000-00-00 00:00:00', 0, '2021-06-18 13:16:09', 0, '479d0b73467cf75e3752b0a4a0d0e9da.jpg'),
(112, '234737533532646', 'santi', 'BATU', '2021-01-01', 'perempuan', 0, 0, 'dra', 's.kom', 'S-3', 'pendidikan agama', '2021-05-23', '2021-05-31', '23t67554', '2021-05-26', 'nongkrong', 'ngawur', 'malang jawa timur', '2424354657', '11234557', '121325354654', 'TIDAK AKTIV', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '1ea0b2bde0aed18871d37149c091cde5.png'),
(113, '234737533532646', 'Dimas Drajat', 'Surabaya', '1993-06-28', 'Laki-Laki', 0, 0, '', '', 'SD', 'sma IPA', '2020-01-01', '2020-12-31', '822/12/SK/409/2019', '2018-12-31', 'Dinas Pertanian', 'Teknisi', 'jl.teratai no.19', '', '11234557', '121325354654', 'AKTIV', '0000-00-00 00:00:00', 0, '2021-06-18 19:02:58', 0, '24a854fe29b3767dbdccdd0b4803c54c.png'),
(114, '35678654324567899', 'achmad', 'Surabaya', '1997-09-08', 'Laki-Laki', 0, 0, '', 'S.Pd', 'SD', 'pendidikan agama', '2021-01-01', '2021-12-31', '822/12/SK/409/2019', '2020-12-29', 'bksdm', 'Teknisi', 'malang', '564433322', '7890008776', '34567789086', 'AKTIV', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 'fc9350187d84e1ba0018890796c8715e.png'),
(115, '123224253512', 'aqdad', 'malang', '2021-06-22', 'laki-laki', 0, 0, 'drs', 'S.Pd', 'SD', 'pendidikan agama', '2021-06-09', '2021-06-07', '23t67554', '2021-06-08', 'bks', 'ngawur', 'malang jawa timur', '2424354657', '11234557', '34567789086', 'AKTIV', '2021-06-08 14:31:30', 0, '0000-00-00 00:00:00', 0, '10c5f976de2225c7cdafa2f2557d25a6.png');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `m_admin`
--
ALTER TABLE `m_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `m_agama`
--
ALTER TABLE `m_agama`
  ADD PRIMARY KEY (`id_agama`);

--
-- Indeks untuk tabel `m_status_kawin`
--
ALTER TABLE `m_status_kawin`
  ADD PRIMARY KEY (`id_status`);

--
-- Indeks untuk tabel `m_thl`
--
ALTER TABLE `m_thl`
  ADD PRIMARY KEY (`id_pegawai`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `m_admin`
--
ALTER TABLE `m_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `m_agama`
--
ALTER TABLE `m_agama`
  MODIFY `id_agama` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `m_status_kawin`
--
ALTER TABLE `m_status_kawin`
  MODIFY `id_status` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `m_thl`
--
ALTER TABLE `m_thl`
  MODIFY `id_pegawai` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
