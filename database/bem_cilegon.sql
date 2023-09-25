-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 25 Sep 2023 pada 15.24
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
-- Database: `bem_cilegon`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `group` varchar(100) NOT NULL,
  `definition` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `auth_group`
--

INSERT INTO `auth_group` (`id`, `group`, `definition`) VALUES
(1, 'xadmin', 'Admin Master'),
(2, 'admin', 'admin'),
(3, 'fungsionaris', 'user');

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `permission` varchar(100) NOT NULL,
  `definition` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `permission`, `definition`) VALUES
(1, 'config_view_default', 'Module config'),
(2, 'config_view_logo', 'Module config'),
(3, 'config_view_sosmed', 'Module config'),
(4, 'config_view_core', 'Module config'),
(5, 'config_update_web_name', 'Module config'),
(6, 'config_update_web_domain', 'Module config'),
(7, 'config_update_web_owner', 'Module config'),
(8, 'config_update_email', 'Module config'),
(9, 'config_update_telepon', 'Module config'),
(10, 'config_update_address', 'Module config'),
(11, 'config_update_logo', 'Module config'),
(12, 'config_update_logo_mini', 'Module config'),
(13, 'config_update_favicon', 'Module config'),
(14, 'config_update_facebook', 'Module config'),
(15, 'config_update_instagram', 'Module config'),
(16, 'config_update_youtube', 'Module config'),
(17, 'config_update_twitter', 'Module config'),
(18, 'config_update_language', 'Module config'),
(19, 'config_update_time_zone', 'Module config'),
(20, 'config_update_max_upload', 'Module config'),
(21, 'config_update_route_admin', 'Module config'),
(22, 'config_update_route_login', 'Module config'),
(23, 'config_update_encryption_key', 'Module config'),
(24, 'config_update_encryption_url', 'Module config'),
(25, 'config_update_url_suffix', 'Module config'),
(26, 'config_update_user_log_status', 'Module config'),
(27, 'config_update_maintenance_status', 'Module config'),
(28, 'menu_list', 'Module menu'),
(29, 'menu_add', 'Module menu'),
(30, 'menu_update', 'Module menu'),
(31, 'menu_delete', 'Module menu'),
(32, 'menu_drag_positions', 'Module menu'),
(33, 'user_list', 'Module user'),
(34, 'user_add', 'Module user'),
(35, 'user_update', 'Module user'),
(36, 'user_detail', 'Module user'),
(37, 'user_delete', 'Module user'),
(38, 'groups_list', 'Module groups'),
(39, 'groups_add', 'Module groups'),
(40, 'groups_access', 'Module groups'),
(41, 'groups_update', 'Module groups'),
(42, 'groups_delete', 'Module groups'),
(43, 'permission_list', 'Module permission'),
(44, 'permission_add', 'Module permission'),
(45, 'permission_update', 'Module permission'),
(46, 'permission_delete', 'Module permission'),
(47, 'dashboard__view_profile_user', 'Module dashboard'),
(48, 'dashboard_view_total_user', 'Module dashboard'),
(49, 'dashboard_view_total_group', 'Module dashboard'),
(50, 'dashboard_view_total_permission', 'Module dashboard'),
(51, 'dashboard_view_total_filemanager', 'Module dashboard'),
(52, 'filemanager_list', 'Module filemanager'),
(53, 'filemanager_add', 'Module filemanager'),
(54, 'filemanager_delete', 'Module filemanager'),
(55, 'sidebar_view_dashboard', 'Module sidebar'),
(56, 'sidebar_view_auth', 'Module sidebar'),
(57, 'sidebar_view_user', 'Module sidebar'),
(58, 'sidebar_view_groups', 'Module sidebar'),
(59, 'sidebar_view_permission', 'Module sidebar'),
(60, 'sidebar_view_config', 'Module sidebar'),
(61, 'sidebar_view_system', 'Module sidebar'),
(62, 'sidebar_view_management_menu', 'Module sidebar'),
(63, 'sidebar_view_file_manager', 'Module sidebar'),
(64, 'sidebar_view_m-crud_generator', 'Module Sidebar'),
(65, 'crud_generator_list', 'Module crud generator'),
(66, 'crud_generator_add', 'Module crud generator'),
(67, 'crud_generator_delete', 'Module crud generator'),
(68, 'sidebar_view_configuration', 'Module sidebar'),
(69, 'sidebar_view_settings', 'Module sidebar'),
(87, 'sidebar_view_management_website', 'Module sidebar'),
(88, 'sidebar_view_visi_misi', 'Module sidebar'),
(94, 'sidebar_view_home', 'Module sidebar'),
(100, 'visi_misi_list', 'Module visi_misi'),
(101, 'visi_misi_detail', 'Module visi_misi'),
(102, 'visi_misi_add', 'Module visi_misi'),
(103, 'visi_misi_update', 'Module visi_misi'),
(104, 'visi_misi_delete', 'Module visi_misi'),
(105, 'sidebar_view_struktur_organisai', 'Module sidebar'),
(106, 'struktur_organisasi_list', 'Module struktur_organisasi'),
(107, 'struktur_organisasi_detail', 'Module struktur_organisasi'),
(108, 'struktur_organisasi_add', 'Module struktur_organisasi'),
(109, 'struktur_organisasi_update', 'Module struktur_organisasi'),
(110, 'struktur_organisasi_delete', 'Module struktur_organisasi'),
(111, 'sidebar_view_struktur_organisasi', 'Module sidebar'),
(112, 'home_list', 'Module home'),
(113, 'home_detail', 'Module home'),
(114, 'home_add', 'Module home'),
(115, 'home_update', 'Module home'),
(116, 'home_delete', 'Module home'),
(117, 'sidebar_view_tentang', 'Module sidebar'),
(118, 'tentang_list', 'Module tentang'),
(119, 'tentang_detail', 'Module tentang'),
(120, 'tentang_add', 'Module tentang'),
(121, 'tentang_update', 'Module tentang'),
(122, 'tentang_delete', 'Module tentang'),
(123, 'sidebar_view_organisasi', 'Module sidebar'),
(129, 'organisasi_list', 'Module organisasi'),
(130, 'organisasi_detail', 'Module organisasi'),
(131, 'organisasi_add', 'Module organisasi'),
(132, 'organisasi_update', 'Module organisasi'),
(133, 'organisasi_delete', 'Module organisasi'),
(134, 'sidebar_view_kementerian', 'Module sidebar'),
(135, 'kementerian_list', 'Module kementerian'),
(136, 'kementerian_detail', 'Module kementerian'),
(137, 'kementerian_add', 'Module kementerian'),
(138, 'kementerian_update', 'Module kementerian'),
(139, 'kementerian_delete', 'Module kementerian');

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_permission_to_group`
--

CREATE TABLE `auth_permission_to_group` (
  `permission_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `auth_permission_to_group`
--

