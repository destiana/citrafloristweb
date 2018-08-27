-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 10 Mar 2018 pada 14.58
-- Versi Server: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_florist`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `category`
--

CREATE TABLE `category` (
  `category_ID` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `category`
--

INSERT INTO `category` (`category_ID`, `category_name`, `category_type`) VALUES
(1, 'Bouquete', 'Product'),
(2, 'Bunga Parcel', 'Product'),
(3, 'Bunga Ucapan', 'Event'),
(4, 'Pernikahan', 'Event'),
(5, 'Bunga Artificial', 'Product'),
(6, 'Bunga Dekorasi', 'Product'),
(7, 'Bunga Standing', 'Product'),
(8, 'Bunga Krans', 'Product'),
(9, 'Kelahiran', 'Event'),
(10, 'Duka Cita', 'Event'),
(11, 'Ulang Tahun', 'Event'),
(12, 'Love Romance', 'Event');

-- --------------------------------------------------------

--
-- Struktur dari tabel `product`
--

CREATE TABLE `product` (
  `product_ID` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_category` int(30) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_description` text NOT NULL,
  `product_time_duration` varchar(100) NOT NULL,
  `product_image` text NOT NULL,
  `product_count_view` int(11) NOT NULL,
  `product_dimensions` varchar(255) NOT NULL,
  `product_weight` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `product`
--

INSERT INTO `product` (`product_ID`, `product_name`, `product_category`, `product_price`, `product_description`, `product_time_duration`, `product_image`, `product_count_view`, `product_dimensions`, `product_weight`) VALUES
(1, 'Bunga Ucapan 1', 11, 400000, 'Lorem ipsum dolar sit amet', '23-10-2018', 'assets/uploads/asa3.jpg', 109, 'L = 26 H= 50 W=70', '15 kg'),
(2, 'Glory Red Rose', 5, 800000, 'Lorem ipsum dolar sit amet', '22-10-2018', 'assets/uploads/asa2.jpg', 34, 'L = 10 H=15 W=20', '12 kg'),
(3, 'Parcel Buah', 2, 500000, 'Lorem ipsum dolar sit amet', '20-10-2018', 'assets/uploads/asa.JPG', 39, 'L = 20 H= 30 W=50', '2 kg'),
(9, 'fg', 8, 20000, 'vcv', '2018-10-10', 'assets/uploads/images.jpg', 2, 'vbv', 'fbfb');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaction`
--

