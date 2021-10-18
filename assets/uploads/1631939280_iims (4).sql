-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Sep 2021 pada 17.40
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
-- Database: `iims`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `cp`
--

CREATE TABLE `cp` (
  `id_cp` int(11) NOT NULL,
  `nama` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hp` int(11) NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_vendor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `customer`
--

CREATE TABLE `customer` (
  `id_customer` int(11) NOT NULL,
  `nama_customer` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat_customer` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telepon` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fax` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_cp` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hp` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `catatan` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `inventory`
--

CREATE TABLE `inventory` (
  `id_inventory` int(11) NOT NULL,
  `lokasi_gudang` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lokasi_rak` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lokasi_barisRak` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lokasi_kolomRak` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `itr`
--

CREATE TABLE `itr` (
  `id` int(11) NOT NULL,
  `no_itr` varchar(50) DEFAULT NULL,
  `id_pr` int(11) DEFAULT NULL,
  `tanggal_itr` datetime DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `flag` int(11) NOT NULL DEFAULT 0,
  `id_validator` int(11) DEFAULT NULL,
  `id_pemeriksa` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `itr`
--

INSERT INTO `itr` (`id`, `no_itr`, `id_pr`, `tanggal_itr`, `qty`, `status`, `flag`, `id_validator`, `id_pemeriksa`, `created_at`, `updated_at`) VALUES
(1, '123', 2, '2021-09-05 14:56:00', 234, NULL, 1, 2, NULL, '2021-09-05 05:57:07', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(10, '2014_10_12_000000_create_users_table', 1),
(11, '2014_10_12_100000_create_password_resets_table', 1),
(12, '2019_08_19_000000_create_failed_jobs_table', 1),
(13, '2021_07_14_081933_create_vendor_table', 1),
(14, '2021_07_14_082126_create_cp_table', 1),
(15, '2021_07_14_082932_create_customer_table', 1),
(16, '2021_07_14_083140_create_inventory_table', 1),
(17, '2021_07_14_083524_create_produk_table', 1),
(18, '2021_07_14_101520_create_permission_tables', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'read-product', 'web', '2021-09-13 19:36:53', '2021-09-13 19:36:53'),
(2, 'read-vendor', 'web', '2021-09-13 19:36:53', '2021-09-13 19:36:53'),
(3, 'read-user', 'web', '2021-09-13 19:36:53', '2021-09-13 19:36:53'),
(4, 'read-inventory', 'web', '2021-09-13 19:36:54', '2021-09-13 19:36:54'),
(5, 'read-customer', 'web', '2021-09-13 19:36:54', '2021-09-13 19:36:54'),
(6, 'read-role', 'web', '2021-09-13 19:36:54', '2021-09-13 19:36:54'),
(7, 'read-permission', 'web', '2021-09-13 19:36:54', '2021-09-13 19:36:54'),
(8, 'read-pr', 'web', '2021-09-13 19:36:54', '2021-09-13 19:36:54'),
(9, 'read-itr', 'web', '2021-09-13 19:36:54', '2021-09-13 19:36:54'),
(10, 'read-otr', 'web', '2021-09-13 19:36:54', '2021-09-13 19:36:54'),
(11, 'read-do', 'web', '2021-09-13 19:36:54', '2021-09-13 19:36:54');

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `kode_produk` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_seri` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_produk` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo_produk` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_produk` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kategori_produk` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `barcode` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga` int(11) NOT NULL,
  `modal` int(11) NOT NULL,
  `dimensi` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `berat` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_pembelian` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lokasi_gudang` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lokasi_rak` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lokasi_barisRak` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lokasi_kolomRak` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id_produk`, `kode_produk`, `no_seri`, `nama_produk`, `photo_produk`, `jenis_produk`, `kategori_produk`, `barcode`, `harga`, `modal`, `dimensi`, `berat`, `unit_pembelian`, `lokasi_gudang`, `lokasi_rak`, `lokasi_barisRak`, `lokasi_kolomRak`, `qty`) VALUES
(1, 'gfs', '089123', 'aibon', 'jpg', 'lem', 'lem', '23498', 8000, 80000, '3', '3kg', '23', 'a', '1', '1', '2', 10),
(2, 'gfs', '089123', 'aibon', 'jpg', 'lem', 'lem', '23498', 8000, 80000, '3', '3kg', '23', 'a', '1', '1', '2', 10),
(3, 'gfs', '089123', 'aibon', 'jpg', 'lem', 'lem', '23498', 8000, 80000, '3', '3kg', '23', 'a', '1', '1', '2', 10),
(4, 'gfs', '089123', 'aibon', 'jpg', 'lem', 'lem', '23498', 8000, 80000, '3', '3kg', '23', 'a', '1', '1', '2', 10),
(5, 'gfs', '089123', 'aibon', 'jpg', 'lem', 'lem', '23498', 8000, 80000, '3', '3kg', '23', 'a', '1', '1', '2', 10),
(6, 'gfs', '089123', 'aibon', 'jpg', 'lem', 'lem', '23498', 8000, 80000, '3', '3kg', '23', 'a', '1', '1', '2', 10),
(7, 'gfs', '089123', 'aibon', 'jpg', 'lem', 'lem', '23498', 8000, 80000, '3', '3kg', '23', 'a', '1', '1', '2', 10),
(8, 'gfs', '089123', 'aibon', 'jpg', 'lem', 'lem', '23498', 8000, 80000, '3', '3kg', '23', 'a', '1', '1', '2', 10),
(9, 'gfs', '089123', 'aibon', 'jpg', 'lem', 'lem', '23498', 8000, 80000, '3', '3kg', '23', 'a', '1', '1', '2', 10),
(10, 'gfs', '089123', 'aibon', 'jpg', 'lem', 'lem', '23498', 8000, 80000, '3', '3kg', '23', 'a', '1', '1', '2', 10),
(11, 'gfs', '089123', 'aibon', 'jpg', 'lem', 'lem', '23498', 8000, 80000, '3', '3kg', '23', 'a', '1', '1', '2', 10),
(12, 'gfs', '089123', 'aibon', 'jpg', 'lem', 'lem', '23498', 8000, 80000, '3', '3kg', '23', 'a', '1', '1', '2', 10),
(13, 'gfs', '089123', 'aibon', 'jpg', 'lem', 'lem', '23498', 8000, 80000, '3', '3kg', '23', 'a', '1', '1', '2', 10),
(14, 'gfs', '089123', 'aibon', 'jpg', 'lem', 'lem', '23498', 8000, 80000, '3', '3kg', '23', 'a', '1', '1', '2', 10),
(15, 'gfs', '089123', 'aibon', 'jpg', 'lem', 'lem', '23498', 8000, 80000, '3', '3kg', '23', 'a', '1', '1', '2', 10),
(16, 'gfs', '089123', 'aibon', 'jpg', 'lem', 'lem', '23498', 8000, 80000, '3', '3kg', '23', 'a', '1', '1', '2', 10),
(17, 'gfs', '089123', 'aibon', 'jpg', 'lem', 'lem', '23498', 8000, 80000, '3', '3kg', '23', 'a', '1', '1', '2', 10),
(18, 'gfs', '089123', 'aibon', 'jpg', 'lem', 'lem', '23498', 8000, 80000, '3', '3kg', '23', 'a', '1', '1', '2', 10),
(19, 'gfs', '089123', 'aibon', 'jpg', 'lem', 'lem', '23498', 8000, 80000, '3', '3kg', '23', 'a', '1', '1', '2', 10),
(20, 'gfs', '089123', 'aibon', 'jpg', 'lem', 'lem', '23498', 8000, 80000, '3', '3kg', '23', 'a', '1', '1', '2', 10),
(21, 'gfs', '089123', 'aibon', 'jpg', 'lem', 'lem', '23498', 8000, 80000, '3', '3kg', '23', 'a', '1', '1', '2', 10),
(22, 'gfs', '089123', 'aibon', 'jpg', 'lem', 'lem', '23498', 8000, 80000, '3', '3kg', '23', 'a', '1', '1', '2', 10),
(23, 'gfs', '089123', 'aibon', 'jpg', 'lem', 'lem', '23498', 8000, 80000, '3', '3kg', '23', 'a', '1', '1', '2', 10),
(24, 'gfs', '089123', 'aibon', 'jpg', 'lem', 'lem', '23498', 8000, 80000, '3', '3kg', '23', 'a', '1', '1', '2', 10),
(25, 'gfs', '089123', 'aibon', 'jpg', 'lem', 'lem', '23498', 8000, 80000, '3', '3kg', '23', 'a', '1', '1', '2', 10),
(26, 'gfs', '089123', 'aibon', 'jpg', 'lem', 'lem', '23498', 8000, 80000, '3', '3kg', '23', 'a', '1', '1', '2', 10),
(27, 'gfs', '089123', 'aibon', 'jpg', 'lem', 'lem', '23498', 8000, 80000, '3', '3kg', '23', 'a', '1', '1', '2', 10),
(28, 'gfs', '089123', 'aibon', 'jpg', 'lem', 'lem', '23498', 8000, 80000, '3', '3kg', '23', 'a', '1', '1', '2', 10),
(29, 'gfs', '089123', 'aibon', 'jpg', 'lem', 'lem', '23498', 8000, 80000, '3', '3kg', '23', 'a', '1', '1', '2', 10),
(30, 'gfs', '089123', 'aibon', 'jpg', 'lem', 'lem', '23498', 8000, 80000, '3', '3kg', '23', 'a', '1', '1', '2', 10),
(31, 'gfs', '089123', 'aibon', 'jpg', 'lem', 'lem', '23498', 8000, 80000, '3', '3kg', '23', 'a', '1', '1', '2', 10),
(32, 'gfs', '089123', 'aibon', 'jpg', 'lem', 'lem', '23498', 8000, 80000, '3', '3kg', '23', 'a', '1', '1', '2', 10),
(33, 'gfs', '089123', 'aibon', 'jpg', 'lem', 'lem', '23498', 8000, 80000, '3', '3kg', '23', 'a', '1', '1', '2', 10),
(34, 'gfs', '089123', 'aibon', 'jpg', 'lem', 'lem', '23498', 8000, 80000, '3', '3kg', '23', 'a', '1', '1', '2', 10),
(35, 'gfs', '089123', 'aibon', 'jpg', 'lem', 'lem', '23498', 8000, 80000, '3', '3kg', '23', 'a', '1', '1', '2', 10),
(36, 'gfs', '089123', 'aibon', 'jpg', 'lem', 'lem', '23498', 8000, 80000, '3', '3kg', '23', 'a', '1', '1', '2', 10),
(37, 'gfs', '089123', 'aibon', 'jpg', 'lem', 'lem', '23498', 8000, 80000, '3', '3kg', '23', 'a', '1', '1', '2', 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `purchase_request`
--

CREATE TABLE `purchase_request` (
  `id` int(11) NOT NULL,
  `no_pr` varchar(50) DEFAULT NULL,
  `tanggal` timestamp NULL DEFAULT NULL,
  `vendor_id` int(11) DEFAULT NULL,
  `produk_id` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `purchase_request`
--

INSERT INTO `purchase_request` (`id`, `no_pr`, `tanggal`, `vendor_id`, `produk_id`, `qty`, `status`, `created_by`, `created_at`, `updated_at`) VALUES
(1, '23', '2021-09-06 04:43:27', 10, 10, 100, 0, NULL, '2021-09-05 04:44:12', NULL),
(2, '12345', '2021-09-08 05:58:00', 2, 6, 23, 1, 2, '2021-09-05 05:56:22', '2021-09-05 05:57:07');

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2021-09-13 19:36:53', '2021-09-13 19:36:53');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'admin@gmail.com', NULL, '$2y$10$0qmEgVSfkuQR9S7WfXus5uOCwz6UoteXlRNc8Uh.E260XYtuOzf8K', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `vendor`
--

CREATE TABLE `vendor` (
  `id_vendor` int(11) NOT NULL,
  `nama_vendor` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat_vendor` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telp` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fax` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `cp`
--
ALTER TABLE `cp`
  ADD PRIMARY KEY (`id_cp`),
  ADD KEY `cp_id_vendor_foreign` (`id_vendor`);

--
-- Indeks untuk tabel `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id_customer`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`id_inventory`);

--
-- Indeks untuk tabel `itr`
--
ALTER TABLE `itr`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indeks untuk tabel `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indeks untuk tabel `purchase_request`
--
ALTER TABLE `purchase_request`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indeks untuk tabel `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indeks untuk tabel `vendor`
--
ALTER TABLE `vendor`
  ADD PRIMARY KEY (`id_vendor`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `cp`
--
ALTER TABLE `cp`
  MODIFY `id_cp` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `customer`
--
ALTER TABLE `customer`
  MODIFY `id_customer` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `inventory`
--
ALTER TABLE `inventory`
  MODIFY `id_inventory` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `itr`
--
ALTER TABLE `itr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT untuk tabel `purchase_request`
--
ALTER TABLE `purchase_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `vendor`
--
ALTER TABLE `vendor`
  MODIFY `id_vendor` int(11) NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `cp`
--
ALTER TABLE `cp`
  ADD CONSTRAINT `cp_id_vendor_foreign` FOREIGN KEY (`id_vendor`) REFERENCES `vendor` (`id_vendor`);

--
-- Ketidakleluasaan untuk tabel `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