INSERT INTO `auth_permission_to_group` (`permission_id`, `group_id`) VALUES
(1, 2),
(2, 2),
(3, 2),
(4, 2),
(5, 2),
(6, 2),
(7, 2),
(8, 2),
(9, 2),
(10, 2),
(11, 2),
(12, 2),
(13, 2),
(14, 2),
(15, 2),
(16, 2),
(17, 2),
(18, 2),
(19, 2),
(20, 2),
(21, 2),
(22, 2),
(23, 2),
(24, 2),
(25, 2),
(26, 2),
(27, 2),
(28, 2),
(29, 2),
(30, 2),
(31, 2),
(32, 2),
(33, 2),
(34, 2),
(35, 2),
(36, 2),
(37, 2),
(38, 2),
(39, 2),
(40, 2),
(41, 2),
(42, 2),
(43, 2),
(44, 2),
(45, 2),
(46, 2),
(47, 2),
(48, 2),
(49, 2),
(50, 2),
(51, 2),
(52, 2),
(53, 2),
(54, 2),
(55, 2),
(56, 2),
(57, 2),
(58, 2),
(59, 2),
(60, 2),
(61, 2),
(62, 2),
(63, 2),
(64, 2),
(68, 2),
(69, 2),
(65, 2),
(66, 2),
(67, 2),
(47, 3),
(48, 3),
(49, 3),
(50, 3),
(51, 3),
(55, 3),
(87, 3),
(88, 3),
(100, 3),
(101, 3),
(103, 3),
(104, 3),
(106, 3),
(107, 3),
(108, 3),
(109, 3),
(110, 3),
(112, 3),
(113, 3),
(114, 3),
(115, 3),
(116, 3),
(118, 3),
(119, 3),
(120, 3),
(121, 3),
(122, 3),
(129, 3),
(130, 3),
(131, 3),
(132, 3),
(133, 3),
(135, 3),
(136, 3),
(137, 3),
(138, 3),
(139, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_user`
--

CREATE TABLE `auth_user` (
  `id_user` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `token` varchar(100) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `ip_address` varchar(50) DEFAULT NULL,
  `is_active` enum('0','1') NOT NULL DEFAULT '1',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `is_delete` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `auth_user`
--

INSERT INTO `auth_user` (`id_user`, `name`, `photo`, `email`, `password`, `token`, `last_login`, `ip_address`, `is_active`, `created`, `modified`, `is_delete`) VALUES
(1, 'Administrator', '300622015940_Picture1.png', 'admin@admin.com', '$2y$10$j6T3cDmcbgpTFWSpZ9UA4usdNecAtwv5e/nAPrsQRanPMPGjJxYum', '4cd8233f57ea815079bd12c551e4aa11', '2023-09-25 19:30:00', '::1', '1', '2022-06-28 10:31:00', '2022-06-30 01:59:40', '0'),
(2, 'Muhammad Royyan Zamzami', '', 'royyan@gmail.com', '$2y$10$N5XRDBkoARG05PYLYXyjC.AlrJUVN8HgF0rj9./27c4pShjiCZHMm', '2591a1a68b58f4de43c4c10647cc85c2', '2022-06-28 13:13:00', '::1', '1', '2022-06-28 10:33:16', '2022-06-28 10:47:23', '1'),
(3, 'Muhammad Royyan', '290622152611_Picture1.png', 'royyan@gmail.com', '$2y$10$N4jNn8JN10jAxEFxc1smguonlGf5M.PfbMTJLFOQkeHtjMp45Dwqa', '0d9ec97bdd1b7527e086db6bf381bf07', '2023-09-25 13:54:00', '::1', '1', '2022-06-29 15:26:11', '2023-09-25 12:49:36', '0'),
(4, 'tes', '', 'tes@tes.com', '$2y$10$Lb/t7E7ANu3JuTnYCroB8.FWrnxRHGxRSy9l4/G3waFz.Njztlzsy', '46fbb956dde6bfc1b63bce54bfce5f57', NULL, NULL, '1', '2022-06-29 15:27:58', NULL, '0');

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_user_to_group`
--

CREATE TABLE `auth_user_to_group` (
  `id_user` int(11) NOT NULL,
  `id_group` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `auth_user_to_group`
--

INSERT INTO `auth_user_to_group` (`id_user`, `id_group`) VALUES
(1, 1),
(2, 3),
(3, 3),
(4, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ci_user_log`
--

CREATE TABLE `ci_user_log` (
  `id` int(11) NOT NULL,
  `user` int(11) DEFAULT NULL,
  `ip_address` varchar(100) DEFAULT NULL,
  `controller` varchar(255) DEFAULT NULL,
  `url` text DEFAULT NULL,
  `data` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `ci_user_log`
--

INSERT INTO `ci_user_log` (`id`, `user`, `ip_address`, `controller`, `url`, `data`, `created_at`) VALUES
(1, 1, '::1', 'Setting', '/belajar/mcodev2/cpanel/setting/sosmed.html', NULL, '2022-06-28 10:42:55'),
(2, 1, '::1', 'Setting', '/belajar/mcodev2/cpanel/setting/logo.html', NULL, '2022-06-28 10:43:00'),
(3, 1, '::1', 'Setting', '/belajar/mcodev2/cpanel/setting.html', NULL, '2022-06-28 10:43:34'),
(4, 1, '::1', 'Main Menu', '/belajar/mcodev2/cpanel/main_menu.html', NULL, '2022-06-28 10:43:38'),
(5, 1, '::1', 'Main Menu', '/belajar/mcodev2/cpanel/main_menu/add.html', NULL, '2022-06-28 10:43:43'),
(6, 1, '::1', 'title', '/belajar/mcodev2/cpanel/core/icon.html', NULL, '2022-06-28 10:43:50'),
(7, 1, '::1', 'Main Menu', '/belajar/mcodev2/cpanel/main_menu/add_action.html', '{\"menu\":\"Mahasiswa\",\"icon\":\"fa fa-address-book\",\"type\":\"controller\",\"controller\":\"mahasiswa\",\"data_target\":\"\",\"is_parent\":\"0\",\"is_active\":\"1\",\"submit\":\"save\"}', '2022-06-28 10:44:13'),
(8, 1, '::1', 'Main Menu', '/belajar/mcodev2/cpanel/main_menu.html', NULL, '2022-06-28 10:44:13'),
(9, 1, '::1', 'Main Menu', '/belajar/mcodev2/cpanel/main_menu/save.html', '{\"data\":\"[{\\\"id\\\":36},{\\\"id\\\":37,\\\"children\\\":[{\\\"id\\\":38},{\\\"id\\\":39},{\\\"id\\\":40}]},{\\\"id\\\":7,\\\"children\\\":[{\\\"id\\\":34},{\\\"id\\\":3},{\\\"id\\\":54}]},{\\\"id\\\":48},{\\\"id\\\":55}]\"}', '2022-06-28 10:44:22'),
(10, 1, '::1', 'Main Menu', '/belajar/mcodev2/cpanel/main_menu.html', NULL, '2022-06-28 10:44:25'),
(11, 1, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa.html', NULL, '2022-06-28 10:44:26'),
(12, 1, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa/add.html', NULL, '2022-06-28 10:44:31'),
(13, 1, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa/add_action.html', '{\"nama\":\"Royyan\",\"alamat\":\"Njabung\",\"no_hp\":\"91238701820381\",\"kelas_id\":\"1\",\"submit\":\"add\"}', '2022-06-28 10:44:43'),
(14, 1, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa.html', NULL, '2022-06-28 10:44:43'),
(15, 1, '::1', 'title', '/belajar/mcodev2/cpanel/dashboard.html', NULL, '2022-06-28 10:44:51'),
(16, 1, '::1', 'Group', '/belajar/mcodev2/cpanel/group.html', NULL, '2022-06-28 10:44:53'),
(17, 1, '::1', 'Group', '/belajar/mcodev2/cpanel/group/access_control/bff65edac2b511b2bff954d40b1ca7b86f3b3f0f920c48d8e93c4889193beb104c0d5d7c2a94e8bce7ed1f900e8c3abc93a91ab941df567f5ad287758014989e_uNz8ilasc5O1yCYjz12ZDLO~lvi1wInb7YjJ7tRwYw-.html', NULL, '2022-06-28 10:44:55'),
(18, 1, '::1', 'Group', '/belajar/mcodev2/cpanel/group/save_acces_control/bff65edac2b511b2bff954d40b1ca7b86f3b3f0f920c48d8e93c4889193beb104c0d5d7c2a94e8bce7ed1f900e8c3abc93a91ab941df567f5ad287758014989e_uNz8ilasc5O1yCYjz12ZDLO~lvi1wInb7YjJ7tRwYw-.html', '{\"id\":[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"10\",\"11\",\"12\",\"13\",\"14\",\"15\",\"16\",\"17\",\"18\",\"19\",\"20\",\"21\",\"22\",\"23\",\"24\",\"25\",\"26\",\"27\",\"28\",\"29\",\"30\",\"31\",\"32\",\"33\",\"34\",\"35\",\"36\",\"37\",\"38\",\"39\",\"40\",\"41\",\"42\",\"43\",\"44\",\"45\",\"46\",\"47\",\"48\",\"49\",\"50\",\"51\",\"52\",\"53\",\"54\",\"55\",\"56\",\"57\",\"58\",\"59\",\"60\",\"61\",\"62\",\"63\",\"64\",\"68\",\"69\",\"75\",\"65\",\"66\",\"67\",\"70\",\"71\",\"72\",\"73\",\"74\"],\"submit\":\"\"}', '2022-06-28 10:45:04'),
(19, 1, '::1', 'Group', '/belajar/mcodev2/cpanel/group.html', NULL, '2022-06-28 10:45:05'),
(20, 1, '::1', 'Group', '/belajar/mcodev2/cpanel/group/add.html', NULL, '2022-06-28 10:45:09'),
(21, 1, '::1', 'Group', '/belajar/mcodev2/cpanel/Group/add_action.html', '{\"group\":\"user\",\"definition\":\"user\",\"button\":\"save\"}', '2022-06-28 10:45:14'),
(22, 1, '::1', 'Group', '/belajar/mcodev2/cpanel/group.html', NULL, '2022-06-28 10:45:14'),
(23, 1, '::1', 'Group', '/belajar/mcodev2/cpanel/group/access_control/21b7ef5e758241cfd23bdd20747df74a9fbbb1c6988661ced6f2c7cc909c1fd7a193aeb972056e093595d35c6660d6af01a064bc55c508eed3ae3c22358340c2Xmbyd5lGwnaYiR94udVsfZBlTUTHF3OxZLer3KdMs3o-.html', NULL, '2022-06-28 10:45:19'),
(24, 1, '::1', 'Group', '/belajar/mcodev2/cpanel/group/save_acces_control/21b7ef5e758241cfd23bdd20747df74a9fbbb1c6988661ced6f2c7cc909c1fd7a193aeb972056e093595d35c6660d6af01a064bc55c508eed3ae3c22358340c2Xmbyd5lGwnaYiR94udVsfZBlTUTHF3OxZLer3KdMs3o-.html', '{\"id\":[\"28\",\"29\",\"30\",\"31\",\"32\",\"47\",\"48\",\"49\",\"50\",\"51\",\"52\",\"53\",\"54\",\"55\",\"56\",\"57\",\"58\",\"59\",\"60\",\"61\",\"62\",\"63\",\"64\",\"68\",\"69\",\"75\",\"65\",\"66\",\"67\"],\"submit\":\"\"}', '2022-06-28 10:46:31'),
(25, 1, '::1', 'Group', '/belajar/mcodev2/cpanel/group.html', NULL, '2022-06-28 10:46:32'),
(26, 2, '::1', 'title', '/belajar/mcodev2/cpanel/dashboard.html', NULL, '2022-06-28 10:46:44'),
(27, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa.html', NULL, '2022-06-28 10:46:46'),
(28, 2, '::1', 'Group', '/belajar/mcodev2/cpanel/group.html', NULL, '2022-06-28 10:46:49'),
(29, 2, '::1', 'title', '/belajar/mcodev2/cpanel/permission.html', NULL, '2022-06-28 10:46:51'),
(30, 2, '::1', 'User', '/belajar/mcodev2/cpanel/user.html', NULL, '2022-06-28 10:46:54'),
(31, 1, '::1', 'title', '/belajar/mcodev2/cpanel/dashboard.html', NULL, '2022-06-28 10:47:07'),
(32, 1, '::1', 'User', '/belajar/mcodev2/cpanel/user.html', NULL, '2022-06-28 10:47:09'),
(33, 1, '::1', 'User', '/belajar/mcodev2/cpanel/user/update/159f1e8007a008d5136ff1781bac2ecacfec12425f8ad12690dc869d3d4b54e83166c4981d44f7d1a50f6b005b01040e73b9ac162fb14d816c9e19987744d43e5KGuuJqNYm79EsPwNqp1RV~PlCU1j5m~hue2cKBdcQo-.html', NULL, '2022-06-28 10:47:12'),
(34, 1, '::1', 'User', '/belajar/mcodev2/cpanel/User/update_action/159f1e8007a008d5136ff1781bac2ecacfec12425f8ad12690dc869d3d4b54e83166c4981d44f7d1a50f6b005b01040e73b9ac162fb14d816c9e19987744d43e5KGuuJqNYm79EsPwNqp1RV~PlCU1j5m~hue2cKBdcQo-.html', '{\"nama\":\"Muhammad Royyan Zamzami\",\"id_group\":\"3\",\"is_active\":\"1\",\"email\":\"royyan@gmail.com\",\"file-dir\":\"\",\"photo\":\"\",\"last_email\":\"royyan@gmail.com\",\"password\":\"\",\"konfirmasi_password\":\"\",\"submit\":\"update\"}', '2022-06-28 10:47:23'),
(35, 1, '::1', 'User', '/belajar/mcodev2/cpanel/user.html', NULL, '2022-06-28 10:47:23'),
(36, 1, '::1', 'User', '/belajar/mcodev2/cpanel/user.html', NULL, '2022-06-28 10:47:38'),
(37, 2, '::1', 'title', '/belajar/mcodev2/cpanel/dashboard.html', NULL, '2022-06-28 10:47:53'),
(38, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa.html', NULL, '2022-06-28 10:47:56'),
(39, 2, '::1', 'title', '/belajar/mcodev2/cpanel/core/notPermission.html', NULL, '2022-06-28 10:47:56'),
(40, 2, '::1', 'User', '/belajar/mcodev2/cpanel/user.html', NULL, '2022-06-28 10:48:04'),
(41, 2, '::1', 'title', '/belajar/mcodev2/cpanel/core/notPermission.html', NULL, '2022-06-28 10:48:05'),
(42, 2, '::1', 'Group', '/belajar/mcodev2/cpanel/group.html', NULL, '2022-06-28 10:48:08'),
(43, 2, '::1', 'title', '/belajar/mcodev2/cpanel/core/notPermission.html', NULL, '2022-06-28 10:48:08'),
(44, 1, '::1', 'Group', '/belajar/mcodev2/cpanel/group.html', NULL, '2022-06-28 10:48:12'),
(45, 1, '::1', 'title', '/belajar/mcodev2/cpanel/permission.html', NULL, '2022-06-28 10:48:13'),
(46, 1, '::1', 'Group', '/belajar/mcodev2/cpanel/group.html', NULL, '2022-06-28 10:48:14'),
(47, 1, '::1', 'Group', '/belajar/mcodev2/cpanel/group/access_control/b51310c37e39dded9922379d846eea378ab9eac3108c95f2dafd6eba73a97e68fdce09335d0625c0f50cb729856a5f95408d98371ee9299f5a6b630818b48db6Dd6zVOBGUwq4R8WXukwO0aOybzqvYuEKAStkgZDiEyE-.html', NULL, '2022-06-28 10:48:17'),
(48, 1, '::1', 'Group', '/belajar/mcodev2/cpanel/group/save_acces_control/b51310c37e39dded9922379d846eea378ab9eac3108c95f2dafd6eba73a97e68fdce09335d0625c0f50cb729856a5f95408d98371ee9299f5a6b630818b48db6Dd6zVOBGUwq4R8WXukwO0aOybzqvYuEKAStkgZDiEyE-.html', '{\"id\":[\"28\",\"29\",\"30\",\"31\",\"32\",\"47\",\"48\",\"49\",\"50\",\"51\",\"52\",\"53\",\"54\",\"55\",\"75\",\"65\",\"66\",\"67\",\"70\",\"71\",\"72\",\"73\",\"74\"],\"submit\":\"\"}', '2022-06-28 10:48:42'),
(49, 1, '::1', 'Group', '/belajar/mcodev2/cpanel/group.html', NULL, '2022-06-28 10:48:42'),
(50, 2, '::1', 'title', '/belajar/mcodev2/cpanel/core/notPermission.html', NULL, '2022-06-28 10:48:45'),
(51, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa.html', NULL, '2022-06-28 10:48:47'),
(52, 2, '::1', 'title', '/belajar/mcodev2/cpanel/dashboard.html', NULL, '2022-06-28 10:48:48'),
(53, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa.html', NULL, '2022-06-28 10:48:55'),
(54, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa/add.html', NULL, '2022-06-28 10:48:57'),
(55, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa.html', NULL, '2022-06-28 10:49:00'),
(56, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa.html', NULL, '2022-06-28 10:54:42'),
(57, 1, '::1', 'Main Menu', '/belajar/mcodev2/cpanel/main_menu.html', NULL, '2022-06-28 10:55:21'),
(58, 1, '::1', 'Setting', '/belajar/mcodev2/cpanel/setting.html', NULL, '2022-06-28 10:55:23'),
(59, 1, '::1', 'Setting', '/belajar/mcodev2/cpanel/setting/core.html', NULL, '2022-06-28 10:55:26'),
(60, 1, '::1', 'Setting', '/belajar/mcodev2/cpanel/setting/update_action.html', '{\"name\":\"url_suffix\",\"value\":\"\",\"pk\":\"999\"}', '2022-06-28 10:55:34'),
(61, 1, '::1', 'Setting', '/belajar/mcodev2/cpanel/setting/core', NULL, '2022-06-28 10:55:34'),
(62, 1, '::1', 'title', '/belajar/mcodev2/cpanel/dashboard', NULL, '2022-06-28 10:55:38'),
(63, 1, '::1', 'title', '/belajar/mcodev2/cpanel/core/reset_password', NULL, '2022-06-28 10:55:49'),
(64, 1, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa', NULL, '2022-06-28 10:55:54'),
(65, 2, '::1', 'title', '/belajar/mcodev2/cpanel/mahasiswa.html', NULL, '2022-06-28 11:00:47'),
(66, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa', NULL, '2022-06-28 11:00:49'),
(67, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa', NULL, '2022-06-28 11:01:01'),
(68, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa', NULL, '2022-06-28 11:01:07'),
(69, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa', NULL, '2022-06-28 11:01:16'),
(70, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa', NULL, '2022-06-28 11:01:40'),
(71, 1, '::1', 'M crud Generator', '/belajar/mcodev2/cpanel/m_crud_generator', NULL, '2022-06-28 11:02:07'),
(72, 1, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/Mahasiswa', NULL, '2022-06-28 11:02:10'),
(73, 1, '::1', 'title', '/belajar/mcodev2/mcrud', NULL, '2022-06-28 11:02:16'),
(74, 1, '::1', 'M crud Generator', '/belajar/mcodev2/cpanel/m_crud_generator', NULL, '2022-06-28 11:02:18'),
(75, 1, '::1', 'title', '/belajar/mcodev2/mcrud', NULL, '2022-06-28 11:02:20'),
(76, 1, '::1', 'title', '/belajar/mcodev2//mcrud/getTable/kelas', NULL, '2022-06-28 11:02:22'),
(77, 1, '::1', 'title', '/belajar/mcodev2/mcrud/action', '{\"table\":\"kelas\",\"title\":\"Kelas\",\"controllers\":\"Kelas\",\"primary_key\":\"id_kelas\",\"mcrud\":{\"1\":{\"id_kelas\":{\"field_name\":\"id_kelas\",\"sort\":\"1\",\"show_in_table\":\"true\",\"field_label\":\"Id\",\"form_type\":\"number\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"2\":{\"nama\":{\"field_name\":\"nama\",\"sort\":\"2\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"show_in_filter\":\"true\",\"field_label\":\"Nama Kelas\",\"form_type\":\"text\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\",\"rules\":[\"required\"]}}}}', '2022-06-28 11:02:43'),
(78, 1, '::1', 'M crud Generator', '/belajar/mcodev2/cpanel/m_crud_generator', NULL, '2022-06-28 11:02:46'),
(79, 1, '::1', 'title', '/belajar/mcodev2/cpanel/permission', NULL, '2022-06-28 11:02:55'),
(80, 1, '::1', 'M crud Generator', '/belajar/mcodev2/cpanel/m_crud_generator', NULL, '2022-06-28 11:02:57'),
(81, 1, '::1', 'Kelas', '/belajar/mcodev2/cpanel/Kelas', NULL, '2022-06-28 11:03:00'),
(82, 1, '::1', 'M crud Generator', '/belajar/mcodev2/cpanel/m_crud_generator/about', NULL, '2022-06-28 11:03:07'),
(83, 1, '::1', 'Setting', '/belajar/mcodev2/cpanel/setting', NULL, '2022-06-28 11:03:18'),
(84, 1, '::1', 'File manager', '/belajar/mcodev2/cpanel/filemanager', NULL, '2022-06-28 11:03:20'),
(85, 1, '::1', 'Setting', '/belajar/mcodev2/cpanel/setting', NULL, '2022-06-28 11:03:25'),
(86, 1, '::1', 'Group', '/belajar/mcodev2/cpanel/group', NULL, '2022-06-28 11:03:30'),
(87, 1, '::1', 'Group', '/belajar/mcodev2/cpanel/group/access_control/4555756bffbab12ef0e6b7068fd6e60b7b31278e7dfd15280e052634180352fac40e0dc305b342212a937fb909a737802e6bef9625a5860659f1f7bc0b21144a77c2iqxJADs7ZGcgxQPyoe5a5wCcx5K6mU7m4JIITVM-', NULL, '2022-06-28 11:03:32'),
(88, 1, '::1', 'Group', '/belajar/mcodev2/cpanel/group/save_acces_control/4555756bffbab12ef0e6b7068fd6e60b7b31278e7dfd15280e052634180352fac40e0dc305b342212a937fb909a737802e6bef9625a5860659f1f7bc0b21144a77c2iqxJADs7ZGcgxQPyoe5a5wCcx5K6mU7m4JIITVM-', '{\"id\":[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"10\",\"11\",\"12\",\"13\",\"14\",\"15\",\"16\",\"17\",\"18\",\"19\",\"20\",\"21\",\"22\",\"23\",\"24\",\"25\",\"26\",\"27\",\"28\",\"29\",\"30\",\"31\",\"32\",\"33\",\"34\",\"35\",\"36\",\"37\",\"38\",\"39\",\"40\",\"41\",\"42\",\"43\",\"44\",\"45\",\"46\",\"47\",\"48\",\"49\",\"50\",\"51\",\"52\",\"53\",\"54\",\"55\",\"56\",\"57\",\"58\",\"59\",\"60\",\"61\",\"62\",\"63\",\"64\",\"68\",\"69\",\"75\",\"65\",\"66\",\"67\",\"70\",\"71\",\"72\",\"73\",\"74\",\"76\",\"77\",\"78\",\"79\",\"80\"],\"submit\":\"\"}', '2022-06-28 11:03:37'),
(89, 1, '::1', 'Group', '/belajar/mcodev2/cpanel/group', NULL, '2022-06-28 11:03:37'),
(90, 1, '::1', 'M crud Generator', '/belajar/mcodev2/cpanel/m_crud_generator', NULL, '2022-06-28 11:03:45'),
(91, 1, '::1', 'Main Menu', '/belajar/mcodev2/cpanel/main_menu', NULL, '2022-06-28 11:03:48'),
(92, 1, '::1', 'Main Menu', '/belajar/mcodev2/cpanel/main_menu/add', NULL, '2022-06-28 11:03:54'),
(93, 1, '::1', 'title', '/belajar/mcodev2/cpanel/core/icon', NULL, '2022-06-28 11:04:01'),
(94, 1, '::1', 'Main Menu', '/belajar/mcodev2/cpanel/main_menu/add_action', '{\"menu\":\"Kelas\",\"icon\":\"fa fa-window-maximize\",\"type\":\"controller\",\"controller\":\"Kelas\",\"data_target\":\"\",\"is_parent\":\"0\",\"is_active\":\"1\",\"submit\":\"save\"}', '2022-06-28 11:04:20'),
(95, 1, '::1', 'Main Menu', '/belajar/mcodev2/cpanel/main_menu', NULL, '2022-06-28 11:04:20'),
(96, 1, '::1', 'Main Menu', '/belajar/mcodev2/cpanel/main_menu/save', '{\"data\":\"[{\\\"id\\\":56},{\\\"id\\\":36},{\\\"id\\\":37,\\\"children\\\":[{\\\"id\\\":38},{\\\"id\\\":39},{\\\"id\\\":40}]},{\\\"id\\\":7,\\\"children\\\":[{\\\"id\\\":34},{\\\"id\\\":3},{\\\"id\\\":54}]},{\\\"id\\\":48},{\\\"id\\\":55}]\"}', '2022-06-28 11:04:24'),
(97, 1, '::1', 'Main Menu', '/belajar/mcodev2/cpanel/main_menu/save', '{\"data\":\"[{\\\"id\\\":56},{\\\"id\\\":36},{\\\"id\\\":37,\\\"children\\\":[{\\\"id\\\":38},{\\\"id\\\":39},{\\\"id\\\":40}]},{\\\"id\\\":7,\\\"children\\\":[{\\\"id\\\":34},{\\\"id\\\":3},{\\\"id\\\":54}]},{\\\"id\\\":48},{\\\"id\\\":55}]\"}', '2022-06-28 11:04:25'),
(98, 1, '::1', 'Main Menu', '/belajar/mcodev2/cpanel/main_menu/save', '{\"data\":\"[{\\\"id\\\":36},{\\\"id\\\":37,\\\"children\\\":[{\\\"id\\\":38},{\\\"id\\\":39},{\\\"id\\\":40}]},{\\\"id\\\":7,\\\"children\\\":[{\\\"id\\\":34},{\\\"id\\\":3},{\\\"id\\\":54}]},{\\\"id\\\":48},{\\\"id\\\":55},{\\\"id\\\":56}]\"}', '2022-06-28 11:04:27'),
(99, 1, '::1', 'Main Menu', '/belajar/mcodev2/cpanel/main_menu/save', '{\"data\":\"[{\\\"id\\\":36},{\\\"id\\\":37,\\\"children\\\":[{\\\"id\\\":38},{\\\"id\\\":39},{\\\"id\\\":40}]},{\\\"id\\\":7,\\\"children\\\":[{\\\"id\\\":34},{\\\"id\\\":3},{\\\"id\\\":54}]},{\\\"id\\\":48},{\\\"id\\\":56},{\\\"id\\\":55}]\"}', '2022-06-28 11:04:30'),
(100, 1, '::1', 'Main Menu', '/belajar/mcodev2/cpanel/main_menu', NULL, '2022-06-28 11:04:32'),
(101, 1, '::1', 'Kelas', '/belajar/mcodev2/cpanel/kelas', NULL, '2022-06-28 11:04:33'),
(102, 1, '::1', 'Kelas', '/belajar/mcodev2/cpanel/kelas/add', NULL, '2022-06-28 11:04:35'),
(103, 1, '::1', 'Kelas', '/belajar/mcodev2/cpanel/kelas/add_action', '{\"nama\":\"V-II A\",\"submit\":\"add\"}', '2022-06-28 11:04:41'),
(104, 1, '::1', 'Kelas', '/belajar/mcodev2/cpanel/kelas', NULL, '2022-06-28 11:04:42'),
(105, 1, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa', NULL, '2022-06-28 11:04:56'),
(106, 1, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa/add', NULL, '2022-06-28 11:04:58'),
(107, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa', NULL, '2022-06-28 11:05:10'),
(108, 1, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa/add', NULL, '2022-06-28 11:05:16'),
(109, 1, '::1', 'Setting', '/belajar/mcodev2/cpanel/setting', NULL, '2022-06-28 11:08:43'),
(110, 1, '::1', 'Setting', '/belajar/mcodev2/cpanel/setting/core', NULL, '2022-06-28 11:08:47'),
(111, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa', NULL, '2022-06-28 11:09:37'),
(112, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa', NULL, '2022-06-28 11:10:06'),
(113, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa/add', NULL, '2022-06-28 11:13:40'),
(114, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa/add', NULL, '2022-06-28 11:13:50'),
(115, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa/add', NULL, '2022-06-28 11:14:20'),
(116, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa/add', NULL, '2022-06-28 11:14:32'),
(117, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa/add', NULL, '2022-06-28 11:14:58'),
(118, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa/add', NULL, '2022-06-28 11:15:00'),
(119, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa/add', NULL, '2022-06-28 11:15:23'),
(120, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa/add', NULL, '2022-06-28 11:16:59'),
(121, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa/add', NULL, '2022-06-28 11:17:56'),
(122, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa/add', NULL, '2022-06-28 11:18:06'),
(123, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa/add_action', '{\"nama\":\"Arip\",\"alamat\":\"Arjosari\",\"no_hp\":\"1209123123\",\"submit\":\"add\"}', '2022-06-28 11:18:19'),
(124, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa/add', NULL, '2022-06-28 11:18:32'),
(125, 1, '::1', 'Setting', '/belajar/mcodev2/cpanel/setting', NULL, '2022-06-28 11:19:09'),
(126, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa/add', NULL, '2022-06-28 11:19:11'),
(127, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa/add_action', '{\"nama\":\"Royyan\",\"alamat\":\"askdjak\",\"no_hp\":\"198273912\",\"kelas_id\":\"1\",\"submit\":\"add\"}', '2022-06-28 11:19:21'),
(128, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa', NULL, '2022-06-28 11:19:21'),
(129, 1, '::1', 'Setting', '/belajar/mcodev2/cpanel/setting', NULL, '2022-06-28 11:19:46'),
(130, 1, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa', NULL, '2022-06-28 11:19:51'),
(131, 1, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa', NULL, '2022-06-28 11:20:34'),
(132, 1, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa', NULL, '2022-06-28 11:21:00'),
(133, 1, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa/add', NULL, '2022-06-28 11:21:05'),
(134, 1, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa/add', NULL, '2022-06-28 11:21:09'),
(135, 1, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa/add', NULL, '2022-06-28 11:21:30'),
(136, 1, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa/add', NULL, '2022-06-28 11:21:31'),
(137, 1, '::1', 'Kelas', '/belajar/mcodev2/cpanel/kelas', NULL, '2022-06-28 11:21:35'),
(138, 1, '::1', 'Kelas', '/belajar/mcodev2/cpanel/kelas', NULL, '2022-06-28 11:22:52'),
(139, 1, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa', NULL, '2022-06-28 11:22:56'),
(140, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa', NULL, '2022-06-28 11:23:29'),
(141, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa', NULL, '2022-06-28 11:23:38'),
(142, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa', NULL, '2022-06-28 11:24:03'),
(143, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa', NULL, '2022-06-28 11:24:11'),
(144, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa', NULL, '2022-06-28 11:24:19'),
(145, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa', NULL, '2022-06-28 11:25:10'),
(146, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa', NULL, '2022-06-28 11:25:14'),
(147, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa', NULL, '2022-06-28 13:12:07'),
(148, 1, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa', NULL, '2022-06-28 13:12:18'),
(149, 1, '::1', 'File manager', '/belajar/mcodev2/cpanel/filemanager', NULL, '2022-06-28 13:12:24'),
(150, 1, '::1', 'File manager', '/belajar/mcodev2/cpanel/filemanager/delete', '{\"id\":\"745a21de5fb2f4f261c5dc92374c7de5a9783216682de41efe47e85a60007e834125c33813a4b4558fe1e7b2b3322b9b10773a9d92738fafd67b3dc19d19f1d1wpLEHPLiWZ7trm8i1ggov8a_iOBcsACCn_56xW11w0g-,a6518a7a747c7e37133d2178ab70b9a7925507fa7c70a1b75d07274464f364ee3462f4a4d2abfedcd53ecaed7756d52b375225ad163e8dd2e6e7a466caec871ccO79nuYN7A7Q1sbAgRfFA5DeIK4ZralT0NIAWWaqNhM-,f2a780cc8325cae195720479363efbf0f2f0d264e4aa61d6c300aec922815df6de42747551d649657bdfef26efaa3f80f8e4e59224a55999443f8307e59f044auUhIWtCeWlWa88KlJn1eWHG~n1RB~KamzDoS4IFnXYE-\"}', '2022-06-28 13:12:40'),
(151, 1, '::1', 'File manager', '/belajar/mcodev2/cpanel/filemanager', NULL, '2022-06-28 13:12:42'),
(152, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa', NULL, '2022-06-28 13:12:46'),
(153, 2, '::1', 'title', '/belajar/mcodev2/cpanel/dashboard', NULL, '2022-06-28 13:13:02'),
(154, 2, '::1', 'title', '/belajar/mcodev2/cpanel/dashboard', NULL, '2022-06-28 13:13:37'),
(155, 2, '::1', 'title', '/belajar/mcodev2/cpanel/dashboard', NULL, '2022-06-28 13:13:49'),
(156, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa', NULL, '2022-06-28 13:13:53'),
(157, 2, '::1', 'title', '/belajar/mcodev2/cpanel/core/reset_password', NULL, '2022-06-28 13:13:58'),
(158, 1, '::1', 'Setting', '/belajar/mcodev2/cpanel/setting', NULL, '2022-06-28 13:14:26'),
(159, 1, '::1', 'Setting', '/belajar/mcodev2/cpanel/setting/core', NULL, '2022-06-28 13:14:30'),
(160, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa', NULL, '2022-06-28 13:16:54'),
(161, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa', NULL, '2022-06-28 13:17:10'),
(162, 2, '::1', 'title', '/belajar/mcodev2/cpanel/dashboard', NULL, '2022-06-28 13:17:13'),
(163, 2, '::1', 'title', '/belajar/mcodev2/cpanel/dashboard', NULL, '2022-06-28 13:17:26'),
(164, 2, '::1', 'title', '/belajar/mcodev2/cpanel/dashboard', NULL, '2022-06-28 13:17:37'),
(165, 1, '::1', 'Setting', '/belajar/mcodev2/cpanel/setting/update_action', '{\"name\":\"maintenance_status\",\"value\":\"Y\",\"pk\":\"60\"}', '2022-06-28 13:18:13'),
(166, 1, '::1', 'Setting', '/belajar/mcodev2/cpanel/setting/update_action', '{\"name\":\"maintenance_status\",\"value\":\"N\",\"pk\":\"60\"}', '2022-06-28 13:18:19'),
(167, 1, '::1', 'Setting', '/belajar/mcodev2/cpanel/setting/core', NULL, '2022-06-28 13:18:21'),
(168, 1, '::1', 'Setting', '/belajar/mcodev2/cpanel/setting/sosmed', NULL, '2022-06-28 13:18:25'),
(169, 1, '::1', 'Setting', '/belajar/mcodev2/cpanel/setting/update_action', '{\"name\":\"facebook\",\"value\":\"#\",\"pk\":\"50\"}', '2022-06-28 13:18:36'),
(170, 1, '::1', 'Setting', '/belajar/mcodev2/cpanel/setting/update_action', '{\"name\":\"instagram\",\"value\":\"#\",\"pk\":\"51\"}', '2022-06-28 13:18:39'),
(171, 1, '::1', 'Setting', '/belajar/mcodev2/cpanel/setting/update_action', '{\"name\":\"youtube\",\"value\":\"#\",\"pk\":\"52\"}', '2022-06-28 13:18:43'),
(172, 1, '::1', 'Setting', '/belajar/mcodev2/cpanel/setting/update_action', '{\"name\":\"twitter\",\"value\":\"#\",\"pk\":\"53\"}', '2022-06-28 13:18:49'),
(173, 1, '::1', 'Setting', '/belajar/mcodev2/cpanel/setting/logo', NULL, '2022-06-28 13:18:52'),
(174, 1, '::1', 'File manager', '/belajar/mcodev2/cpanel/filemanager', NULL, '2022-06-28 13:18:56'),
(175, 1, '::1', 'Setting', '/belajar/mcodev2/cpanel/setting', NULL, '2022-06-28 13:19:07'),
(176, 1, '::1', 'Setting', '/belajar/mcodev2/cpanel/setting/logo', NULL, '2022-06-28 13:19:09'),
(177, 1, '::1', 'Setting', '/belajar/mcodev2/cpanel/setting', NULL, '2022-06-28 13:19:10'),
(178, 1, '::1', 'File manager', '/belajar/mcodev2/cpanel/filemanager', NULL, '2022-06-28 13:19:41'),
(179, 1, '::1', 'M crud Generator', '/belajar/mcodev2/cpanel/m_crud_generator', NULL, '2022-06-28 13:19:42'),
(180, 1, '::1', 'title', '/belajar/build/cpanel/dashboard', NULL, '2022-06-28 13:20:18'),
(181, 1, '::1', 'User', '/belajar/build/cpanel/user', NULL, '2022-06-28 13:20:28'),
(182, 1, '::1', 'Group', '/belajar/build/cpanel/group', NULL, '2022-06-28 13:20:37'),
(183, 1, '::1', 'Group', '/belajar/build/cpanel/group/access_control/0c4eadae4f8c4290b99760f781901818d1c7077d1f90b12fcedd9e493fe4ee470deb5c7012bcdb9a8f5391670c8c9c7cc7a3fc38f56b713c6fbc694030e9f0e6~PZaBtINgUz0CKusM9LWsq2KENfkON_XMxFXtles92g-', NULL, '2022-06-28 13:20:38'),
(184, 1, '::1', 'Group', '/belajar/build/cpanel/group/access_control/0c4eadae4f8c4290b99760f781901818d1c7077d1f90b12fcedd9e493fe4ee470deb5c7012bcdb9a8f5391670c8c9c7cc7a3fc38f56b713c6fbc694030e9f0e6~PZaBtINgUz0CKusM9LWsq2KENfkON_XMxFXtles92g-', NULL, '2022-06-28 13:29:19'),
(185, 1, '::1', 'Mahasiswa', '/belajar/build/cpanel/mahasiswa', NULL, '2022-06-28 13:29:21'),
(186, 1, '::1', 'Mahasiswa', '/belajar/build/cpanel/mahasiswa', NULL, '2022-06-28 13:43:22'),
(187, 1, '::1', 'title', '/belajar/build/cpanel/dashboard', NULL, '2022-06-28 13:48:29'),
(188, 1, '::1', 'title', '/belajar/build/cpanel/dashboard', NULL, '2022-06-29 15:24:26'),
(189, 1, '::1', 'title', '/belajar/build/cpanel/permission', NULL, '2022-06-29 15:24:33'),
(190, 1, '::1', 'User', '/belajar/build/cpanel/user', NULL, '2022-06-29 15:24:50'),
(191, 1, '::1', 'User', '/belajar/build/cpanel/user/view/43a1aa61e4b750e6980730a8b15c041c720c14f7c4d00d71ccb25f3ea55e2429284561fe2425d0f1fe383efe068778c0fde0cb5913306aa5f8969d65b2e1a4cchOOJ05pyXsOeeIqCEtPypx3oZOV1gjjjUFR~86TYbXg-', NULL, '2022-06-29 15:24:53'),
(192, 1, '::1', 'title', '/belajar/build/cpanel/permission', NULL, '2022-06-29 15:24:56'),
(193, 1, '::1', 'Group', '/belajar/build/cpanel/group', NULL, '2022-06-29 15:24:58'),
(194, 1, '::1', 'Group', '/belajar/build/cpanel/group/access_control/c73063af79823624d39513d7827b7a1056952287e7cbc4d9effe8a62376ef0b3f1635e0ae73fb7ef860f20769cac812915af88e19c28adc1d460ad55fa3aa175PgSLRTIxhSKuEm3Z~MYYZxRFwZfEGyiJM9Vt75KURWw-', NULL, '2022-06-29 15:25:01'),
(195, 1, '::1', 'Group', '/belajar/build/cpanel/group/save_acces_control/c73063af79823624d39513d7827b7a1056952287e7cbc4d9effe8a62376ef0b3f1635e0ae73fb7ef860f20769cac812915af88e19c28adc1d460ad55fa3aa175PgSLRTIxhSKuEm3Z~MYYZxRFwZfEGyiJM9Vt75KURWw-', '{\"id\":[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"10\",\"11\",\"12\",\"13\",\"14\",\"15\",\"16\",\"17\",\"18\",\"19\",\"20\",\"21\",\"22\",\"23\",\"24\",\"25\",\"26\",\"27\",\"28\",\"29\",\"30\",\"31\",\"32\",\"33\",\"34\",\"35\",\"36\",\"37\",\"38\",\"39\",\"40\",\"41\",\"42\",\"43\",\"44\",\"45\",\"46\",\"47\",\"48\",\"49\",\"50\",\"51\",\"52\",\"53\",\"54\",\"55\",\"56\",\"57\",\"58\",\"59\",\"60\",\"61\",\"62\",\"63\",\"64\",\"68\",\"69\",\"75\",\"65\",\"66\",\"67\",\"70\",\"71\",\"72\",\"73\",\"76\",\"77\",\"78\",\"79\",\"80\"],\"submit\":\"\"}', '2022-06-29 15:25:07'),
(196, 1, '::1', 'Group', '/belajar/build/cpanel/group', NULL, '2022-06-29 15:25:07'),
(197, 1, '::1', 'Group', '/belajar/build/cpanel/group/access_control/ff57bef18e301109e0a43e2124f42dba1b37acc227a73970e1644cf90c951624eb6afded2a9071d16891bc4351a5b93df50f943bf7a25e6662322095cd13826bgQ79ogIbipJ8pz93Qyp04ZacdwE9S8aaXLvxpEm0Qco-', NULL, '2022-06-29 15:25:11'),
(198, 1, '::1', 'Group', '/belajar/build/cpanel/group/save_acces_control/ff57bef18e301109e0a43e2124f42dba1b37acc227a73970e1644cf90c951624eb6afded2a9071d16891bc4351a5b93df50f943bf7a25e6662322095cd13826bgQ79ogIbipJ8pz93Qyp04ZacdwE9S8aaXLvxpEm0Qco-', '{\"id\":[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"10\",\"11\",\"12\",\"13\",\"14\",\"15\",\"16\",\"17\",\"18\",\"19\",\"20\",\"21\",\"22\",\"23\",\"24\",\"25\",\"26\",\"27\",\"28\",\"29\",\"30\",\"31\",\"32\",\"33\",\"35\",\"36\",\"38\",\"39\",\"40\",\"41\",\"42\",\"43\",\"44\",\"45\",\"46\",\"47\",\"48\",\"49\",\"50\",\"51\",\"52\",\"53\",\"54\",\"55\",\"56\",\"57\",\"58\",\"59\",\"60\",\"61\",\"62\",\"63\",\"64\",\"68\",\"69\",\"75\",\"65\",\"66\",\"67\",\"70\",\"71\",\"72\",\"73\",\"76\",\"77\",\"78\",\"79\",\"80\"],\"submit\":\"\"}', '2022-06-29 15:25:25'),
(199, 1, '::1', 'Group', '/belajar/build/cpanel/group', NULL, '2022-06-29 15:25:26'),
(200, 1, '::1', 'User', '/belajar/build/cpanel/user', NULL, '2022-06-29 15:25:31'),
(201, 1, '::1', 'User', '/belajar/build/cpanel/user/delete/bdd21920b007d1a83aefed5db047aeb838e01702b4bc54494a55845f89fcf87c6ddd9d871e9765d193daacaa95ed90af2e6f346f6f00cb63e6f51b6b991207b02B2i8rOUHxIdItkTz1qrrkEZnzk1abxxSuc_kObqSvw-', NULL, '2022-06-29 15:25:39'),
(202, 1, '::1', 'User', '/belajar/build/cpanel/user', NULL, '2022-06-29 15:25:44'),
(203, 1, '::1', 'User', '/belajar/build/cpanel/user/add', NULL, '2022-06-29 15:25:46'),
(204, 1, '::1', 'title', '/belajar/build/cpanel/core/imageUpload', NULL, '2022-06-29 15:26:06'),
(205, 1, '::1', 'User', '/belajar/build/cpanel/User/add_action', '{\"nama\":\"Muhammad Royyan\",\"id_group\":\"3\",\"is_active\":\"1\",\"email\":\"royyan@gmail.com\",\"file-dir\":\"1-53169453a86ad9da4eea8b2ba247ab0d32730424\",\"photo\":\"Picture1.png\",\"password\":\"1234arema\",\"konfirmasi_password\":\"1234arema\",\"submit\":\"save\"}', '2022-06-29 15:26:11'),
(206, 1, '::1', 'User', '/belajar/build/cpanel/user', NULL, '2022-06-29 15:26:11'),
(207, 1, '::1', 'Group', '/belajar/build/cpanel/group', NULL, '2022-06-29 15:26:26'),
(208, 1, '::1', 'Group', '/belajar/build/cpanel/group/access_control/15e0f9262a2e35657f8ed1c2877afed02ad843233ba5e3fb4aad3c9b17b19135de2b8eae535b2d30d98b74654e31ebd246b82ad5d102dbdc6e869c7d1d141609q_y9JYRIVrnFPTb4X9DLW8wf_aq7q8v9zqNVBaPgTfQ-', NULL, '2022-06-29 15:26:28'),
(209, 1, '::1', 'Group', '/belajar/build/cpanel/group/save_acces_control/15e0f9262a2e35657f8ed1c2877afed02ad843233ba5e3fb4aad3c9b17b19135de2b8eae535b2d30d98b74654e31ebd246b82ad5d102dbdc6e869c7d1d141609q_y9JYRIVrnFPTb4X9DLW8wf_aq7q8v9zqNVBaPgTfQ-', '{\"id\":[\"28\",\"29\",\"30\",\"31\",\"32\",\"33\",\"34\",\"35\",\"36\",\"37\",\"47\",\"48\",\"49\",\"50\",\"51\",\"52\",\"53\",\"54\",\"55\",\"75\",\"65\",\"66\",\"67\",\"70\",\"71\",\"72\",\"73\",\"74\"],\"submit\":\"\"}', '2022-06-29 15:26:37'),
(210, 1, '::1', 'Group', '/belajar/build/cpanel/group', NULL, '2022-06-29 15:26:37'),
(211, 3, '::1', 'title', '/belajar/build/cpanel/dashboard', NULL, '2022-06-29 15:26:51'),
(212, 3, '::1', 'Mahasiswa', '/belajar/build/cpanel/mahasiswa', NULL, '2022-06-29 15:26:53'),
(213, 1, '::1', 'Group', '/belajar/build/cpanel/group/access_control/68d37bd5736e58cf3de03d83e148ad236896b84b0c5f8cfe6fc84e1377ff839043fb77e4728a4217e038a29622ca5c861d38bab9c2835f3294ffb578ba248ffbOmu7xkWbKv2b0b70rB2rppFbrCTlEOPt_DRMPQwc4Mo-', NULL, '2022-06-29 15:27:00'),
(214, 1, '::1', 'Group', '/belajar/build/cpanel/group/save_acces_control/68d37bd5736e58cf3de03d83e148ad236896b84b0c5f8cfe6fc84e1377ff839043fb77e4728a4217e038a29622ca5c861d38bab9c2835f3294ffb578ba248ffbOmu7xkWbKv2b0b70rB2rppFbrCTlEOPt_DRMPQwc4Mo-', '{\"id\":[\"28\",\"29\",\"30\",\"31\",\"32\",\"33\",\"34\",\"35\",\"36\",\"37\",\"47\",\"48\",\"49\",\"50\",\"51\",\"52\",\"53\",\"54\",\"55\",\"56\",\"57\",\"75\",\"65\",\"66\",\"67\",\"70\",\"71\",\"72\",\"73\",\"74\"],\"submit\":\"\"}', '2022-06-29 15:27:11'),
(215, 1, '::1', 'Group', '/belajar/build/cpanel/group', NULL, '2022-06-29 15:27:11'),
(216, 3, '::1', 'Mahasiswa', '/belajar/build/cpanel/mahasiswa', NULL, '2022-06-29 15:27:15'),
(217, 3, '::1', 'User', '/belajar/build/cpanel/user', NULL, '2022-06-29 15:27:19'),
(218, 3, '::1', 'User', '/belajar/build/cpanel/user', NULL, '2022-06-29 15:27:19'),
(219, 1, '::1', 'Group', '/belajar/build/cpanel/group/access_control/8cae9a09387804bd84f39ba660770422d021d7f62728ad456f50bd83ab436c2d2754e68103e0536fa446e62c769b810b9e6c253675768a6074b15ba00656aaef8u2K418PjNRWr9kuj_693yiR6xIkS9jW_0QoNhcRYjg-', NULL, '2022-06-29 15:27:29'),
(220, 1, '::1', 'Group', '/belajar/build/cpanel/group/save_acces_control/8cae9a09387804bd84f39ba660770422d021d7f62728ad456f50bd83ab436c2d2754e68103e0536fa446e62c769b810b9e6c253675768a6074b15ba00656aaef8u2K418PjNRWr9kuj_693yiR6xIkS9jW_0QoNhcRYjg-', '{\"id\":[\"28\",\"29\",\"30\",\"31\",\"32\",\"33\",\"34\",\"35\",\"36\",\"47\",\"48\",\"49\",\"50\",\"51\",\"52\",\"53\",\"54\",\"55\",\"56\",\"57\",\"75\",\"65\",\"66\",\"67\",\"70\",\"71\",\"72\",\"73\",\"74\"],\"submit\":\"\"}', '2022-06-29 15:27:35'),
(221, 1, '::1', 'Group', '/belajar/build/cpanel/group', NULL, '2022-06-29 15:27:35'),
(222, 3, '::1', 'User', '/belajar/build/cpanel/user', NULL, '2022-06-29 15:27:38'),
(223, 3, '::1', 'User', '/belajar/build/cpanel/user/add', NULL, '2022-06-29 15:27:44'),
(224, 3, '::1', 'User', '/belajar/build/cpanel/User/add_action', '{\"nama\":\"tes\",\"id_group\":\"2\",\"is_active\":\"1\",\"email\":\"tes@tes.com\",\"file-dir\":\"\",\"photo\":\"\",\"password\":\"1234arema\",\"konfirmasi_password\":\"1234arema\",\"submit\":\"save\"}', '2022-06-29 15:27:58'),
(225, 3, '::1', 'User', '/belajar/build/cpanel/user', NULL, '2022-06-29 15:27:58'),
(226, 1, '::1', 'title', '/belajar/build/cpanel/permission', NULL, '2022-06-29 15:30:07'),
(227, 1, '::1', 'title', '/belajar/build/cpanel/permission', NULL, '2022-06-29 15:30:28'),
(228, 3, '::1', 'User', '/belajar/build/cpanel/user', NULL, '2022-06-29 15:30:31'),
(229, 1, '::1', 'Group', '/belajar/build/cpanel/group', NULL, '2022-06-29 15:30:35'),
(230, 1, '::1', 'Group', '/belajar/build/cpanel/group/access_control/bca618eaa3768c97d56535f2ffdd5ad600bd4ebbe2e100435b3537dbdc93b82b8445e065338c4eb2f88396cf71e444eba9a221b559a1ee42b257df81f2390574ONZ4TM_txY0~uMTACenLpwdcKDK3XGnapbG7cZVDPwo-', NULL, '2022-06-29 15:30:37'),
(231, 1, '::1', 'Group', '/belajar/build/cpanel/group/save_acces_control/bca618eaa3768c97d56535f2ffdd5ad600bd4ebbe2e100435b3537dbdc93b82b8445e065338c4eb2f88396cf71e444eba9a221b559a1ee42b257df81f2390574ONZ4TM_txY0~uMTACenLpwdcKDK3XGnapbG7cZVDPwo-', '{\"id\":[\"28\",\"29\",\"30\",\"31\",\"32\",\"33\",\"35\",\"36\",\"47\",\"48\",\"49\",\"50\",\"51\",\"52\",\"53\",\"54\",\"55\",\"56\",\"57\",\"75\",\"65\",\"66\",\"67\",\"70\",\"71\",\"72\",\"73\",\"74\"],\"submit\":\"\"}', '2022-06-29 15:30:41'),
(232, 1, '::1', 'Group', '/belajar/build/cpanel/group', NULL, '2022-06-29 15:30:41'),
(233, 3, '::1', 'User', '/belajar/build/cpanel/user', NULL, '2022-06-29 15:30:43'),
(234, 3, '::1', 'User', '/belajar/build/cpanel/user', NULL, '2022-06-29 15:32:45'),
(235, 1, '::1', 'title', '/belajar/build/cpanel/dashboard', NULL, '2022-06-29 21:09:44'),
(236, 1, '::1', 'title', '/belajar/build/cpanel/dashboard', NULL, '2022-06-29 21:10:46'),
(237, 1, '::1', 'title', '/belajar/build/cpanel/dashboard', NULL, '2022-06-29 21:11:07'),
(238, 1, '::1', 'title', '/belajar/build/cpanel/dashboard', NULL, '2022-06-29 21:12:19'),
(239, 1, '::1', 'M crud Generator', '/belajar/build/cpanel/m_crud_generator', NULL, '2022-06-29 21:12:29'),
(240, 1, '::1', 'title', '/belajar/build/mcrud', NULL, '2022-06-29 21:12:31'),
(241, 1, '::1', 'title', '/belajar/build//mcrud/getTable/mahasiswa', NULL, '2022-06-29 21:18:43'),
(242, 1, '::1', 'title', '/belajar/build/cpanel/dashboard', NULL, '2022-06-30 01:54:48'),
(243, 1, '::1', 'Setting', '/belajar/build/cpanel/setting', NULL, '2022-06-30 01:54:51'),
(244, 1, '::1', 'Setting', '/belajar/build/cpanel/setting/logo', NULL, '2022-06-30 01:54:53'),
(245, 1, '::1', 'File manager', '/belajar/build/cpanel/filemanager', NULL, '2022-06-30 01:54:57'),
(246, 1, '::1', 'File manager', '/belajar/build/cpanel/filemanager/add', NULL, '2022-06-30 01:55:01'),
(247, 1, '::1', 'File manager', '/belajar/build/cpanel/filemanager', NULL, '2022-06-30 01:55:06'),
(248, 1, '::1', 'File manager', '/belajar/build/cpanel/filemanager/add', NULL, '2022-06-30 01:55:13'),
(249, 1, '::1', 'title', '/belajar/build/cpanel/core/imageUpload', NULL, '2022-06-30 01:55:19'),
(250, 1, '::1', 'File manager', '/belajar/build/cpanel/filemanager/add_action', '{\"file-dir\":\"1-a71f6922456955317c61e2bf60fcb4077693605b\",\"file_name\":\"GENERATOR-remove.png\",\"ket\":\"logo\",\"params\":\"add\"}', '2022-06-30 01:55:25'),
(251, 1, '::1', 'File manager', '/belajar/build/cpanel/filemanager', NULL, '2022-06-30 01:55:25'),
(252, 1, '::1', 'Setting', '/belajar/build/cpanel/setting', NULL, '2022-06-30 01:55:30'),
(253, 1, '::1', 'File manager', '/belajar/build/cpanel/filemanager', NULL, '2022-06-30 01:55:32'),
(254, 1, '::1', 'Setting', '/belajar/build/cpanel/setting', NULL, '2022-06-30 01:55:35'),
(255, 1, '::1', 'Setting', '/belajar/build/cpanel/setting/logo', NULL, '2022-06-30 01:55:37'),
(256, 1, '::1', 'Setting', '/belajar/build/cpanel/setting/update_action', '{\"name\":\"logo\",\"value\":\"\\t300622015525_GENERATOR_remove.png\",\"pk\":\"7\"}', '2022-06-30 01:55:41'),
(257, 1, '::1', 'Setting', '/belajar/build/cpanel/setting/update_action', '{\"name\":\"logo_mini\",\"value\":\"\\t300622015525_GENERATOR_remove.png\",\"pk\":\"8\"}', '2022-06-30 01:55:44'),
(258, 1, '::1', 'title', '/belajar/build/cpanel/dashboard', NULL, '2022-06-30 01:55:54'),
(259, 1, '::1', 'Setting', '/belajar/build/cpanel/setting', NULL, '2022-06-30 01:55:59'),
(260, 1, '::1', 'Setting', '/belajar/build/cpanel/setting/logo', NULL, '2022-06-30 01:56:00'),
(261, 1, '::1', 'Main Menu', '/belajar/build/cpanel/main_menu', NULL, '2022-06-30 01:56:08'),
(262, 1, '::1', 'File manager', '/belajar/build/cpanel/filemanager', NULL, '2022-06-30 01:56:10'),
(263, 1, '::1', 'Main Menu', '/belajar/build/cpanel/main_menu', NULL, '2022-06-30 01:56:26'),
(264, 1, '::1', 'Setting', '/belajar/build/cpanel/setting', NULL, '2022-06-30 01:56:28'),
(265, 1, '::1', 'Setting', '/belajar/build/cpanel/setting/sosmed', NULL, '2022-06-30 01:56:31'),
(266, 1, '::1', 'Setting', '/belajar/build/cpanel/setting/logo', NULL, '2022-06-30 01:56:33'),
(267, 1, '::1', 'Setting', '/belajar/build/cpanel/setting/update_action', '{\"name\":\"logo\",\"value\":\"http:\\/\\/localhost\\/belajar\\/build\\/_temp\\/uploads\\/img\\/300622015525_GENERATOR_remove.png\",\"pk\":\"7\"}', '2022-06-30 01:56:36'),
(268, 1, '::1', 'title', '/belajar/build/cpanel/dashboard', NULL, '2022-06-30 01:58:59'),
(269, 1, '::1', 'title', '/belajar/build/cpanel/dashboard', NULL, '2022-06-30 01:59:06'),
(270, 1, '::1', 'User', '/belajar/build/cpanel/user', NULL, '2022-06-30 01:59:23'),
(271, 1, '::1', 'User', '/belajar/build/cpanel/user/update/2eb09b634203c5b4c25d7eb887c9021cdcf66e866669f14f848d071003562fbfe2d3666c59584696609a6f46648cfbe8d5e8b0cd2d66f6dab955a07f0574a409_40VNE0oe~k5xHFfc8UTiLCnkJeuiR2iZ5c4_impOiQ-', NULL, '2022-06-30 01:59:30'),
(272, 1, '::1', 'title', '/belajar/build/cpanel/core/imageUpload', NULL, '2022-06-30 01:59:37'),
(273, 1, '::1', 'User', '/belajar/build/cpanel/User/update_action/2eb09b634203c5b4c25d7eb887c9021cdcf66e866669f14f848d071003562fbfe2d3666c59584696609a6f46648cfbe8d5e8b0cd2d66f6dab955a07f0574a409_40VNE0oe~k5xHFfc8UTiLCnkJeuiR2iZ5c4_impOiQ-', '{\"nama\":\"royyan\",\"id_group\":\"1\",\"is_active\":\"1\",\"email\":\"royyan@mail.com\",\"file-dir\":\"1-cc482cf88474cd7ad990efa00b435081b23579dd\",\"photo\":\"Picture1.png\",\"last_email\":\"royyan@mail.com\",\"password\":\"\",\"konfirmasi_password\":\"\",\"submit\":\"update\"}', '2022-06-30 01:59:40'),
(274, 1, '::1', 'User', '/belajar/build/cpanel/user', NULL, '2022-06-30 01:59:40'),
(275, 1, '::1', 'File manager', '/belajar/build/cpanel/filemanager', NULL, '2022-06-30 02:00:09'),
(276, 1, '::1', 'File manager', '/belajar/build/cpanel/filemanager/delete', '{\"id\":\"217c40ff8de99693f453b76b388b4b086542ceb49093c6e2d790de979c1fd5e89af4275533bf5787100e3e67f65e9fcfc5d306290bab627ca003432c833b9b5aG7QhIoMKtSAg9FDT6zcPxw_QmJzskrWgHhUXUpki85Y-\"}', '2022-06-30 02:00:25'),
(277, 1, '::1', 'title', '/belajar/build/cpanel/permission', NULL, '2022-06-30 02:00:33'),
(278, 1, '::1', 'title', '/belajar/build/cpanel/permission', NULL, '2022-06-30 02:01:09'),
(279, 1, '::1', 'M crud Generator', '/belajar/build/cpanel/m_crud_generator', NULL, '2022-06-30 02:01:21'),
(280, 1, '::1', 'M crud Generator', '/belajar/build/cpanel/m_crud_generator', NULL, '2022-06-30 02:01:21'),
(281, 1, '::1', 'M crud Generator', '/belajar/build/cpanel/m_crud_generator/about', NULL, '2022-06-30 02:01:34'),
(282, 1, '::1', 'M crud Generator', '/belajar/build/cpanel/m_crud_generator', NULL, '2022-06-30 02:02:16'),
(283, 1, '::1', 'Kelas', '/belajar/build/cpanel/kelas', NULL, '2022-06-30 02:02:22'),
(284, 1, '::1', 'Mahasiswa', '/belajar/build/cpanel/mahasiswa', NULL, '2022-06-30 02:02:26'),
(285, 1, '::1', 'title', '/belajar/build/cpanel/core/reset_password', NULL, '2022-06-30 02:02:44'),
(286, 1, '::1', 'title', '/belajar/build/cpanel/dashboard', NULL, '2022-06-30 02:10:40'),
(287, 1, '::1', 'title', '/belajar/build/cpanel/dashboard', NULL, '2022-06-30 02:11:49'),
(288, 1, '::1', 'title', '/belajar/build/cpanel/dashboard', NULL, '2022-06-30 02:19:06'),
(289, 1, '::1', 'title', '/belajar/build/cpanel/core/reset_password', NULL, '2022-06-30 02:21:16'),
(290, 1, '::1', 'title', '/belajar/build/cpanel/core/reset_password_action', '{\"password\":\"1234Arema\",\"password_baru\":\"password\",\"konfirmasi_password\":\"password\"}', '2022-06-30 02:21:23'),
(291, 1, '::1', 'title', '/belajar/build/cpanel/dashboard', NULL, '2022-06-30 02:21:36'),
(292, 1, '::1', 'title', '/belajar/build/cpanel/dashboard', NULL, '2022-06-30 02:21:45'),
(293, 1, '::1', 'title', '/belajar/build/cpanel/dashboard', NULL, '2022-06-30 02:23:28'),
(294, 1, '::1', 'title', '/belajar/build/cpanel/kelas', NULL, '2022-06-30 02:23:29'),
(295, 1, '::1', 'Group', '/belajar/build/cpanel/group', NULL, '2022-06-30 02:23:34'),
(296, 1, '::1', 'title', '/belajar/build/cpanel/permission', NULL, '2022-06-30 02:23:36'),
(297, 1, '::1', 'title', '/belajar/build/cpanel/permission/delete', '{\"id\":\"1d03935fb1a81d1b704b0801272411c58a37bdb0c8b398c5e4588b20e882287cd4321edd91f8e244474e25b7f591740003c5574730cb0077d29fa0bef76e1d13OoIs1loEgd8qyOJuo35NgEKvsr0D6e1g22fv65tEh54-,4c30ed38be1411ba11b8763c3a519506a014add056097e72a847a6f672fc608242842f938c70784e35c47f7ce20e0b720f0345d70c56a78b666995adb7eded77QWTsVrOdYEPVFchPJRbfH5hA9z5SIoLFV4pB8wpJA_w-,641c4f84cc9f85fec5a26b4995fb5166cf818c4c99a8c9aca29d1d4be1e3f9e62f1e759d5d804f9188de3957290a220b52282f19cf9500bc962374122aa66462RbaYHCFbtoS6Mgc21qtXnuwfFzj9mv1wVT4ftYbJ5GI-,ee34a4062b24521c278439f3b0e8ee8f3b618c10992a55ba90f2c112b63b40e22d29dbec874e8a670bbed4a6efe057e6e5fb94bd1829c3ec0b88fd6ffdfe37a8nO32a8el69itvn9Rx1bV_R0rAeqHA2HuA3~VYmY8Gvw-,aa4b00010745416ba635b04f4bdeb6e69e7fceed651b4601f2ea476f4b52e53d44f7999ed10798ae55ab6d261414cb27e28f3ca3dbe0810f39ad597defb06bdeNaUETzbDK0S_k3o4uCfd1pESX_cQbVOLvacxCuRkwWQ-,d5507b5b9bd3d74f53f52a2bf01e572b12cb92da755505e6c81be4979ef751bb4ee9ff7d9f75165bf1f608c8dd7f1a058e7e5beece2715ae76a14ab5e1c4bb9bJlxYxjB5DU1CSmAqcpMqeulH11fxYaiFnjejJh~WfIw-\"}', '2022-06-30 02:23:51'),
(298, 1, '::1', 'title', '/belajar/build/cpanel/permission/delete', '{\"id\":\"309df8f768ee15607215ed588bb6654f545f4bd158c78881f0b16e007e3871a410fc8644d94c1159b9c976db1381df03ffc51dd80b2e6e2c5a7463ab85775dbbn9Y30N9nIX28xfwox8IkNOHw5ffJuv_YyKBM~3y~~Zo-,0548325dc84e06967bcb69c0151e12a4dc66d5295e809c984459636a8118f1bbeab3b1050e28f01848dcebffab530b16b21bf59be2736d99cf10165aff5ce8c0Z4xzJ65Vu2l4xfaCp6EQ1g2juhunWOH533LjaGr0n8M-,54a37835db19f64dfd3fa7a9cc09f1bb1ed7b19402afc9aab08414b8912fcb6aefee6d2c407f017e1389be8e845df4a5994daaa23ce877857448492845bb641e_IJ4aI4_CsQeNNHmMWjm3CXbnRObM0vINgpBNwS1qg8-,eca93de677d4b4e979a23499c29859d71b0b4a9e6ab15998e41c5f56a3cd80675cdd55b32951a88468dc33f82c48ca30e8a7dd90bfdb5305b39b708c290886f2UulgUzbnr1Z0cK3En82dgD4o13rLwRo7rNoW8KkFWKM-,c731ff4ea10f3ca7b66c079eae50405cc9fecf5b80087b13bb57e0e91c6fabae2f3d2273fc66ee84f763edc3e21651f463ef947ec9651a47a9318adfe6d3eacf5OSY~H3EgvAbP4qBwlS0cnb4zCVp6kdheW59drmCxcA-,335d63191af7512c6136d6dfb769ff4f2e39db8f48d86c4861e85141be118237b3816cce9eb79f9063ff99e488e62a3e1b5cf3b4e228508952a7ce202ba625b8yv81Nw88WuNt0jZXceMA5owKmCSGQijUB9zD_gSISrk-\"}', '2022-06-30 02:24:06'),
(299, 1, '::1', 'title', '/belajar/build/cpanel/permission', NULL, '2022-06-30 02:24:07'),
(300, 1, '::1', 'Group', '/belajar/build/cpanel/group', NULL, '2022-06-30 02:24:11'),
(301, 1, '::1', 'User', '/belajar/build/cpanel/user', NULL, '2022-06-30 02:24:12'),
(302, 1, '::1', 'Group', '/belajar/build/cpanel/group', NULL, '2022-06-30 02:24:14'),
(303, 1, '::1', 'Group', '/belajar/build/cpanel/group/access_control/b2ae485044f825e762b34a2ddcb687d1e972ec2701268e06c49cfce4b013abd62ab9f880a0a489dbcfd9076347070649e73f50fd0a06590541fb2f0046752b455OYy15rDQn7WTsSuL1HQkmnwOLlXZ6rfvUbl2p03VvY-', NULL, '2022-06-30 02:24:16'),
(304, 1, '::1', 'Group', '/belajar/build/cpanel/group', NULL, '2022-06-30 02:24:25'),
(305, 1, '::1', 'Group', '/belajar/build/cpanel/group/access_control/b9f35ab536efc5d21a4ee2769e8838216f4cb4df77cd892e6911df7f0411977ce3033d0bd069d421ddf15f8342ccd143ccacddf91651b8fa2ffb53733ba4f7c9~OkGOk7tai08~xVtYdh0HARN6PyPOfYGo8iFkUmSuo4-', NULL, '2022-06-30 02:24:27'),
(306, 1, '::1', 'Group', '/belajar/build/cpanel/group/deletepermission/fff045c996c7d423bd298257991fbcd37718a1c93eb80b321326be1a77b9b3d04c86006f2744417c7793d0dab86cf3cc953e3ea8124ac790ed6e7d48222202ecL8XlAv7z2JaYOMmf~mLiFkWfFsGRCE2Qr2M86ztYLnk-', NULL, '2022-06-30 02:24:33'),
(307, 1, '::1', 'Group', '/belajar/build/cpanel/group/access_control/b9f35ab536efc5d21a4ee2769e8838216f4cb4df77cd892e6911df7f0411977ce3033d0bd069d421ddf15f8342ccd143ccacddf91651b8fa2ffb53733ba4f7c9~OkGOk7tai08~xVtYdh0HARN6PyPOfYGo8iFkUmSuo4-', NULL, '2022-06-30 02:24:33'),
(308, 1, '::1', 'Group', '/belajar/build/cpanel/group/deletepermission/38e22b66620c26994d069275232a85fcfab83aa87c3b2673eaaf1083d16ef4054ec011bc0c9ae84ad09b996bac398b86a139dbe14e15671ce3307b2d93cfec6a1yzQJPw8zHnEqB1CssubRfQgiqa9pu_yejKuBDl6Uw8-', NULL, '2022-06-30 02:24:39'),
(309, 1, '::1', 'Group', '/belajar/build/cpanel/group/access_control/b9f35ab536efc5d21a4ee2769e8838216f4cb4df77cd892e6911df7f0411977ce3033d0bd069d421ddf15f8342ccd143ccacddf91651b8fa2ffb53733ba4f7c9~OkGOk7tai08~xVtYdh0HARN6PyPOfYGo8iFkUmSuo4-', NULL, '2022-06-30 02:24:39'),
(310, 1, '::1', 'Group', '/belajar/build/cpanel/group/deletepermission/896f9991a931e0453f983156c019bab0ea7eb29fbed6dd9daedb182f2b4170fd469f81eee419c4475e28de8c593ce5cc4f142ad72677a426a0df0934b28da6de~budJhcSBdUoqUdnFv5x1QkzlmZ2G0XPZ7MfwAsIuew-', NULL, '2022-06-30 02:24:45'),
(311, 1, '::1', 'Group', '/belajar/build/cpanel/group/access_control/b9f35ab536efc5d21a4ee2769e8838216f4cb4df77cd892e6911df7f0411977ce3033d0bd069d421ddf15f8342ccd143ccacddf91651b8fa2ffb53733ba4f7c9~OkGOk7tai08~xVtYdh0HARN6PyPOfYGo8iFkUmSuo4-', NULL, '2022-06-30 02:24:45'),
(312, 1, '::1', 'Group', '/belajar/build/cpanel/group/access_control/b9f35ab536efc5d21a4ee2769e8838216f4cb4df77cd892e6911df7f0411977ce3033d0bd069d421ddf15f8342ccd143ccacddf91651b8fa2ffb53733ba4f7c9~OkGOk7tai08~xVtYdh0HARN6PyPOfYGo8iFkUmSuo4-', NULL, '2022-06-30 02:24:48'),
(313, 1, '::1', 'File manager', '/belajar/build/cpanel/filemanager', NULL, '2022-06-30 02:24:57'),
(314, 1, '::1', 'Main Menu', '/belajar/build/cpanel/main_menu', NULL, '2022-06-30 02:24:58'),
(315, 1, '::1', 'Main Menu', '/belajar/build/cpanel/main_menu/delete/7f40852c960480b241b03c3c0abf34d91d2dbe37825d8cc86b763622a41def041fb2ed69f5f08a37899828dc815237878e338624ec066f350664b1696386adadF1~MpNLMudjZNjyWWicHWY8EZXxosM3E_7hZNa_Vnc0-', NULL, '2022-06-30 02:25:03'),
(316, 1, '::1', 'Main Menu', '/belajar/build/cpanel/main_menu', NULL, '2022-06-30 02:25:03'),
(317, 1, '::1', 'Main Menu', '/belajar/build/cpanel/main_menu/delete/c6481c3449ff5edd4310ecf18b838f2c8ed4c573cd3783d603763a44747675b8b16485988e327ac362536e6dff0467f0c11e8c1717ccf16bec224654d6bcb21eH_XyBObeWS44o7N9_Fnfj_JisKZZkfIUwBfM~ApnkPU-', NULL, '2022-06-30 02:25:08'),
(318, 1, '::1', 'Main Menu', '/belajar/build/cpanel/main_menu', NULL, '2022-06-30 02:25:08'),
(319, 1, '::1', 'title', '/belajar/build/cpanel/permission', NULL, '2022-06-30 02:25:13'),
(320, 1, '::1', 'title', '/belajar/build/cpanel/permission/delete', '{\"id\":\"b2d230c258799b11e5cf518ca81e8e4310f8fae5385a04e413ee7eff92886f781b14471643f47974605e6f314c33c148abace5a2d0d04523ac90195175fb76a1PMDXdD8HCEqXWZu_iSjVnIQXqGX9m0Yz_ir07UINJtw-\"}', '2022-06-30 02:25:26'),
(321, 1, '::1', 'title', '/belajar/build/cpanel/permission/delete/982d5a97e5b1153acb216c3d3dd4632b4a6b5f5cacc3ff394c855155cae3b5005607f546f18315f2b9034b2c16ba9fe9989a475d3e6144ff96af0bfdeee7ef9f_MQpN5XRz4CpN5CWk39P3Tgiqnr947wFaHLgPoJmmAg-', NULL, '2022-06-30 02:25:35'),
(322, 1, '::1', 'Group', '/belajar/build/cpanel/group', NULL, '2022-06-30 02:25:37'),
(323, 1, '::1', 'Group', '/belajar/build/cpanel/group/access_control/36705a1bde9821a30b0596b13311e16944cef7f91df2942b7f43ef5ffe6d2c9e7354581ba140de21ee338f7586e9b4cfbe297bbfe44b6e93c8305e04fe22528fSi07LdGERLkEjKxZAJOnJWnX5QuDSEqGgJTD1pgKGiA-', NULL, '2022-06-30 02:25:39'),
(324, 1, '::1', 'Group', '/belajar/build/cpanel/group/save_acces_control/36705a1bde9821a30b0596b13311e16944cef7f91df2942b7f43ef5ffe6d2c9e7354581ba140de21ee338f7586e9b4cfbe297bbfe44b6e93c8305e04fe22528fSi07LdGERLkEjKxZAJOnJWnX5QuDSEqGgJTD1pgKGiA-', '{\"id\":[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"10\",\"11\",\"12\",\"13\",\"14\",\"15\",\"16\",\"17\",\"18\",\"19\",\"20\",\"21\",\"22\",\"23\",\"24\",\"25\",\"26\",\"27\",\"28\",\"29\",\"30\",\"31\",\"32\",\"33\",\"34\",\"35\",\"36\",\"37\",\"38\",\"39\",\"40\",\"41\",\"42\",\"43\",\"44\",\"45\",\"46\",\"47\",\"48\",\"49\",\"50\",\"51\",\"52\",\"53\",\"54\",\"55\",\"56\",\"57\",\"58\",\"59\",\"60\",\"61\",\"62\",\"63\",\"64\",\"68\",\"69\",\"65\",\"66\",\"67\"],\"submit\":\"\"}', '2022-06-30 02:25:53'),
(325, 1, '::1', 'Group', '/belajar/build/cpanel/group', NULL, '2022-06-30 02:25:53'),
(326, 1, '::1', 'Group', '/belajar/build/cpanel/group/access_control/db40b8c5e642682c8ce73c343736cb8429c9be1be093c65647424fb93ff9830846c15051f9ebdb438f02086a69344186e31d0f6c8e93a30d06c45369b33a04dfCdeePe3ros32QgXnZilQU1~~7omCjlvqxDiKClfBhhY-', NULL, '2022-06-30 02:25:55');
INSERT INTO `ci_user_log` (`id`, `user`, `ip_address`, `controller`, `url`, `data`, `created_at`) VALUES
(327, 1, '::1', 'Group', '/belajar/build/cpanel/group/save_acces_control/db40b8c5e642682c8ce73c343736cb8429c9be1be093c65647424fb93ff9830846c15051f9ebdb438f02086a69344186e31d0f6c8e93a30d06c45369b33a04dfCdeePe3ros32QgXnZilQU1~~7omCjlvqxDiKClfBhhY-', '{\"id\":[\"47\",\"48\",\"49\",\"50\",\"51\",\"55\"],\"submit\":\"\"}', '2022-06-30 02:26:27'),
(328, 1, '::1', 'Group', '/belajar/build/cpanel/group', NULL, '2022-06-30 02:26:27'),
(329, 1, '::1', 'title', '/modulGenerator/modulGenerator-main/cpanel/dashboard', NULL, '2023-09-25 12:45:40'),
(330, 1, '::1', 'Main Menu', '/modulGenerator/modulGenerator-main/cpanel/main_menu', NULL, '2023-09-25 12:45:48'),
(331, 1, '::1', 'Main Menu', '/modulGenerator/modulGenerator-main/cpanel/main_menu/add', NULL, '2023-09-25 12:45:53'),
(332, 1, '::1', 'title', '/modulGenerator/modulGenerator-main/cpanel/core/icon', NULL, '2023-09-25 12:46:04'),
(333, 1, '::1', 'Main Menu', '/modulGenerator/modulGenerator-main/cpanel/main_menu/add_action', '{\"menu\":\"Management Website\",\"icon\":\"fa fa-window-maximize\",\"type\":\"controller\",\"controller\":\"website\",\"data_target\":\"\",\"is_parent\":\"0\",\"is_active\":\"1\",\"submit\":\"save\"}', '2023-09-25 12:46:14'),
(334, 1, '::1', 'Main Menu', '/modulGenerator/modulGenerator-main/cpanel/main_menu', NULL, '2023-09-25 12:46:14'),
(335, 1, '::1', 'Main Menu', '/modulGenerator/modulGenerator-main/cpanel/main_menu/save', '{\"data\":\"[{\\\"id\\\":36},{\\\"id\\\":37,\\\"children\\\":[{\\\"id\\\":38},{\\\"id\\\":39},{\\\"id\\\":40}]},{\\\"id\\\":7,\\\"children\\\":[{\\\"id\\\":34},{\\\"id\\\":3},{\\\"id\\\":54}]},{\\\"id\\\":48},{\\\"id\\\":57}]\"}', '2023-09-25 12:46:21'),
(336, 1, '::1', 'Main Menu', '/modulGenerator/modulGenerator-main/cpanel/main_menu', NULL, '2023-09-25 12:46:22'),
(337, 1, '::1', 'Main Menu', '/modulGenerator/modulGenerator-main/cpanel/main_menu/add', NULL, '2023-09-25 12:46:25'),
(338, 1, '::1', 'title', '/modulGenerator/modulGenerator-main/cpanel/core/icon', NULL, '2023-09-25 12:46:48'),
(339, 1, '::1', 'Main Menu', '/modulGenerator/modulGenerator-main/cpanel/main_menu/add_action', '{\"menu\":\"Visi Misi\",\"icon\":\"\",\"type\":\"controller\",\"controller\":\"visi_misi\",\"data_target\":\"\",\"is_parent\":\"57\",\"is_active\":\"1\",\"submit\":\"save\"}', '2023-09-25 12:46:53'),
(340, 1, '::1', 'Main Menu', '/modulGenerator/modulGenerator-main/cpanel/main_menu', NULL, '2023-09-25 12:46:54'),
(341, 1, '::1', 'title', '/modulGenerator/modulGenerator-main/cpanel/visi_misi', NULL, '2023-09-25 12:46:57'),
(342, 1, '::1', 'M crud Generator', '/modulGenerator/modulGenerator-main/cpanel/m_crud_generator', NULL, '2023-09-25 12:47:37'),
(343, 1, '::1', 'title', '/modulGenerator/modulGenerator-main/mcrud', NULL, '2023-09-25 12:47:40'),
(344, 1, '::1', 'title', '/modulGenerator/modulGenerator-main//mcrud/getTable/visi_misi', NULL, '2023-09-25 12:47:49'),
(345, 1, '::1', 'title', '/modulGenerator/modulGenerator-main/mcrud/action', '{\"table\":\"visi_misi\",\"title\":\"Visi Misi\",\"controllers\":\"Visi_misi\",\"primary_key\":\"id\",\"mcrud\":{\"1\":{\"id\":{\"field_name\":\"id\",\"sort\":\"1\",\"field_label\":\"Id\",\"form_type\":\"number\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"2\":{\"visi\":{\"field_name\":\"visi\",\"sort\":\"2\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"show_in_filter\":\"true\",\"field_label\":\"Visi\",\"form_type\":\"textarea\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"3\":{\"misi\":{\"field_name\":\"misi\",\"sort\":\"3\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"show_in_filter\":\"true\",\"field_label\":\"Misi\",\"form_type\":\"textarea\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}}}}', '2023-09-25 12:48:00'),
(346, 1, '::1', 'M crud Generator', '/modulGenerator/modulGenerator-main/cpanel/m_crud_generator', NULL, '2023-09-25 12:48:03'),
(347, 1, '::1', 'Visi Misi', '/modulGenerator/modulGenerator-main/cpanel/visi_misi', NULL, '2023-09-25 12:48:06'),
(348, 1, '::1', 'title', '/modulGenerator/modulGenerator-main/cpanel/%20visi_misi/add', NULL, '2023-09-25 12:48:08'),
(349, 1, '::1', 'Visi Misi', '/modulGenerator/modulGenerator-main/cpanel/visi_misi/add', NULL, '2023-09-25 12:48:14'),
(350, 1, '::1', 'Visi Misi', '/modulGenerator/modulGenerator-main/cpanel/visi_misi/add_action', '{\"visi\":\"Test Visi\",\"misi\":\"Test Misi\",\"submit\":\"add\"}', '2023-09-25 12:48:25'),
(351, 1, '::1', 'Visi Misi', '/modulGenerator/modulGenerator-main/cpanel/visi_misi', NULL, '2023-09-25 12:48:25'),
(352, 1, '::1', 'File manager', '/modulGenerator/modulGenerator-main/cpanel/filemanager', NULL, '2023-09-25 12:48:42'),
(353, 1, '::1', 'M crud Generator', '/modulGenerator/modulGenerator-main/cpanel/m_crud_generator', NULL, '2023-09-25 12:48:46'),
(354, 1, '::1', 'Group', '/modulGenerator/modulGenerator-main/cpanel/group', NULL, '2023-09-25 12:48:50'),
(355, 1, '::1', 'Group', '/modulGenerator/modulGenerator-main/cpanel/group/update/126e4e30266f98631b8d83b720856a546c7678c2031c08d65890f3d4916ebb7209e2dd17b8e1ff0322364ba08830b7ca5ed2872644ef54f2ea2fa69e0500268d35v_GA7g3kSO3QiIg7Y9i_TkpMhrvkxv2m8sUWFz3CM-', NULL, '2023-09-25 12:48:53'),
(356, 1, '::1', 'Group', '/modulGenerator/modulGenerator-main/cpanel/group/update_action/126e4e30266f98631b8d83b720856a546c7678c2031c08d65890f3d4916ebb7209e2dd17b8e1ff0322364ba08830b7ca5ed2872644ef54f2ea2fa69e0500268d35v_GA7g3kSO3QiIg7Y9i_TkpMhrvkxv2m8sUWFz3CM-', '{\"group\":\"Fungsionaris\",\"definition\":\"user\",\"button\":\"update\"}', '2023-09-25 12:48:58'),
(357, 1, '::1', 'Group', '/modulGenerator/modulGenerator-main/cpanel/group', NULL, '2023-09-25 12:48:58'),
(358, 1, '::1', 'Group', '/modulGenerator/modulGenerator-main/cpanel/group/access_control/8708e4d60b3fe10dd6ed737d5237cae4047a87c10bf0773710ff86d5460f93c016a458615bcabfb79eb795137bc11a731aafb8fbacfe352ad5d2556f4387a7d4C4kBuAD4lUMT_RBGO5XjcVRymUShKd0q2fzr6EtH82I-', NULL, '2023-09-25 12:49:01'),
(359, 1, '::1', 'User', '/modulGenerator/modulGenerator-main/cpanel/user', NULL, '2023-09-25 12:49:10'),
(360, 1, '::1', 'User', '/modulGenerator/modulGenerator-main/cpanel/user/update/3f4456bc4c854c351f331017fdf5a69b6c5bd03d129d5c350b8b84234aa9eab244e720462fe4c835526f1a76e5563ff6f3a8a5309f5129cc4ea005f68eec4971Td_BQNbXg9qBfOaMFYaKT8UoXmSj72joDWNLPMJdQBI-', NULL, '2023-09-25 12:49:31'),
(361, 1, '::1', 'User', '/modulGenerator/modulGenerator-main/cpanel/User/update_action/3f4456bc4c854c351f331017fdf5a69b6c5bd03d129d5c350b8b84234aa9eab244e720462fe4c835526f1a76e5563ff6f3a8a5309f5129cc4ea005f68eec4971Td_BQNbXg9qBfOaMFYaKT8UoXmSj72joDWNLPMJdQBI-', '{\"nama\":\"Muhammad Royyan\",\"id_group\":\"3\",\"is_active\":\"1\",\"email\":\"royyan@gmail.com\",\"file-dir\":\"\",\"photo\":\"290622152611_Picture1.png\",\"last_email\":\"royyan@gmail.com\",\"password\":\"password\",\"konfirmasi_password\":\"password\",\"submit\":\"update\"}', '2023-09-25 12:49:36'),
(362, 1, '::1', 'User', '/modulGenerator/modulGenerator-main/cpanel/user', NULL, '2023-09-25 12:49:37'),
(363, 3, '::1', 'title', '/modulGenerator/modulGenerator-main/cpanel/dashboard', NULL, '2023-09-25 12:49:46'),
(364, 1, '::1', 'Group', '/modulGenerator/modulGenerator-main/cpanel/group', NULL, '2023-09-25 12:49:51'),
(365, 1, '::1', 'Group', '/modulGenerator/modulGenerator-main/cpanel/group/access_control/a03bccbc0d366c53f7f49c930b179c5a25a766d25d7b3e4904168c816f49b6fb69741d7778d0c5acddc90145c57efe05f3590840228915d2ad94374cbab51a081Z0r~JyvZBM~dWd3a4yYr8g1LaExXS10FMh7Q8LPXaQ-', NULL, '2023-09-25 12:49:53'),
(366, 1, '::1', 'Group', '/modulGenerator/modulGenerator-main/cpanel/group/save_acces_control/a03bccbc0d366c53f7f49c930b179c5a25a766d25d7b3e4904168c816f49b6fb69741d7778d0c5acddc90145c57efe05f3590840228915d2ad94374cbab51a081Z0r~JyvZBM~dWd3a4yYr8g1LaExXS10FMh7Q8LPXaQ-', '{\"id\":[\"47\",\"48\",\"49\",\"50\",\"51\",\"55\",\"87\",\"88\",\"89\",\"90\",\"91\",\"92\",\"93\"],\"submit\":\"\"}', '2023-09-25 12:50:15'),
(367, 1, '::1', 'Group', '/modulGenerator/modulGenerator-main/cpanel/group', NULL, '2023-09-25 12:50:15'),
(368, 3, '::1', 'title', '/modulGenerator/modulGenerator-main/cpanel/dashboard', NULL, '2023-09-25 12:50:17'),
(369, 3, '::1', 'Visi Misi', '/modulGenerator/modulGenerator-main/cpanel/visi_misi', NULL, '2023-09-25 12:50:19'),
(370, 1, '::1', 'Group', '/modulGenerator/modulGenerator-main/cpanel/group/access_control/53a67e551413b84fa69b7d1bf6c0b5cd8b729eb4de6e417d1536433bcdb24ef24dce4e5492c76a65765e0c2ae19bc61917a98ad719fce916cfd1a6339ae8b112IXx4MI~8D4SPx2ULMfFM99G2PrhR3pGQzXcAJa7cZh0-', NULL, '2023-09-25 12:50:22'),
(371, 1, '::1', 'Group', '/modulGenerator/modulGenerator-main/cpanel/group/save_acces_control/53a67e551413b84fa69b7d1bf6c0b5cd8b729eb4de6e417d1536433bcdb24ef24dce4e5492c76a65765e0c2ae19bc61917a98ad719fce916cfd1a6339ae8b112IXx4MI~8D4SPx2ULMfFM99G2PrhR3pGQzXcAJa7cZh0-', '{\"id\":[\"47\",\"48\",\"49\",\"50\",\"51\",\"55\",\"87\",\"88\",\"89\",\"90\",\"92\",\"93\"],\"submit\":\"\"}', '2023-09-25 12:50:25'),
(372, 1, '::1', 'Group', '/modulGenerator/modulGenerator-main/cpanel/group', NULL, '2023-09-25 12:50:26'),
(373, 3, '::1', 'Visi Misi', '/modulGenerator/modulGenerator-main/cpanel/visi_misi', NULL, '2023-09-25 12:50:29'),
(374, 3, '::1', 'title', '/modulGenerator/modulGenerator-main/cpanel/%20visi_misi/add', NULL, '2023-09-25 12:50:32'),
(375, 3, '::1', 'Visi Misi', '/modulGenerator/modulGenerator-main/cpanel/visi_misi', NULL, '2023-09-25 12:50:38'),
(376, 3, '::1', 'title', '/modulGenerator/cpanel/dashboard', NULL, '2023-09-25 12:58:31'),
(377, 3, '::1', 'title', '/modulGenerator/cpanel/visi_misi', NULL, '2023-09-25 12:58:41'),
(378, 1, '::1', 'title', '/modulGenerator/cpanel/dashboard', NULL, '2023-09-25 12:59:35'),
(379, 1, '::1', 'title', '/modulGenerator/cpanel/visi_misi', NULL, '2023-09-25 12:59:38'),
(380, 1, '::1', 'M crud Generator', '/modulGenerator/cpanel/m_crud_generator', NULL, '2023-09-25 12:59:42'),
(381, 1, '::1', 'title', '/modulGenerator/cpanel/Visi_misi', NULL, '2023-09-25 12:59:49'),
(382, 1, '::1', 'M crud Generator', '/modulGenerator/cpanel/m_crud_generator', NULL, '2023-09-25 12:59:51'),
(383, 1, '::1', 'User', '/modulGenerator/cpanel/user', NULL, '2023-09-25 12:59:59'),
(384, 1, '::1', 'Setting', '/modulGenerator/cpanel/setting', NULL, '2023-09-25 13:00:06'),
(385, 1, '::1', 'Main Menu', '/modulGenerator/cpanel/main_menu', NULL, '2023-09-25 13:00:11'),
(386, 1, '::1', 'M crud Generator', '/modulGenerator/cpanel/m_crud_generator', NULL, '2023-09-25 13:00:17'),
(387, 1, '::1', 'title', '/modulGenerator/mcrud', NULL, '2023-09-25 13:00:40'),
(388, 1, '::1', 'M crud Generator', '/modulGenerator/cpanel/m_crud_generator', NULL, '2023-09-25 13:00:46'),
(389, 1, '::1', 'Main Menu', '/modulGenerator/cpanel/main_menu', NULL, '2023-09-25 13:00:50'),
(390, 1, '::1', 'Main Menu', '/modulGenerator/cpanel/main_menu/add', NULL, '2023-09-25 13:00:51'),
(391, 1, '::1', 'title', '/modulGenerator/cpanel/core/icon', NULL, '2023-09-25 13:00:56'),
(392, 1, '::1', 'Main Menu', '/modulGenerator/cpanel/main_menu/add_action', '{\"menu\":\"Home\",\"icon\":\"\",\"type\":\"controller\",\"controller\":\"Home\",\"data_target\":\"\",\"is_parent\":\"57\",\"is_active\":\"1\",\"submit\":\"save\"}', '2023-09-25 13:01:48'),
(393, 1, '::1', 'Main Menu', '/modulGenerator/cpanel/main_menu', NULL, '2023-09-25 13:01:48'),
(394, 1, '::1', 'M crud Generator', '/modulGenerator/cpanel/m_crud_generator', NULL, '2023-09-25 13:01:56'),
(395, 1, '::1', 'title', '/modulGenerator/mcrud', NULL, '2023-09-25 13:02:01'),
(396, 1, '::1', 'title', '/modulGenerator/mcrud', NULL, '2023-09-25 13:04:01'),
(397, 1, '::1', 'title', '/modulGenerator//mcrud/getTable/home', NULL, '2023-09-25 13:04:03'),
(398, 1, '::1', 'title', '/modulGenerator/mcrud/action', '{\"table\":\"home\",\"title\":\"Home\",\"controllers\":\"Home\",\"primary_key\":\"id\",\"mcrud\":{\"1\":{\"id\":{\"field_name\":\"id\",\"sort\":\"1\",\"field_label\":\"Id\",\"form_type\":\"text\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"2\":{\"judul\":{\"field_name\":\"judul\",\"sort\":\"2\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"show_in_filter\":\"true\",\"field_label\":\"Judul\",\"form_type\":\"textarea\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"3\":{\"paragraf\":{\"field_name\":\"paragraf\",\"sort\":\"3\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"show_in_filter\":\"true\",\"field_label\":\"Paragraf\",\"form_type\":\"textarea\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}}}}', '2023-09-25 13:04:27'),
(399, 1, '::1', 'M crud Generator', '/modulGenerator/cpanel/m_crud_generator', NULL, '2023-09-25 13:04:31'),
(400, 1, '::1', 'Home', '/modulGenerator/cpanel/home', NULL, '2023-09-25 13:04:34'),
(401, 1, '::1', 'title', '/modulGenerator/cpanel/visi_misi', NULL, '2023-09-25 13:04:36'),
(402, 1, '::1', 'Home', '/modulGenerator/cpanel/home', NULL, '2023-09-25 13:04:37'),
(403, 1, '::1', 'title', '/modulGenerator/cpanel/%20home/add', NULL, '2023-09-25 13:04:41'),
(404, 1, '::1', 'Home', '/modulGenerator/cpanel/home', NULL, '2023-09-25 13:04:44'),
(405, 1, '::1', 'Home', '/modulGenerator/cpanel/home', NULL, '2023-09-25 13:04:53'),
(406, 1, '::1', 'Home', '/modulGenerator/cpanel/home', NULL, '2023-09-25 13:04:54'),
(407, 1, '::1', 'title', '/modulGenerator/cpanel/%20home/add', NULL, '2023-09-25 13:04:56'),
(408, 1, '::1', 'title', '/modulGenerator/cpanel/visi_misi', NULL, '2023-09-25 13:05:00'),
(409, 1, '::1', 'M crud Generator', '/modulGenerator/cpanel/m_crud_generator', NULL, '2023-09-25 13:05:02'),
(410, 1, '::1', 'Main Menu', '/modulGenerator/cpanel/main_menu', NULL, '2023-09-25 13:05:06'),
(411, 1, '::1', 'Main Menu', '/modulGenerator/cpanel/main_menu/update/b15de1efdbc370b444bf2a5f98e2bb9b4a24a8b9342b06a669d8aa79e66ea8a76f4226a0721e05026b60ab8815a3e947ce368cc6d7fffeecf7e8f234692f1458qOKNRwpN8729EEiTI9RYkmrUAzK2g2QNuQFWcdMnNsM-', NULL, '2023-09-25 13:05:13'),
(412, 1, '::1', 'Main Menu', '/modulGenerator/cpanel/main_menu', NULL, '2023-09-25 13:05:17'),
(413, 1, '::1', 'Main Menu', '/modulGenerator/cpanel/main_menu/update/e834446a5871ab5d5d6f49e7619430ff113b202a9c3a2a54a2c71de1ad6a5b5595ecfce975322ea5470e4e7c404d09f6a053a3372d0a43197d1bc74424db9b9472jcx2nZjbO1w~lkfLJmUogLzdHTh9f6CeNZa2gbGAo-', NULL, '2023-09-25 13:05:19'),
(414, 1, '::1', 'Setting', '/modulGenerator/cpanel/setting', NULL, '2023-09-25 13:05:25'),
(415, 1, '::1', 'User', '/modulGenerator/cpanel/user', NULL, '2023-09-25 13:05:30'),
(416, 1, '::1', 'Home', '/modulGenerator/cpanel/home', NULL, '2023-09-25 13:05:37'),
(417, 1, '::1', 'title', '/modulGenerator/cpanel/%20home/add', NULL, '2023-09-25 13:05:41'),
(418, 1, '::1', 'Home', '/modulGenerator/cpanel/home/add', NULL, '2023-09-25 13:05:46'),
(419, 1, '::1', 'Home', '/modulGenerator/cpanel/home/add_action', '{\"judul\":\"tes\",\"paragraf\":\"tes\",\"submit\":\"add\"}', '2023-09-25 13:05:57'),
(420, 1, '::1', 'Home', '/modulGenerator/cpanel/home', NULL, '2023-09-25 13:05:57'),
(421, 1, '::1', 'Home', '/modulGenerator/cpanel/home', NULL, '2023-09-25 13:08:11'),
(422, 1, '::1', 'Home', '/modulGenerator/cpanel/home', NULL, '2023-09-25 13:08:17'),
(423, 1, '::1', 'Setting', '/modulGenerator/cpanel/setting', NULL, '2023-09-25 13:10:08'),
(424, 1, '::1', 'Main Menu', '/modulGenerator/cpanel/main_menu', NULL, '2023-09-25 13:10:11'),
(425, 1, '::1', 'M crud Generator', '/modulGenerator/cpanel/m_crud_generator', NULL, '2023-09-25 13:10:24'),
(426, 1, '::1', 'M crud Generator', '/modulGenerator/cpanel/m_crud_generator', NULL, '2023-09-25 13:39:17'),
(427, 1, '::1', 'Visi Misi', '/modulGenerator/cpanel/visi_misi', NULL, '2023-09-25 13:39:28'),
(428, 1, '::1', 'Visi Misi', '/modulGenerator/cpanel/visi_misi/add', NULL, '2023-09-25 13:39:31'),
(429, 1, '::1', 'Visi Misi', '/modulGenerator/cpanel/visi_misi/add_action', '{\"visi\":\"htdtd\",\"misi\":\"thdhd\",\"createdOn\":\"fdf\",\"submit\":\"add\"}', '2023-09-25 13:39:42'),
(430, 1, '::1', 'Visi Misi', '/modulGenerator/cpanel/visi_misi/add', NULL, '2023-09-25 13:53:21'),
(431, 1, '::1', 'Visi Misi', '/modulGenerator/cpanel/visi_misi/add', NULL, '2023-09-25 13:53:23'),
(432, 1, '::1', 'Main Menu', '/modulGenerator/cpanel/main_menu', NULL, '2023-09-25 13:53:44'),
(433, 1, '::1', 'M crud Generator', '/modulGenerator/cpanel/m_crud_generator', NULL, '2023-09-25 13:53:46'),
(434, 1, '::1', 'M crud Generator', '/modulGenerator/cpanel/m_crud_generator/delete/7020cd6edde2affbf87c43dd91727e3a8a6b64b4c6983603e29f776077a060734beb6d7dd5e897fee2aad049be676801817a147b9b7b7fc00a97ce2e728f0dfafDkV3PrVjgtJPLQw0oR1EjCUI~aOQWfSibqYhC2s2vw-/664c7c944aa8f8e9ab2f1756bbc72a559ad9597bea3f4fdc38fb6b1ce49050f0446b2f733882f2cdb65f623d92a4a3e49d0e274aee123035abcd5188bf090a4102N2Dt5cGfu8iQYS6md3PLD3IiHzUNFc7BfYk_GHdh4-', NULL, '2023-09-25 13:53:50'),
(435, 1, '::1', 'title', '/modulGenerator/mcrud', NULL, '2023-09-25 13:53:53'),
(436, 1, '::1', 'title', '/modulGenerator//mcrud/getTable/visi_misi', NULL, '2023-09-25 13:53:55'),
(437, 1, '::1', 'title', '/modulGenerator/mcrud/action', '{\"table\":\"visi_misi\",\"title\":\"Visi Misi\",\"controllers\":\"Visi_misi\",\"primary_key\":\"id\",\"mcrud\":{\"1\":{\"id\":{\"field_name\":\"id\",\"sort\":\"1\",\"field_label\":\"Id\",\"form_type\":\"number\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"2\":{\"visi\":{\"field_name\":\"visi\",\"sort\":\"2\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"show_in_filter\":\"true\",\"field_label\":\"Visi\",\"form_type\":\"textarea\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"3\":{\"misi\":{\"field_name\":\"misi\",\"sort\":\"3\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"show_in_filter\":\"true\",\"field_label\":\"Misi\",\"form_type\":\"textarea\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}}}}', '2023-09-25 13:54:05'),
(438, 1, '::1', 'M crud Generator', '/modulGenerator/cpanel/m_crud_generator', NULL, '2023-09-25 13:54:09'),
(439, 1, '::1', 'Visi Misi', '/modulGenerator/cpanel/visi_misi', NULL, '2023-09-25 13:54:12'),
(440, 1, '::1', 'Visi Misi', '/modulGenerator/cpanel/visi_misi/add', NULL, '2023-09-25 13:54:15'),
(441, 1, '::1', 'Visi Misi', '/modulGenerator/cpanel/visi_misi/add_action', '{\"visi\":\"asda\",\"misi\":\"asdasd\",\"submit\":\"add\"}', '2023-09-25 13:54:18'),
(442, 1, '::1', 'Visi Misi', '/modulGenerator/cpanel/visi_misi', NULL, '2023-09-25 13:54:18'),
(443, 1, '::1', 'Visi Misi', '/modulGenerator/cpanel/visi_misi/delete/82cd7b001e651b5acf4462e8ff9da5dc2c5995441947d96162658c509a12b5367d563f886a7e06421ba382e0174e45e1df7acae40c09f4b8f665cee67dc19e4drV08ox1PmdLAobV6chs2ozWCaoKV7LklvbSuBubLrB8-', NULL, '2023-09-25 13:54:22'),
(444, 3, '::1', 'title', '/modulGenerator/cpanel/dashboard', NULL, '2023-09-25 13:54:46'),
(445, 3, '::1', 'Visi Misi', '/modulGenerator/cpanel/visi_misi', NULL, '2023-09-25 13:54:48'),
(446, 3, '::1', 'title', '/modulGenerator/cpanel/core/notPermission', NULL, '2023-09-25 13:54:48'),
(447, 1, '::1', 'title', '/modulGenerator/cpanel/permission', NULL, '2023-09-25 13:54:56'),
(448, 1, '::1', 'Group', '/modulGenerator/cpanel/group', NULL, '2023-09-25 13:54:57'),
(449, 1, '::1', 'Group', '/modulGenerator/cpanel/group/access_control/3488f30b74cd26701afb827881adb32aa27b4371d72c3bcb08cef962ae83faf9fa82345ed69492e8552a014ecf4a13c1ee90584d5b9260baea602c3355854e3b~3~LR7ufzOJfjWaDD284hWOTkQhBrSuR41V3H7wqvmQ-', NULL, '2023-09-25 13:54:59'),
(450, 1, '::1', 'Group', '/modulGenerator/cpanel/group/save_acces_control/3488f30b74cd26701afb827881adb32aa27b4371d72c3bcb08cef962ae83faf9fa82345ed69492e8552a014ecf4a13c1ee90584d5b9260baea602c3355854e3b~3~LR7ufzOJfjWaDD284hWOTkQhBrSuR41V3H7wqvmQ-', '{\"id\":[\"47\",\"48\",\"49\",\"50\",\"51\",\"55\",\"87\",\"88\",\"100\",\"101\",\"103\",\"104\"],\"submit\":\"\"}', '2023-09-25 13:55:07'),
(451, 1, '::1', 'Group', '/modulGenerator/cpanel/group', NULL, '2023-09-25 13:55:07'),
(452, 3, '::1', 'title', '/modulGenerator/cpanel/dashboard', NULL, '2023-09-25 13:55:17'),
(453, 3, '::1', 'Visi Misi', '/modulGenerator/cpanel/visi_misi', NULL, '2023-09-25 13:55:18'),
(454, 3, '::1', 'Visi Misi', '/modulGenerator/cpanel/visi_misi/add', NULL, '2023-09-25 13:55:20'),
(455, 3, '::1', 'title', '/modulGenerator/cpanel/core/notPermission', NULL, '2023-09-25 13:55:20'),
(456, 3, '::1', 'Visi Misi', '/modulGenerator/cpanel/visi_misi', NULL, '2023-09-25 13:55:22'),
(457, 3, '::1', 'Visi Misi', '/modulGenerator/cpanel/visi_misi/update/2bedb16f1a965e7b5ced9ffd3b1c5b27c1904bd68ee756d87208d4dc74ab765f9e8585932c1aefd2af27e2e89a23bc50a29f19356845b9c3de6e85c9fe03450fR4fmdy1Y_fZLqJ5FVHJtxVwOk_yJqJjhGdt~ChKM9dc-', NULL, '2023-09-25 13:55:25'),
(458, 3, '::1', 'Visi Misi', '/modulGenerator/cpanel/visi_misi/update_action/2bedb16f1a965e7b5ced9ffd3b1c5b27c1904bd68ee756d87208d4dc74ab765f9e8585932c1aefd2af27e2e89a23bc50a29f19356845b9c3de6e85c9fe03450fR4fmdy1Y_fZLqJ5FVHJtxVwOk_yJqJjhGdt~ChKM9dc-', '{\"visi\":\"1. Halo\",\"misi\":\"1. Halo lagi\",\"submit\":\"update\"}', '2023-09-25 13:55:37'),
(459, 3, '::1', 'Visi Misi', '/modulGenerator/cpanel/visi_misi', NULL, '2023-09-25 13:55:37'),
(460, 1, '::1', 'Home', '/modulGenerator/cpanel/home', NULL, '2023-09-25 13:58:07'),
(461, 1, '::1', 'M crud Generator', '/modulGenerator/cpanel/m_crud_generator', NULL, '2023-09-25 13:58:10'),
(462, 1, '::1', 'M crud Generator', '/modulGenerator/cpanel/m_crud_generator/delete/d60f64efb58032917af7ab93ec845c485e530be0135ce1057ae712262aca624546fb768def02bfbf2b51e160295328f8e5695e4ea50f04ceec57ac1d1c076e0eEMIXyIi_ZDtQuvePcvxSSlFqXcThWSr0S86ja1rlaeo-/a5c2b8d44e8fc26b71d0ccb8bd5df88b0699b390fbf76bbe82d84b3a9609e0acc2f699a9c5600aa9f750518048662a98bae882fb858e44f773bb37b060fa9737EPQzbCBpYs4vDaZUYfuxE25v81oMnUtVABl9LxDiiJA-', NULL, '2023-09-25 13:58:16'),
(463, 1, '::1', 'Main Menu', '/modulGenerator/cpanel/main_menu', NULL, '2023-09-25 13:58:20'),
(464, 1, '::1', 'Main Menu', '/modulGenerator/cpanel/main_menu/delete/a2785f923f8da8fec45c8fd295ee5e58c99518f9fec911633d2360ffdf69d7b10b978f9a3e82b255130b47b48e64f926474bdbd1ae35bcaefba1877897b3426eRlYJu~bYw2p6NYNX3o2fMQKpoM9kT5iixZE6BVXedao-', NULL, '2023-09-25 13:58:24'),
(465, 1, '::1', 'Main Menu', '/modulGenerator/cpanel/main_menu', NULL, '2023-09-25 13:58:24'),
(466, 1, '::1', 'Main Menu', '/modulGenerator/cpanel/main_menu/add', NULL, '2023-09-25 13:58:43'),
(467, 1, '::1', 'Main Menu', '/modulGenerator/cpanel/main_menu/add_action', '{\"menu\":\"Struktur Organisai\",\"icon\":\"\",\"type\":\"controller\",\"controller\":\"struktur\",\"data_target\":\"\",\"is_parent\":\"57\",\"is_active\":\"1\",\"submit\":\"save\"}', '2023-09-25 13:59:05'),
(468, 1, '::1', 'Main Menu', '/modulGenerator/cpanel/main_menu', NULL, '2023-09-25 13:59:05'),
(469, 1, '::1', 'M crud Generator', '/modulGenerator/cpanel/m_crud_generator', NULL, '2023-09-25 13:59:10'),
(470, 1, '::1', 'title', '/modulGenerator/mcrud', NULL, '2023-09-25 13:59:12'),
(471, 1, '::1', 'M crud Generator', '/modulGenerator/cpanel/m_crud_generator', NULL, '2023-09-25 14:00:31'),
(472, 1, '::1', 'title', '/modulGenerator/mcrud', NULL, '2023-09-25 14:00:33'),
(473, 1, '::1', 'title', '/modulGenerator//mcrud/getTable/struktur_organisasi', NULL, '2023-09-25 14:00:35'),
(474, 1, '::1', 'title', '/modulGenerator/mcrud/action', '{\"table\":\"struktur_organisasi\",\"title\":\"Struktur Organisasi\",\"controllers\":\"Struktur_organisasi\",\"primary_key\":\"id\",\"mcrud\":{\"1\":{\"id\":{\"field_name\":\"id\",\"sort\":\"1\",\"field_label\":\"Id\",\"form_type\":\"number\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"2\":{\"path\":{\"field_name\":\"path\",\"sort\":\"2\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"show_in_filter\":\"true\",\"field_label\":\"Path\",\"form_type\":\"upload_image\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}}}}', '2023-09-25 14:00:55'),
(475, 1, '::1', 'M crud Generator', '/modulGenerator/cpanel/m_crud_generator', NULL, '2023-09-25 14:00:58'),
(476, 1, '::1', 'title', '/modulGenerator/cpanel/struktur', NULL, '2023-09-25 14:01:03'),
(477, 1, '::1', 'Visi Misi', '/modulGenerator/cpanel/visi_misi', NULL, '2023-09-25 14:01:06'),
(478, 1, '::1', 'title', '/modulGenerator/cpanel/struktur', NULL, '2023-09-25 14:01:08'),
(479, 1, '::1', 'M crud Generator', '/modulGenerator/cpanel/m_crud_generator', NULL, '2023-09-25 14:01:09'),
(480, 1, '::1', 'Struktur Organisasi', '/modulGenerator/cpanel/Struktur_organisasi', NULL, '2023-09-25 14:01:14'),
(481, 1, '::1', 'File manager', '/modulGenerator/cpanel/filemanager', NULL, '2023-09-25 14:01:28'),
(482, 1, '::1', 'File manager', '/modulGenerator/cpanel/filemanager/add', NULL, '2023-09-25 14:01:31'),
(483, 1, '::1', 'File manager', '/modulGenerator/cpanel/filemanager', NULL, '2023-09-25 14:01:41'),
(484, 1, '::1', 'title', '/modulGenerator/cpanel/struktur', NULL, '2023-09-25 14:01:51'),
(485, 1, '::1', 'Struktur Organisasi', '/modulGenerator/cpanel/Struktur_organisasi', NULL, '2023-09-25 14:01:57'),
(486, 1, '::1', 'Struktur Organisasi', '/modulGenerator/cpanel/struktur_organisasi/add', NULL, '2023-09-25 14:01:59'),
(487, 1, '::1', 'title', '/modulGenerator/cpanel/core/imageUpload', NULL, '2023-09-25 14:02:59'),
(488, 1, '::1', 'Struktur Organisasi', '/modulGenerator/cpanel/struktur_organisasi/add_action', '{\"file-dir-path\":\"1-1494cb9d13bc54dd9597a47bc83d322d6ec8e592\",\"path\":\"download_(1).png\",\"submit\":\"add\"}', '2023-09-25 14:03:01'),
(489, 1, '::1', 'Struktur Organisasi', '/modulGenerator/cpanel/struktur_organisasi', NULL, '2023-09-25 14:03:01'),
(490, 1, '::1', 'title', '/modulGenerator/cpanel/struktur', NULL, '2023-09-25 14:03:09'),
(491, 1, '::1', 'Visi Misi', '/modulGenerator/cpanel/visi_misi', NULL, '2023-09-25 14:03:11'),
(492, 1, '::1', 'title', '/modulGenerator/cpanel/struktur', NULL, '2023-09-25 14:03:12'),
(493, 1, '::1', 'M crud Generator', '/modulGenerator/cpanel/m_crud_generator', NULL, '2023-09-25 14:03:16'),
(494, 1, '::1', 'Setting', '/modulGenerator/cpanel/setting', NULL, '2023-09-25 14:03:22'),
(495, 1, '::1', 'Main Menu', '/modulGenerator/cpanel/main_menu', NULL, '2023-09-25 14:03:24'),
(496, 1, '::1', 'Main Menu', '/modulGenerator/cpanel/main_menu/update/caf62b3290161084b0b094cdef6805f925382ef2ed92b3ff00bec9de1cf0ca4febbf0aeda0b0d32c40855bea5c6995bf84a0d389dc97a0997918a65d418ffa2crjEGfS_JLTjKuctdUh8Q9cwblNcj3AYg9liTKWk~2hI-', NULL, '2023-09-25 14:03:28'),
(497, 1, '::1', 'title', '/modulGenerator/cpanel/struktur', NULL, '2023-09-25 14:03:31'),
(498, 1, '::1', 'M crud Generator', '/modulGenerator/cpanel/m_crud_generator', NULL, '2023-09-25 14:03:34'),
(499, 1, '::1', 'Struktur Organisasi', '/modulGenerator/cpanel/Struktur_organisasi', NULL, '2023-09-25 14:03:37'),
(500, 1, '::1', 'Main Menu', '/modulGenerator/cpanel/main_menu', NULL, '2023-09-25 14:03:44'),
(501, 1, '::1', 'M crud Generator', '/modulGenerator/cpanel/m_crud_generator', NULL, '2023-09-25 14:03:47'),
(502, 1, '::1', 'Main Menu', '/modulGenerator/cpanel/main_menu', NULL, '2023-09-25 14:03:56'),
(503, 1, '::1', 'Main Menu', '/modulGenerator/cpanel/main_menu/update/cf6a113e9bef4b7b19f8a26e5bf745cd2172cc344f1d8634e40be4fef0ee6fabfc5c95cae0a33889c536e287451a4ec654589ef0d80bc955ca144e2e5a2a18a9F_07ucZweGcXuSH6fQlvkNRw8UC7jKx~bqz3GaOQiIM-', NULL, '2023-09-25 14:03:58'),
(504, 1, '::1', 'Main Menu', '/modulGenerator/cpanel/main_menu/update_action/cf6a113e9bef4b7b19f8a26e5bf745cd2172cc344f1d8634e40be4fef0ee6fabfc5c95cae0a33889c536e287451a4ec654589ef0d80bc955ca144e2e5a2a18a9F_07ucZweGcXuSH6fQlvkNRw8UC7jKx~bqz3GaOQiIM-', '{\"menu\":\"struktur organisai\",\"icon\":\"\",\"type\":\"controller\",\"controller\":\"struktur_organisasi\",\"data_target\":\"\",\"is_parent\":\"57\",\"is_active\":\"1\",\"submit\":\"update\"}', '2023-09-25 14:04:08'),
(505, 1, '::1', 'Main Menu', '/modulGenerator/cpanel/main_menu', NULL, '2023-09-25 14:04:08'),
(506, 1, '::1', 'Struktur Organisasi', '/modulGenerator/cpanel/struktur_organisasi', NULL, '2023-09-25 14:04:12'),
(507, 1, '::1', 'title', '/modulGenerator/cpanel/dashboard', NULL, '2023-09-25 16:05:20'),
(508, 1, '::1', 'Struktur Organisasi', '/modulGenerator/cpanel/struktur_organisasi', NULL, '2023-09-25 16:05:27'),
(509, 1, '::1', 'M crud Generator', '/modulGenerator/cpanel/m_crud_generator', NULL, '2023-09-25 16:06:27'),
(510, 1, '::1', 'Main Menu', '/modulGenerator/cpanel/main_menu', NULL, '2023-09-25 16:06:37'),
(511, 1, '::1', 'Main Menu', '/modulGenerator/cpanel/main_menu/update/97d05ed058024db7348bb312c85b20664f67bc5c81e0c4c8de7694a5e4c2822f27825bed4f16778721f8e3a2be5dcc34c395204d3c42b950032b19b83a7908bbINHdf7lQ3cc~5339Vgn25ls3Xoh2CxOm5YCEk26_iHs-', NULL, '2023-09-25 16:06:40'),
(512, 1, '::1', 'Main Menu', '/modulGenerator/cpanel/main_menu/update_action/97d05ed058024db7348bb312c85b20664f67bc5c81e0c4c8de7694a5e4c2822f27825bed4f16778721f8e3a2be5dcc34c395204d3c42b950032b19b83a7908bbINHdf7lQ3cc~5339Vgn25ls3Xoh2CxOm5YCEk26_iHs-', '{\"menu\":\"struktur organisasi\",\"icon\":\"\",\"type\":\"controller\",\"controller\":\"struktur_organisasi\",\"data_target\":\"\",\"is_parent\":\"57\",\"is_active\":\"1\",\"submit\":\"update\"}', '2023-09-25 16:06:45'),
(513, 1, '::1', 'Main Menu', '/modulGenerator/cpanel/main_menu', NULL, '2023-09-25 16:06:45'),
(514, 1, '::1', 'Struktur Organisasi', '/modulGenerator/cpanel/struktur_organisasi', NULL, '2023-09-25 16:06:50'),
(515, 1, '::1', 'M crud Generator', '/modulGenerator/cpanel/m_crud_generator', NULL, '2023-09-25 16:08:07'),
(516, 1, '::1', 'title', '/BEM/cpanel/dashboard', NULL, '2023-09-25 19:30:43'),
(517, 1, '::1', 'Main Menu', '/BEM/cpanel/main_menu', NULL, '2023-09-25 19:40:20'),
(518, 1, '::1', 'Main Menu', '/BEM/cpanel/main_menu/add', NULL, '2023-09-25 19:40:22'),
(519, 1, '::1', 'Main Menu', '/BEM/cpanel/main_menu/add_action', '{\"menu\":\"Home\",\"icon\":\"\",\"type\":\"controller\",\"controller\":\"home\",\"data_target\":\"\",\"is_parent\":\"0\",\"is_active\":\"1\",\"submit\":\"save\"}', '2023-09-25 19:40:45'),
(520, 1, '::1', 'Main Menu', '/BEM/cpanel/main_menu', NULL, '2023-09-25 19:40:45'),
(521, 1, '::1', 'M crud Generator', '/BEM/cpanel/m_crud_generator', NULL, '2023-09-25 19:40:48'),
(522, 1, '::1', 'title', '/BEM/mcrud', NULL, '2023-09-25 19:40:51'),
(523, 1, '::1', 'title', '/BEM//mcrud/getTable/home', NULL, '2023-09-25 19:40:54'),
(524, 1, '::1', 'M crud Generator', '/BEM/cpanel/m_crud_generator', NULL, '2023-09-25 19:41:12'),
(525, 1, '::1', 'Main Menu', '/BEM/cpanel/main_menu', NULL, '2023-09-25 19:41:21'),
(526, 1, '::1', 'Main Menu', '/BEM/cpanel/main_menu/add', NULL, '2023-09-25 19:41:24'),
(527, 1, '::1', 'M crud Generator', '/BEM/cpanel/m_crud_generator', NULL, '2023-09-25 19:41:29'),
(528, 1, '::1', 'M crud Generator', '/BEM/cpanel/m_crud_generator', NULL, '2023-09-25 19:43:17'),
(529, 1, '::1', 'title', '/BEM/mcrud', NULL, '2023-09-25 19:43:19'),
(530, 1, '::1', 'M crud Generator', '/BEM/cpanel/m_crud_generator', NULL, '2023-09-25 19:43:28'),
(531, 1, '::1', 'Main Menu', '/BEM/cpanel/main_menu', NULL, '2023-09-25 19:43:31'),
(532, 1, '::1', 'Main Menu', '/BEM/cpanel/main_menu/delete/996c96def90131ed336ba6bbb1645a6ac687b231864d7215c7a7643dd13fa22f7326478c1481785172b91e53ca9afb475bd794a200644110e75144ea56f549ecifdpQhS2t_UMGipQoYuARq5r7GuVDjgHP1GAOxi~bxA-', NULL, '2023-09-25 19:43:39'),
(533, 1, '::1', 'Main Menu', '/BEM/cpanel/main_menu', NULL, '2023-09-25 19:43:40'),
(534, 1, '::1', 'Main Menu', '/BEM/cpanel/main_menu/add', NULL, '2023-09-25 19:43:43'),
(535, 1, '::1', 'Main Menu', '/BEM/cpanel/main_menu/add_action', '{\"menu\":\"Home\",\"icon\":\"\",\"type\":\"controller\",\"controller\":\"home\",\"data_target\":\"\",\"is_parent\":\"57\",\"is_active\":\"1\",\"submit\":\"save\"}', '2023-09-25 19:43:58'),
(536, 1, '::1', 'Main Menu', '/BEM/cpanel/main_menu', NULL, '2023-09-25 19:43:58'),
(537, 1, '::1', 'M crud Generator', '/BEM/cpanel/m_crud_generator', NULL, '2023-09-25 19:44:01'),
(538, 1, '::1', 'title', '/BEM/mcrud', NULL, '2023-09-25 19:44:03'),
(539, 1, '::1', 'title', '/BEM/mcrud', NULL, '2023-09-25 19:44:52'),
(540, 1, '::1', 'title', '/BEM//mcrud/getTable/home', NULL, '2023-09-25 19:44:54'),
(541, 1, '::1', 'title', '/BEM/mcrud', NULL, '2023-09-25 19:45:32'),
(542, 1, '::1', 'title', '/BEM//mcrud/getTable/home', NULL, '2023-09-25 19:45:34'),
(543, 1, '::1', 'title', '/BEM/mcrud/action', '{\"table\":\"home\",\"title\":\"Home\",\"controllers\":\"Home\",\"primary_key\":\"id\",\"mcrud\":{\"1\":{\"id\":{\"field_name\":\"id\",\"sort\":\"1\",\"field_label\":\"Id\",\"form_type\":\"number\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"2\":{\"judul\":{\"field_name\":\"judul\",\"sort\":\"2\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"show_in_filter\":\"true\",\"field_label\":\"Judul\",\"form_type\":\"textarea\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"3\":{\"subjudul\":{\"field_name\":\"subjudul\",\"sort\":\"3\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"show_in_filter\":\"true\",\"field_label\":\"Subjudul\",\"form_type\":\"textarea\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}}}}', '2023-09-25 19:45:41'),
(544, 1, '::1', 'M crud Generator', '/BEM/cpanel/m_crud_generator', NULL, '2023-09-25 19:45:45'),
(545, 1, '::1', 'Home', '/BEM/cpanel/home', NULL, '2023-09-25 19:45:50'),
(546, 1, '::1', 'Main Menu', '/BEM/cpanel/main_menu', NULL, '2023-09-25 19:46:14'),
(547, 1, '::1', 'Main Menu', '/BEM/cpanel/main_menu/add', NULL, '2023-09-25 19:46:16'),
(548, 1, '::1', 'Main Menu', '/BEM/cpanel/main_menu/add_action', '{\"menu\":\"Tentang\",\"icon\":\"\",\"type\":\"controller\",\"controller\":\"tentang\",\"data_target\":\"\",\"is_parent\":\"57\",\"is_active\":\"1\",\"submit\":\"save\"}', '2023-09-25 19:46:40'),
(549, 1, '::1', 'Main Menu', '/BEM/cpanel/main_menu', NULL, '2023-09-25 19:46:40'),
(550, 1, '::1', 'M crud Generator', '/BEM/cpanel/m_crud_generator', NULL, '2023-09-25 19:46:46'),
(551, 1, '::1', 'title', '/BEM/mcrud', NULL, '2023-09-25 19:47:30'),
(552, 1, '::1', 'title', '/BEM//mcrud/getTable/tentang', NULL, '2023-09-25 19:47:33'),
(553, 1, '::1', 'title', '/BEM/mcrud/action', '{\"table\":\"tentang\",\"title\":\"Tentang\",\"controllers\":\"Tentang\",\"primary_key\":\"id\",\"mcrud\":{\"1\":{\"id\":{\"field_name\":\"id\",\"sort\":\"1\",\"field_label\":\"Id\",\"form_type\":\"number\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"2\":{\"judul\":{\"field_name\":\"judul\",\"sort\":\"2\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"show_in_filter\":\"true\",\"field_label\":\"Judul\",\"form_type\":\"textarea\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"3\":{\"isi\":{\"field_name\":\"isi\",\"sort\":\"3\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"show_in_filter\":\"true\",\"field_label\":\"Isi\",\"form_type\":\"textarea\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}}}}', '2023-09-25 19:47:40'),
(554, 1, '::1', 'M crud Generator', '/BEM/cpanel/m_crud_generator', NULL, '2023-09-25 19:47:43'),
(555, 1, '::1', 'Main Menu', '/BEM/cpanel/main_menu', NULL, '2023-09-25 19:50:39'),
(556, 1, '::1', 'Main Menu', '/BEM/cpanel/main_menu/add', NULL, '2023-09-25 19:50:51'),
(557, 1, '::1', 'Main Menu', '/BEM/cpanel/main_menu/add_action', '{\"menu\":\"Organisasi\",\"icon\":\"\",\"type\":\"controller\",\"controller\":\"organisasi\",\"data_target\":\"\",\"is_parent\":\"57\",\"is_active\":\"1\",\"submit\":\"save\"}', '2023-09-25 19:51:07'),
(558, 1, '::1', 'Main Menu', '/BEM/cpanel/main_menu', NULL, '2023-09-25 19:51:07'),
(559, 1, '::1', 'M crud Generator', '/BEM/cpanel/m_crud_generator', NULL, '2023-09-25 19:51:10'),
(560, 1, '::1', 'title', '/BEM/mcrud', NULL, '2023-09-25 19:51:12'),
(561, 1, '::1', 'title', '/BEM//mcrud/getTable/organisasi', NULL, '2023-09-25 19:51:14'),
(562, 1, '::1', 'title', '/BEM/mcrud/action', '{\"table\":\"organisasi\",\"title\":\"Organisasi\",\"controllers\":\"Organisasi\",\"mcrud\":{\"1\":{\"id\":{\"field_name\":\"id\",\"sort\":\"1\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"show_in_filter\":\"true\",\"field_label\":\"Id\",\"form_type\":\"number\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"2\":{\"kategori\":{\"field_name\":\"kategori\",\"sort\":\"2\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"show_in_filter\":\"true\",\"field_label\":\"Kategori\",\"form_type\":\"select\",\"option\":{\"0\":{\"label\":\"HIMA\",\"value\":\"HIMA\"},\"1695646298243\":{\"label\":\"UKM\",\"value\":\"UKM\"}},\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"3\":{\"nama\":{\"field_name\":\"nama\",\"sort\":\"3\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"show_in_filter\":\"true\",\"field_label\":\"Nama\",\"form_type\":\"text\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"4\":{\"deskripsi\":{\"field_name\":\"deskripsi\",\"sort\":\"4\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"show_in_filter\":\"true\",\"field_label\":\"Deskripsi\",\"form_type\":\"textarea\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}}}}', '2023-09-25 19:51:56'),
(563, 1, '::1', 'M crud Generator', '/BEM/cpanel/m_crud_generator', NULL, '2023-09-25 19:51:59'),
(564, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi', NULL, '2023-09-25 19:57:57'),
(565, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi', NULL, '2023-09-25 19:58:50'),
(566, 1, '::1', 'M crud Generator', '/BEM/cpanel/m_crud_generator', NULL, '2023-09-25 20:03:45'),
(567, 1, '::1', 'M crud Generator', '/BEM/cpanel/m_crud_generator', NULL, '2023-09-25 20:04:17'),
(568, 1, '::1', 'M crud Generator', '/BEM/cpanel/m_crud_generator/delete/3d77d75f0c57578a1be70fd5ef5bcd8c1d3dc88a328d7d2c20915618a48111e7233d911fc802950eddfde2951e7bd7de61aa197780549a2f42e2dc1af8958434u5MWNK_U3zUR9t_om~HmqnYv86fQjs_oCpL8RWkIV3E-/149797908abb24ecb1cf1e88f8ee4cc7ad543d8312e101ab63333454c3e84f745f8a7e077314a74c302dbadb87a6caf6dc38d0bd729fe32f95e6d047cf10dc7ciVs3WU34fNldA7j~VKnUUR35Jt~M5kPL78C1TWAr7sg-', NULL, '2023-09-25 20:04:24'),
(569, 1, '::1', 'title', '/BEM/mcrud', NULL, '2023-09-25 20:06:28'),
(570, 1, '::1', 'title', '/BEM//mcrud/getTable/organisasi', NULL, '2023-09-25 20:06:31'),
(571, 1, '::1', 'title', '/BEM/mcrud/action', '{\"table\":\"organisasi\",\"title\":\"Organisasi\",\"controllers\":\"Organisasi\",\"primary_key\":\"id\",\"mcrud\":{\"1\":{\"id\":{\"field_name\":\"id\",\"sort\":\"1\",\"field_label\":\"Id\",\"form_type\":\"number\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"2\":{\"kategori\":{\"field_name\":\"kategori\",\"sort\":\"2\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"show_in_filter\":\"true\",\"field_label\":\"Kategori\",\"form_type\":\"select\",\"option\":{\"0\":{\"label\":\"HIMA\",\"value\":\"HIMA\"},\"1695647249499\":{\"label\":\"UKM\",\"value\":\"UKM\"}},\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"3\":{\"nama\":{\"field_name\":\"nama\",\"sort\":\"3\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"show_in_filter\":\"true\",\"field_label\":\"Nama\",\"form_type\":\"text\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"4\":{\"deskripsi\":{\"field_name\":\"deskripsi\",\"sort\":\"4\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"show_in_filter\":\"true\",\"field_label\":\"Deskripsi\",\"form_type\":\"textarea\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}}}}', '2023-09-25 20:07:39'),
(572, 1, '::1', 'M crud Generator', '/BEM/cpanel/m_crud_generator', NULL, '2023-09-25 20:07:43'),
(573, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi', NULL, '2023-09-25 20:08:21'),
(574, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi/add', NULL, '2023-09-25 20:08:23'),
(575, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi/add_action', '{\"kategori\":\"HIMA\",\"nama\":\"TES\",\"deskripsi\":\"TES\",\"submit\":\"add\"}', '2023-09-25 20:08:32'),
(576, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi', NULL, '2023-09-25 20:08:32'),
(577, 1, '::1', 'M crud Generator', '/BEM/cpanel/m_crud_generator', NULL, '2023-09-25 20:12:23'),
(578, 1, '::1', 'Main Menu', '/BEM/cpanel/main_menu', NULL, '2023-09-25 20:12:26'),
(579, 1, '::1', 'Main Menu', '/BEM/cpanel/main_menu/save', '{\"data\":\"[{\\\"id\\\":36},{\\\"id\\\":37,\\\"children\\\":[{\\\"id\\\":38},{\\\"id\\\":39},{\\\"id\\\":40}]},{\\\"id\\\":7,\\\"children\\\":[{\\\"id\\\":34},{\\\"id\\\":3},{\\\"id\\\":54}]},{\\\"id\\\":48},{\\\"id\\\":57,\\\"children\\\":[{\\\"id\\\":62},{\\\"id\\\":58},{\\\"id\\\":60},{\\\"id\\\":63},{\\\"id\\\":64}]}]\"}', '2023-09-25 20:12:30'),
(580, 1, '::1', 'Main Menu', '/BEM/cpanel/main_menu/save', '{\"data\":\"[{\\\"id\\\":36},{\\\"id\\\":37,\\\"children\\\":[{\\\"id\\\":38},{\\\"id\\\":39},{\\\"id\\\":40}]},{\\\"id\\\":7,\\\"children\\\":[{\\\"id\\\":34},{\\\"id\\\":3},{\\\"id\\\":54}]},{\\\"id\\\":48},{\\\"id\\\":57,\\\"children\\\":[{\\\"id\\\":62},{\\\"id\\\":63},{\\\"id\\\":58},{\\\"id\\\":60},{\\\"id\\\":64}]}]\"}', '2023-09-25 20:12:32'),
(581, 1, '::1', 'Main Menu', '/BEM/cpanel/main_menu/save', '{\"data\":\"[{\\\"id\\\":36},{\\\"id\\\":37,\\\"children\\\":[{\\\"id\\\":38},{\\\"id\\\":39},{\\\"id\\\":40}]},{\\\"id\\\":7,\\\"children\\\":[{\\\"id\\\":34},{\\\"id\\\":3},{\\\"id\\\":54}]},{\\\"id\\\":48},{\\\"id\\\":57,\\\"children\\\":[{\\\"id\\\":62},{\\\"id\\\":63},{\\\"id\\\":60},{\\\"id\\\":58},{\\\"id\\\":64}]}]\"}', '2023-09-25 20:12:34'),
(582, 1, '::1', 'Main Menu', '/BEM/cpanel/main_menu/save', '{\"data\":\"[{\\\"id\\\":36},{\\\"id\\\":37,\\\"children\\\":[{\\\"id\\\":38},{\\\"id\\\":39},{\\\"id\\\":40}]},{\\\"id\\\":7,\\\"children\\\":[{\\\"id\\\":34},{\\\"id\\\":3},{\\\"id\\\":54}]},{\\\"id\\\":48},{\\\"id\\\":57,\\\"children\\\":[{\\\"id\\\":62},{\\\"id\\\":63},{\\\"id\\\":58},{\\\"id\\\":60},{\\\"id\\\":64}]}]\"}', '2023-09-25 20:12:36'),
(583, 1, '::1', 'Main Menu', '/BEM/cpanel/main_menu', NULL, '2023-09-25 20:12:40'),
(584, 1, '::1', 'Main Menu', '/BEM/cpanel/main_menu/add', NULL, '2023-09-25 20:16:27'),
(585, 1, '::1', 'Main Menu', '/BEM/cpanel/main_menu/add_action', '{\"menu\":\"Kementerian\",\"icon\":\"\",\"type\":\"controller\",\"controller\":\"kementerian\",\"data_target\":\"\",\"is_parent\":\"57\",\"is_active\":\"1\",\"submit\":\"save\"}', '2023-09-25 20:16:58'),
(586, 1, '::1', 'Main Menu', '/BEM/cpanel/main_menu', NULL, '2023-09-25 20:16:58'),
(587, 1, '::1', 'M crud Generator', '/BEM/cpanel/m_crud_generator', NULL, '2023-09-25 20:17:36'),
(588, 1, '::1', 'title', '/BEM/mcrud', NULL, '2023-09-25 20:17:39'),
(589, 1, '::1', 'title', '/BEM//mcrud/getTable/kementerian', NULL, '2023-09-25 20:17:41'),
(590, 1, '::1', 'title', '/BEM/mcrud/action', '{\"table\":\"kementerian\",\"title\":\"Kementerian\",\"controllers\":\"Kementerian\",\"primary_key\":\"id\",\"mcrud\":{\"1\":{\"id\":{\"field_name\":\"id\",\"sort\":\"1\",\"field_label\":\"Id\",\"form_type\":\"number\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"2\":{\"nama\":{\"field_name\":\"nama\",\"sort\":\"2\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"show_in_filter\":\"true\",\"field_label\":\"Nama\",\"form_type\":\"text\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"3\":{\"deskripsi\":{\"field_name\":\"deskripsi\",\"sort\":\"3\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"show_in_filter\":\"true\",\"field_label\":\"Deskripsi\",\"form_type\":\"textarea\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}}}}', '2023-09-25 20:17:49'),
(591, 1, '::1', 'M crud Generator', '/BEM/cpanel/m_crud_generator', NULL, '2023-09-25 20:17:52'),
(592, 1, '::1', 'Setting', '/BEM/cpanel/setting', NULL, '2023-09-25 20:18:00'),
(593, 1, '::1', 'User', '/BEM/cpanel/user', NULL, '2023-09-25 20:18:06'),
(594, 1, '::1', 'Group', '/BEM/cpanel/group', NULL, '2023-09-25 20:18:11'),
(595, 1, '::1', 'Group', '/BEM/cpanel/group/access_control/1c029a8fd7e785208cf5e511543188c7e400af3d95746381ded773df71c11380e125c951a8da51f8fae50a381a18d0f0d720e21202d943d0385aa8bb77be60fdjxQ05eRHcxvOFjbGR7We~ydQYsgiTIK3X2XOh9OKeT4-', NULL, '2023-09-25 20:18:14'),
(596, 1, '::1', 'Group', '/BEM/cpanel/group/save_acces_control/1c029a8fd7e785208cf5e511543188c7e400af3d95746381ded773df71c11380e125c951a8da51f8fae50a381a18d0f0d720e21202d943d0385aa8bb77be60fdjxQ05eRHcxvOFjbGR7We~ydQYsgiTIK3X2XOh9OKeT4-', '{\"id\":[\"47\",\"48\",\"49\",\"50\",\"51\",\"55\",\"87\",\"88\",\"100\",\"101\",\"103\",\"104\",\"106\",\"107\",\"108\",\"109\",\"110\",\"112\",\"113\",\"114\",\"115\",\"116\",\"118\",\"119\",\"120\",\"121\",\"122\",\"129\",\"130\",\"131\",\"132\",\"133\",\"135\",\"136\",\"137\",\"138\",\"139\"],\"submit\":\"\"}', '2023-09-25 20:18:57'),
(597, 1, '::1', 'Group', '/BEM/cpanel/group', NULL, '2023-09-25 20:18:58');

-- --------------------------------------------------------

--
-- Struktur dari tabel `filemanager`
--

CREATE TABLE `filemanager` (
  `id` int(11) NOT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `ket` text DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `update` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `filemanager`
--

INSERT INTO `filemanager` (`id`, `file_name`, `ket`, `created`, `update`) VALUES
(4, '290622152611_Picture1.png', 'Di upload melalui module User', '2022-06-29 15:26:00', NULL),
(6, '300622015940_Picture1.png', 'Di upload melalui module User', '2022-06-30 01:59:00', NULL),
(7, '250923140301_download_(1).png', 'Di upload melalui module Struktur Organisasi', '2023-09-25 14:03:00', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `home`
--

CREATE TABLE `home` (
  `id` int(11) NOT NULL,
  `judul` text NOT NULL,
  `subjudul` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kementerian`
--

CREATE TABLE `kementerian` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `main_menu`
--

CREATE TABLE `main_menu` (
  `id_menu` int(11) NOT NULL,
  `is_parent` int(11) DEFAULT NULL,
  `menu` varchar(100) DEFAULT NULL,
  `slug` varchar(100) DEFAULT NULL,
  `type` enum('controller','url') DEFAULT NULL,
  `controller` varchar(255) DEFAULT NULL,
  `target` varchar(20) DEFAULT NULL,
  `icon` varchar(50) DEFAULT NULL,
  `is_active` enum('0','1') DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `main_menu`
--

INSERT INTO `main_menu` (`id_menu`, `is_parent`, `menu`, `slug`, `type`, `controller`, `target`, `icon`, `is_active`, `sort`, `created`, `modified`) VALUES
(3, 7, 'management menu', 'management-menu', 'controller', 'main_menu', '', '', '1', 8, '2020-02-15 06:48:31', '2020-11-02 13:33:26'),
(7, 0, 'configuration', 'configuration', 'controller', '', '', 'fa fa-cogs', '1', 6, '2020-02-26 06:42:29', '2020-11-23 05:20:01'),
(34, 7, 'settings', 'settings', 'controller', 'setting', '', '', '1', 7, '2020-10-19 00:25:57', '2020-11-23 05:20:11'),
(36, 0, 'dashboard', 'dashboard', 'controller', 'dashboard', '', 'mdi mdi-laptop', '1', 1, '2020-10-27 08:18:55', '2020-11-09 23:07:13'),
(37, 0, 'auth', 'auth', NULL, '', NULL, 'mdi mdi-account-settings-variant', '1', 2, '2020-10-27 08:45:17', NULL),
(38, 37, 'user', 'user', 'controller', 'user', NULL, 'mdi mdi-account-star', '1', 3, '2020-10-27 08:46:10', '2020-10-27 09:38:05'),
(39, 37, 'groups', 'groups', 'controller', 'group', NULL, '', '1', 4, '2020-10-27 08:48:28', '2020-10-27 20:24:12'),
(40, 37, 'permission', 'permission', 'controller', 'permission', NULL, '', '1', 5, '2020-10-27 08:49:49', '2020-10-29 22:47:10'),
(48, 0, 'm-crud generator', 'm-crud-generator', 'controller', 'm_crud_generator', '', 'mdi mdi-xml', '1', 10, '2020-11-01 12:23:11', '2020-11-22 00:06:35'),
(54, 7, 'file manager', 'file-manager', 'controller', 'filemanager', '', 'mdi mdi-folder-multiple-image', '1', 9, '2020-11-08 00:44:38', NULL),
(57, 0, 'management website', 'management-website', 'controller', 'website', '', 'fa fa-window-maximize', '1', 11, '2023-09-25 12:46:14', NULL),
(58, 57, 'visi misi', 'visi-misi', 'controller', 'visi_misi', '', '', '1', 14, '2023-09-25 12:46:53', NULL),
(60, 57, 'struktur organisasi', 'struktur-organisasi', 'controller', 'struktur_organisasi', '', '', '1', 15, '2023-09-25 13:59:05', '2023-09-25 16:06:45'),
(62, 57, 'home', 'home', 'controller', 'home', '', '', '1', 12, '2023-09-25 19:43:58', NULL),
(63, 57, 'tentang', 'tentang', 'controller', 'tentang', '', '', '1', 13, '2023-09-25 19:46:40', NULL),
(64, 57, 'organisasi', 'organisasi', 'controller', 'organisasi', '', '', '1', 16, '2023-09-25 19:51:07', NULL),
(65, 57, 'kementerian', 'kementerian', 'controller', 'kementerian', '', '', '1', 0, '2023-09-25 20:16:58', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `version` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`version`) VALUES
(1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `modules_crud_generator`
--

CREATE TABLE `modules_crud_generator` (
  `id` int(11) NOT NULL,
  `module` varchar(255) DEFAULT NULL,
  `module_name` varchar(255) DEFAULT NULL,
  `table` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `modules_crud_generator`
--

INSERT INTO `modules_crud_generator` (`id`, `module`, `module_name`, `table`, `created_at`) VALUES
(1, 'Mahasiswa', 'Mahasiswa', 'mahasiswa', '2022-06-28 10:40:00'),
(2, 'Kelas', 'Kelas', 'kelas', '2022-06-28 11:02:00'),
(5, 'Visi_misi', 'Visi Misi', 'visi_misi', '2023-09-25 13:54:00'),
(6, 'Struktur_organisasi', 'Struktur Organisasi', 'struktur_organisasi', '2023-09-25 14:00:00'),
(7, 'Home', 'Home', 'home', '2023-09-25 19:45:00'),
(8, 'Tentang', 'Tentang', 'tentang', '2023-09-25 19:47:00'),
(10, 'Organisasi', 'Organisasi', 'organisasi', '2023-09-25 20:07:00'),
(11, 'Kementerian', 'Kementerian', 'kementerian', '2023-09-25 20:17:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `organisasi`
--

CREATE TABLE `organisasi` (
  `id` int(11) NOT NULL,
  `kategori` enum('HIMA','UKM') NOT NULL,
  `nama` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `organisasi`
--

INSERT INTO `organisasi` (`id`, `kategori`, `nama`, `deskripsi`) VALUES
(1, 'HIMA', 'TES', 'TES');

-- --------------------------------------------------------

--
-- Struktur dari tabel `setting`
--

CREATE TABLE `setting` (
  `id_setting` int(11) NOT NULL,
  `group` varchar(50) NOT NULL,
  `options` varchar(100) NOT NULL,
  `value` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `setting`
--

INSERT INTO `setting` (`id_setting`, `group`, `options`, `value`) VALUES
(1, 'general', 'web_name', 'Testing Ges'),
(2, 'general', 'web_domain', 'http://localhost/belajar/build/'),
(3, 'general', 'web_owner', 'royyan'),
(4, 'general', 'email', 'admin@admin.com'),
(5, 'general', 'telepon', '085288888888'),
(6, 'general', 'address', '-'),
(7, 'general', 'logo', 'http://localhost/belajar/build/_temp/uploads/img/300622015525_GENERATOR_remove.png'),
(8, 'general', 'logo_mini', ' 300622015525_GENERATOR_remove.png'),
(9, 'general', 'favicon', '231120051803_favicon.ico'),
(50, 'sosmed', 'facebook', '#'),
(51, 'general', 'instagram', '#'),
(52, 'sosmed', 'youtube', '#'),
(53, 'sosmed', 'twitter', '#'),
(60, 'config', 'maintenance_status', 'N'),
(61, 'config', 'user_log_status', 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `struktur_organisasi`
--

CREATE TABLE `struktur_organisasi` (
  `id` int(11) NOT NULL,
  `path` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `struktur_organisasi`
--

INSERT INTO `struktur_organisasi` (`id`, `path`) VALUES
(1, '250923140301_download_(1).png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tentang`
--

CREATE TABLE `tentang` (
  `id` int(11) NOT NULL,
  `judul` text NOT NULL,
  `isi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `visi_misi`
--

CREATE TABLE `visi_misi` (
  `id` int(11) NOT NULL,
  `visi` text NOT NULL,
  `misi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `visi_misi`
--

INSERT INTO `visi_misi` (`id`, `visi`, `misi`) VALUES
(1, '1. Halo', '1. Halo lagi');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indeks untuk tabel `ci_user_log`
--
ALTER TABLE `ci_user_log`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `filemanager`
--
ALTER TABLE `filemanager`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `home`
--
ALTER TABLE `home`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kementerian`
--
ALTER TABLE `kementerian`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `main_menu`
--
ALTER TABLE `main_menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indeks untuk tabel `modules_crud_generator`
--
ALTER TABLE `modules_crud_generator`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `organisasi`
--
ALTER TABLE `organisasi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id_setting`);

--
-- Indeks untuk tabel `struktur_organisasi`
--
ALTER TABLE `struktur_organisasi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tentang`
--
ALTER TABLE `tentang`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `visi_misi`
--
ALTER TABLE `visi_misi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT untuk tabel `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `ci_user_log`
--
ALTER TABLE `ci_user_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=598;

--
-- AUTO_INCREMENT untuk tabel `filemanager`
--
ALTER TABLE `filemanager`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `home`
--
ALTER TABLE `home`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kementerian`
--
ALTER TABLE `kementerian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `main_menu`
--
ALTER TABLE `main_menu`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT untuk tabel `modules_crud_generator`
--
ALTER TABLE `modules_crud_generator`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `organisasi`
--
ALTER TABLE `organisasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `struktur_organisasi`
--
ALTER TABLE `struktur_organisasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tentang`
--
ALTER TABLE `tentang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `visi_misi`
--
ALTER TABLE `visi_misi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
