CREATE TABLE `creds` (
  `id_user` mediumint(8) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `roles` ENUM ('admin', 'pelanggan') NOT NULL DEFAULT "pelanggan",
  `last_login` timestamp
);

CREATE TABLE `lokasi` (
  `id_lokasi` tinyint(3) NOT NULL,
  `nama_lokasi` varchar(150) NOT NULL,
  `alamat` text NOT NULL,
  `map_link` varchar(255) DEFAULT NULL,
  `jenis_lokasi` tinyint(3) NOT NULL,
  PRIMARY KEY (`id_lokasi`, `jenis_lokasi`)
);

CREATE TABLE `jenis_lokasi` (
  `id_jenis_lokasi` tinyint(3) PRIMARY KEY NOT NULL,
  `jenis_lokasi` varchar(150) NOT NULL
);

CREATE TABLE `pesanan` (
  `id_pesanan` mediumint(8) PRIMARY KEY NOT NULL,
  `id_user` mediumint(8) NOT NULL,
  `tgl_pesan` date NOT NULL,
  `tgl_selesai` date NOT NULL,
  `status_pesanan` ENUM ('Pending', 'Booked', 'On Tour', 'Finished') DEFAULT "Pending",
  `total_harga` int(11)
);

CREATE TABLE `jenis_orang` (
  `id_jenis_orang` tinyint(3) PRIMARY KEY NOT NULL,
  `jenis_orang` varchar(150) NOT NULL
);

CREATE TABLE `harga_wisata` (
  `id_harga_wisata` tinyint(3) PRIMARY KEY NOT NULL,
  `id_lokasi` tinyint(3) NOT NULL,
  `id_jenis_orang` tinyint(3) NOT NULL,
  `harga` double NOT NULL
);

CREATE TABLE `detail_pesanan` (
  `id_detail_pesanan` mediumint(8) NOT NULL,
  `id_pesanan` mediumint(8) NOT NULL,
  `id_harga_wisata` tinyint(3) NOT NULL,
  `qty` tinyint(3) NOT NULL,
  PRIMARY KEY (`id_detail_pesanan`, `id_pesanan`)
);

CREATE TABLE `user` (
  `id_user` mediumint(8) PRIMARY KEY NOT NULL,
  `nama_depan` varchar(100) NOT NULL,
  `nama_belakang` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `email` varchar(70) NOT NULL,
  `no_telp` varchar(16) NOT NULL,
  `gender` ENUM ('laki', 'perempuan') NOT NULL,
  `umur` smallint(6) NOT NULL
);

ALTER TABLE `harga_wisata` ADD FOREIGN KEY (`id_lokasi`) REFERENCES `lokasi` (`id_lokasi`) ON UPDATE CASCADE;

ALTER TABLE `harga_wisata` ADD FOREIGN KEY (`id_jenis_orang`) REFERENCES `jenis_orang` (`id_jenis_orang`) ON UPDATE CASCADE;

ALTER TABLE `pesanan` ADD FOREIGN KEY (`id_pesanan`) REFERENCES `detail_pesanan` (`id_pesanan`);

ALTER TABLE `harga_wisata` ADD FOREIGN KEY (`id_harga_wisata`) REFERENCES `detail_pesanan` (`id_harga_wisata`) ON UPDATE CASCADE;

ALTER TABLE `pesanan` ADD FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

ALTER TABLE `jenis_lokasi` ADD FOREIGN KEY (`id_jenis_lokasi`) REFERENCES `lokasi` (`jenis_lokasi`) ON UPDATE CASCADE;

ALTER TABLE `creds` ADD FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);
