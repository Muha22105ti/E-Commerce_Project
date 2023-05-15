-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Bulan Mei 2023 pada 13.46
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_tokorumah_tangga`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `nama_kategori` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id`, `nama_kategori`) VALUES
(1, 'Alat Masak'),
(2, 'Alat Mandi'),
(4, 'Alat Elektronik'),
(9, 'Perkakas'),
(10, 'Furniture');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesanan`
--

CREATE TABLE `pesanan` (
  `id` int(11) NOT NULL,
  `namapelanggan` varchar(191) NOT NULL,
  `tanggal` date NOT NULL,
  `produk_id` int(45) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pesanan`
--

INSERT INTO `pesanan` (`id`, `namapelanggan`, `tanggal`, `produk_id`, `quantity`) VALUES
(6, 'azka', '2023-11-20', 29, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id` int(11) NOT NULL,
  `nama` varchar(191) NOT NULL,
  `stok` int(11) NOT NULL,
  `harga` int(45) NOT NULL,
  `kategori_id` int(45) NOT NULL,
  `foto` blob NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id`, `nama`, `stok`, `harga`, `kategori_id`, `foto`, `deskripsi`) VALUES
(14, 'Panci Anti Lengket', 10, 499900, 1, 0x68747470733a2f2f6869636f6f6b6f6666696369616c2e636f6d2f77702d636f6e74656e742f75706c6f6164732f323032312f30392f50616e7461737469632d436f6f6b696e672d322e6a70672e77656270, 'PANtastic Cooking 2 terdiri dari produk Fry pan + Wok Pan berbahan ceramic anti lengket dengan  teknologi ILAG Non-Stick coating Swiss yang aman untuk pemakaian sehari-hari . Kualitas produk yang kokoh serta aman ( Food grade).  Bebas dari FPOA, FTFE, Cadmium, Lead'),
(16, 'Wajan Beige 26cm 1pc', 10, 287000, 1, 0x68747470733a2f2f6d656469612e6d6f6e6f7461726f2e69642f6d696430312f6269672f5065726c656e676b6170616e2532304461707572253230253236253230486f72656b612f416c617425323044617075722f5065726c656e676b6170616e253230446170757225323050726f666573696f6e616c2f50656e67676f72656e67616e2f424f4c4465253230467279696e6725323050616e2532302857616a616e292f424f4c4465253230467279696e6725323050616e2532302857616a616e2925323042656967652532303236636d2532303170632f3166533031383532323035312d312e6a7067, 'Dpt digunakan pd kompor gas atau induksi (kompor listrik).  Induction Bottom menjamin pemanasan cepat merata ke seluruh permukaan.Cocok digunakan untuk menggoreng, menumis, ataupun memasak masakan lainnya dengan higienis.'),
(21, 'Paloma Shower Set ', 10, 965000, 2, 0x68747470733a2f2f6d656469612e6d6f6e6f7461726f2e69642f6d696430312f66756c6c2f426168616e25323042616e67756e616e2532432532305065726c656e676b6170616e25323052756d61682532302532362532304361742f506572616c6174616e25323052756d61682f5375706c61692532304b616d61722532304b6563696c2f416b7365736f7269732f50616c6f6d6125323053686f7765722532305365742f50616c6f6d6125323053686f776572253230536574253230535350253230313130362532305469616e6725323048616e6473686f7765722532304368726f6d65253230537461696e6c657373253230537465656c253230317365742f6a7a533033343630303731392d312e6a7067, 'Handshower PALOMA: - Material: Hard ABS kualitas tinggi dan baru (bukan daur ulang / recycle). Padat, keras, dan sangat tahan lama. Anti-pecah dan anti-keropos. Tahan suhu air dingin dan panas tinggi. Anti-karat dan anti-korosi.'),
(22, 'Rak Buku ', 10, 2500000, 10, 0x68747470733a2f2f6432786a6d69316b37316979326d2e636c6f756466726f6e742e6e65742f64616972796661726d2f69642f696d616765732f3637382f303636373830385f50453731343039325f53352e6a7067, 'Diperkirakan satu rak buku BILLY terjual setiap lima detik di seluruh dunia. Cukup mengejutkan mengingat kami mengeluarkan produk BILLY di tahun 1979. Rak ini adalah pilihan bagi para pencinta buku yang selalu mengikuti perkembangan zaman.'),
(23, 'Dasar kasur berpalang', 5, 3600000, 10, 0x68747470733a2f2f6432786a6d69316b37316979326d2e636c6f756466726f6e742e6e65742f64616972796661726d2f69642f696d616765732f3037372f303430373737305f50453537303634315f53342e6a7067, 'Dasar kasur memiliki dua manfaat besar. Membuat tempat tidur Anda menjadi lebih tinggi dan menjaga kasur Anda tetap dengan bentuknya lebih lama dengan mendistribusikan berat tubuh Anda, menyediakan penyangga ekstra dan meringankan beban.'),
(24, 'Peralatan makan set isi 18', 10, 200000, 1, 0x68747470733a2f2f6432786a6d69316b37316979326d2e636c6f756466726f6e742e6e65742f64616972796661726d2f69642f696d616765732f3131332f303731313335355f50453732383139385f53342e6a7067, 'set peralatan makan 24 buah FÖRNUFT yang sederhana namun elegan akan menambah cita rasa ekstra pada pengaturan meja Anda.'),
(25, 'Wastafel dengan water trap', 10, 1200000, 2, 0x68747470733a2f2f6432786a6d69316b37316979326d2e636c6f756466726f6e742e6e65742f64616972796661726d2f69642f696d616765732f3634352f313036343539395f50453835313730375f53342e6a7067, 'Karena wastafel keramik dibuat dengan hati-hati dan dengan bahan terbaik, kami dengan bangga menawarkan garansi 10 tahun. Perangkap air sudah termasuk, yang harus Anda lakukan adalah memilih keran mixer.'),
(26, 'Sofabed', 10, 9000000, 10, 0x68747470733a2f2f6432786a6d69316b37316979326d2e636c6f756466726f6e742e6e65742f64616972796661726d2f69642f696d616765732f3735362f303137353631305f50453332383838335f53342e6a7067, 'Setelah tidur malam yang cukup, Anda dapat dengan mudah mengubah kamar tidur atau kamar tamu menjadi ruang keluarga lagi. Penyimpanan built-in ini mudah diakses dan cukup luas untuk menyimpan seprai, buku dan piyama.'),
(27, 'Tempat makanan, set isi 17', 10, 80000, 1, 0x68747470733a2f2f6432786a6d69316b37316979326d2e636c6f756466726f6e742e6e65742f64616972796661726d2f69642f696d616765732f3131332f303731313338325f50453732383137345f53342e6a7067, 'Set kontainer makanan yang dapat dipakai untuk menyimpan semua jenis makanan mulai dari daging matang, keju, dll. hingga sisa makanan dan porsi makan individual.'),
(28, 'Perkakas, set isi 17', 10, 200000, 9, 0x68747470733a2f2f6432786a6d69316b37316979326d2e636c6f756466726f6e742e6e65742f64616972796661726d2f69642f696d616765732f3131392f303731313937315f50453732383539395f53342e6a7067, 'Seri FIXA terdiri dari semua peralatan dan perlengkapan yang dibutuhkan untuk membantu Anda di rumah. Lengkapi peralatan yang sudah Anda miliki atau miliki kit DIY untuk memudahkan kegiatan sehari-hari Anda.'),
(29, 'kamar tidur, set isi 5', 5, 4500000, 10, 0x68747470733a2f2f6432786a6d69316b37316979326d2e636c6f756466726f6e742e6e65742f64616972796661726d2f69642f696d616765732f3730362f303937303630335f50453831313132395f53342e6a7067, 'Lengkapi seluruh kamar tidur dengan cepat dan mudah dengan GURSKEN. Semua yang Anda butuhkan ada di sini – meja samping tempat tidur, lemari laci, lemari pakaian, dan tentu saja, tempat tidur. Sempurna untuk apartemen pertama Anda atau kamar tamu.'),
(30, 'Pisau, set isi 3', 10, 100000, 1, 0x68747470733a2f2f6432786a6d69316b37316979326d2e636c6f756466726f6e742e6e65742f64616972796661726d2f69642f696d616765732f3130312f303231303136385f50453336333632375f53342e6a7067, 'Potong, potong dadu, dan iris - satu set isi tiga pisau yang nyaman ini, Anda dapat menyiapkan makanan lezat untuk Anda dan keluarga Anda. Pisau ini tahan lama, stabil dan baik untuk pekerjaan dapur dan dompet Anda.');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_pesanan_1` (`produk_id`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_produk1` (`kategori_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  ADD CONSTRAINT `fk_pesanan_1` FOREIGN KEY (`produk_id`) REFERENCES `produk` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `fk_produk1` FOREIGN KEY (`kategori_id`) REFERENCES `kategori` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