CREATE TABLE `transaction` (
  `transaction_ID` int(11) NOT NULL,
  `transaction_status` varchar(255) NOT NULL,
  `transaction_time` datetime NOT NULL,
  `user_ID` int(11) NOT NULL,
  `transaction_image` varchar(255) NOT NULL,
  `destination_address` varchar(255) NOT NULL,
  `information` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaction`
--

INSERT INTO `transaction` (`transaction_ID`, `transaction_status`, `transaction_time`, `user_ID`, `transaction_image`, `destination_address`, `information`) VALUES
(1, 'Konfirmasi Pembayaran', '0000-00-00 00:00:00', 1, '', 'Jl. Keputih Utara Gg. Mawar no 13', '-'),
(2, 'Pengiriman Kurir', '0000-00-00 00:00:00', 2, '', 'Jl. Raya ITS, Sukolilo, Surabaya', '-'),
(3, 'Konfirmasi Pembayaran', '0000-00-00 00:00:00', 13, '', 'jalan kolonel sugiono', 'bunga meriah'),
(4, 'Konfirmasi Pembayaran', '0000-00-00 00:00:00', 13, '', 'nxj', ' zn'),
(5, 'Konfirmasi Pembayaran', '0000-00-00 00:00:00', 13, '', 'v', ' c'),
(6, 'Konfirmasi Pembayaran', '0000-00-00 00:00:00', 13, '', 'bb', 'bb'),
(7, 'Konfirmasi Pembayaran', '0000-00-00 00:00:00', 13, '', 'yaya\n', 'jJaja'),
(8, 'Konfirmasi Pembayaran', '0000-00-00 00:00:00', 13, '', 'jzjs', 'nznz'),
(9, 'Konfirmasi Pembayaran', '0000-00-00 00:00:00', 13, '', 'jhj', 'bhnj'),
(10, 'Konfirmasi Pembayaran', '0000-00-00 00:00:00', 13, '', 'bsndh', 'njzz'),
(11, 'Konfirmasi Pembayaran', '0000-00-00 00:00:00', 13, '', 'nxndn', 'hxjxj'),
(12, 'Konfirmasi Pembayaran', '0000-00-00 00:00:00', 13, '', 'tata', 'yaya'),
(13, 'Konfirmasi Pembayaran', '0000-00-00 00:00:00', 13, '', 'dndj', 'nxjx'),
(14, 'Konfirmasi Pembayaran', '0000-00-00 00:00:00', 13, '', 'xx', 'zx'),
(15, 'Konfirmasi Pembayaran', '0000-00-00 00:00:00', 13, '', 'nxjd', 'nxjx'),
(16, 'Konfirmasi Pembayaran', '0000-00-00 00:00:00', 13, '', 'Jl. Sukolilo Nomer 1 Surabaya.', 'Bunga dekorasi corak mayoritas merah'),
(17, 'Konfirmasi Pembayaran', '0000-00-00 00:00:00', 13, '', 'hsus', 'bznsj'),
(18, 'Konfirmasi Pembayaran', '0000-00-00 00:00:00', 13, '', 'Surabaya, Kota SBY, Jawa Timur, Indonesia', 'lrngkap'),
(19, 'Konfirmasi Pembayaran', '0000-00-00 00:00:00', 13, '', 'sayang anak\n', 'xiixi'),
(20, 'Konfirmasi Pembayaran', '0000-00-00 00:00:00', 13, '', 'jd', 'nz'),
(21, 'Konfirmasi Pembayaran', '0000-00-00 00:00:00', 13, 'uploads/1520006165956.jpg', 'Ippy, Republik Afrika Tengah', 'nzjz'),
(22, 'Belum isi detail', '0000-00-00 00:00:00', 13, '', '', ''),
(23, 'Konfirmasi Pembayaran', '0000-00-00 00:00:00', 20, '', 'Jalan Raya ITS, Keputih, Sukolilo, Keputih, Sukolilo, Kota SBY, Jawa Timur 60111, Indonesia', 'bunga maqar'),
(24, 'Belum isi detail', '0000-00-00 00:00:00', 13, '', '', ''),
(25, 'Konfirmasi Pembayaran', '0000-00-00 00:00:00', 13, 'uploads/IMG-20180309-WA0029.jpg', 'Jl. Gebang Lor No.55-77, Gebang Putih, Sukolilo, Kota SBY, Jawa Timur 60117, Indonesia', 'bsbsb'),
(26, 'Konfirmasi Pembayaran', '0000-00-00 00:00:00', 13, '', 'Jl. Gebang Wetan No.15-B, Gebang Putih, Sukolilo, Kota SBY, Jawa Timur 60117, Indonesia', 'wqbbbbhqq'),
(27, 'Konfirmasi Pembayaran', '0000-00-00 00:00:00', 13, '', 'Jl. Gebang Wetan No.15-B, Gebang Putih, Sukolilo, Kota SBY, Jawa Timur 60117, Indonesia', 'bagus'),
(28, 'Belum isi detail', '0000-00-00 00:00:00', 22, '', '', ''),
(29, 'Belum isi detail', '0000-00-00 00:00:00', 22, '', '', ''),
(30, 'Belum isi detail', '0000-00-00 00:00:00', 22, '', '', ''),
(31, 'Belum isi detail', '0000-00-00 00:00:00', 22, '', '', ''),
(32, 'Belum isi detail', '0000-00-00 00:00:00', 22, '', '', ''),
(33, 'Belum isi detail', '0000-00-00 00:00:00', 22, '', '', ''),
(34, 'Belum isi detail', '0000-00-00 00:00:00', 22, '', '', ''),
(35, 'Belum isi detail', '0000-00-00 00:00:00', 22, '', '', ''),
(36, 'Belum isi detail', '0000-00-00 00:00:00', 22, '', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaction_detail`
--

CREATE TABLE `transaction_detail` (
  `detail_ID` int(11) NOT NULL,
  `transaction_ID` int(11) NOT NULL,
  `product_ID` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` varchar(255) NOT NULL,
  `total_payment` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaction_detail`
--

INSERT INTO `transaction_detail` (`detail_ID`, `transaction_ID`, `product_ID`, `quantity`, `price`, `total_payment`) VALUES
(1, 2, 2, 4, '300000', '1200000'),
(2, 1, 3, 2, '400000', '800000'),
(4, 1, 2, 4, '8000', '160000'),
(5, 4, 2, 4, '8000', '160000'),
(6, 5, 2, 1, '800000.0', '800000.0'),
(7, 6, 2, 4, '800000.0', '3200000.0'),
(8, 7, 1, 3, '400000.0', '1200000.0'),
(9, 8, 1, 3, '400000.0', '1200000.0'),
(10, 9, 1, 3, '400000.0', '1200000.0'),
(11, 10, 1, 3, '400000.0', '1200000.0'),
(12, 11, 1, 3, '400000.0', '1200000.0'),
(13, 12, 1, 2, '400000.0', '800000.0'),
(14, 13, 2, 2, '800000.0', '1600000.0'),
(15, 14, 1, 1, '400000.0', '400000.0'),
(16, 15, 3, 2, '500000.0', '1000000.0'),
(17, 16, 3, 3, '500000.0', '1500000.0'),
(18, 17, 2, 2, '800000.0', '1600000.0'),
(19, 18, 3, 3, '500000.0', '1500000.0'),
(20, 19, 3, 3, '500000.0', '1500000.0'),
(21, 20, 3, 3, '500000.0', '1500000.0'),
(22, 21, 3, 3, '500000.0', '1500000.0'),
(23, 22, 1, 1, '400000.0', '400000.0'),
(24, 23, 1, 2, '400000.0', '800000.0'),
(25, 24, 1, 1, '400000.0', '400000.0'),
(26, 25, 2, 1, '800000.0', '800000.0'),
(27, 26, 1, 2, '400000.0', '800000.0'),
(28, 27, 1, 1, '400000.0', '400000.0'),
(29, 28, 1, 1, '400000.0', '400000.0'),
(30, 29, 9, 0, '20000.0', '0.0'),
(31, 30, 9, 1, '20000.0', '20000.0'),
(32, 31, 9, 1, '20000.0', '20000.0'),
(33, 32, 9, 1, '20000.0', '20000.0'),
(34, 33, 9, 1, '20000.0', '20000.0'),
(35, 34, 9, 1, '20000.0', '20000.0'),
(36, 35, 9, 1, '20000.0', '20000.0'),
(37, 36, 9, 1, '20000.0', '20000.0');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `user_ID` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_fullname` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_telephone` varchar(255) NOT NULL,
  `user_address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`user_ID`, `user_name`, `user_fullname`, `user_password`, `user_email`, `user_telephone`, `user_address`) VALUES
(1, 'nurdicky', 'Dicky Nur Laili', 'e172dd95f4feb21412a692e73929961e', 'nurdicky8@gmail.com', '081513642456', 'Sambogunung Dukun Gresik'),
(2, 'adam', 'Adam Jhonson', 'e10adc3949ba59abbe56e057f20f883e', 'adam@gmail.com', '085655727695', 'Jalan Gajah Mada Rt 8a'),
(3, 'testing', 'testing saya', 'ae2b1fca515949e5d54fb22b8ed95575', 'testing@gmail.com', '081291889131', 'jl. testing jaya raya'),
(4, 'dd', '', '104a73062ab40e4a6f2f5216d6545c02', 'dd@gmail.com', '', ''),
(5, 'fitriani', '', '8ac99bb12b7c18e27d06fd34fe1203fc', 'fitri@gmail.com', '', ''),
(6, 'nisak', '', '2af54305f183778d87de0c70c591fae4', 'destiana082@gmail.com', '085130408600', 'aaa'),
(7, 'cNTIK', '', '09daf55148da4f6052c56bea07380109', 'nds@gmail.com', '', ''),
(8, 'choirun', '', '2cb72a5cd3899a67f0a92ab699b72ef6', 'choirun@gmail.com', '', ''),
(9, 'elkiar', '', '468b722fd761304d7d1068990e2b1cc5', 'elkiar@gmail.com', '', ''),
(10, 'elkiar', '', '468b722fd761304d7d1068990e2b1cc5', 'elkiar@gmail.com', '', ''),
(11, 'kaka', '', '5d052f1e32af4e4ac2544a5fc2a9b992', 'kaka@gmail.com', '', ''),
(13, 'hun', '', 'c4ca4238a0b923820dcc509a6f75849b', 'miftahunajat@gmail.com', '', ''),
(14, 'haha', '', '7694f4a66316e53c8cdd9d9954bd611d', 'jzj@jaja.com', '', ''),
(15, 'coba', '', '202cb962ac59075b964b07152d234b70', 'coba@coba.com', '', ''),
(16, 'coba1', '', '202cb962ac59075b964b07152d234b70', 'coba1@coba.com', '', ''),
(17, 'coba2', '', '202cb962ac59075b964b07152d234b70', 'coba2@coba.com', '123123', ''),
(18, 'coba3', '', 'c4ca4238a0b923820dcc509a6f75849b', 'Kjaj@ajja.con', '3136', ''),
(19, 'pk', '', '363b122c528f54df4a0446b6bab05515', 'h', '5', ''),
(20, 'hasnak', '', '577ead1a1b2dd28db1b7a4e28038e70a', 'hasna@hasna.com', '08129', ''),
(21, 'nisak', '', 'ad8aafc596ede0b53e86d2926413e74b', 'destiana082@gmail.com', '085130408600', 'Gebang lor 100 Sukolilo Surabaya'),
(22, 'hasna1', '', '809966f3f02a7d044c02e808bf6d28a0', 'hasnakhaisa@gmail.com', '0812', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_admin`
--

CREATE TABLE `user_admin` (
  `admin_ID` int(11) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_admin`
--

INSERT INTO `user_admin` (`admin_ID`, `admin_name`, `admin_password`) VALUES
(1, 'admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_ID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_ID`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`transaction_ID`);

--
-- Indexes for table `transaction_detail`
--
ALTER TABLE `transaction_detail`
  ADD PRIMARY KEY (`detail_ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_ID`);

--
-- Indexes for table `user_admin`
--
ALTER TABLE `user_admin`
  ADD PRIMARY KEY (`admin_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `transaction_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `transaction_detail`
--
ALTER TABLE `transaction_detail`
  MODIFY `detail_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `user_admin`
--
ALTER TABLE `user_admin`
  MODIFY `admin_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
