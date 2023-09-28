-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 28 Sep 2023 pada 10.23
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
(117, 'sidebar_view_tentang', 'Module sidebar'),
(118, 'tentang_list', 'Module tentang'),
(119, 'tentang_detail', 'Module tentang'),
(120, 'tentang_add', 'Module tentang'),
(121, 'tentang_update', 'Module tentang'),
(122, 'tentang_delete', 'Module tentang'),
(123, 'sidebar_view_organisasi', 'Module sidebar'),
(134, 'sidebar_view_kementerian', 'Module sidebar'),
(135, 'kementerian_list', 'Module kementerian'),
(136, 'kementerian_detail', 'Module kementerian'),
(137, 'kementerian_add', 'Module kementerian'),
(138, 'kementerian_update', 'Module kementerian'),
(139, 'kementerian_delete', 'Module kementerian'),
(145, 'home_list', 'Module home'),
(146, 'home_detail', 'Module home'),
(147, 'home_add', 'Module home'),
(148, 'home_update', 'Module home'),
(149, 'home_delete', 'Module home'),
(150, 'sidebar_view_general_setting', 'Module sidebar'),
(151, 'sidebar_view_sosial_media', 'Module sidebar'),
(162, 'general_setting_list', 'Module general_setting'),
(163, 'general_setting_detail', 'Module general_setting'),
(164, 'general_setting_add', 'Module general_setting'),
(165, 'general_setting_update', 'Module general_setting'),
(166, 'general_setting_delete', 'Module general_setting'),
(177, 'sosial_media_list', 'Module sosial_media'),
(178, 'sosial_media_detail', 'Module sosial_media'),
(179, 'sosial_media_add', 'Module sosial_media'),
(180, 'sosial_media_update', 'Module sosial_media'),
(181, 'sosial_media_delete', 'Module sosial_media'),
(187, 'organisasi_list', 'Module organisasi'),
(188, 'organisasi_detail', 'Module organisasi'),
(189, 'organisasi_add', 'Module organisasi'),
(190, 'organisasi_update', 'Module organisasi'),
(191, 'organisasi_delete', 'Module organisasi');

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
(109, 3),
(110, 3),
(118, 3),
(119, 3),
(121, 3),
(122, 3),
(135, 3),
(136, 3),
(137, 3),
(138, 3),
(139, 3),
(145, 3),
(146, 3),
(148, 3),
(149, 3),
(162, 3),
(163, 3),
(165, 3),
(166, 3),
(177, 3),
(178, 3),
(179, 3),
(180, 3),
(181, 3),
(182, 3),
(183, 3),
(184, 3),
(185, 3),
(186, 3);

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
(1, 'Administrator', '300622015940_Picture1.png', 'admin@admin.com', '$2y$10$j6T3cDmcbgpTFWSpZ9UA4usdNecAtwv5e/nAPrsQRanPMPGjJxYum', '4cd8233f57ea815079bd12c551e4aa11', '2023-09-28 07:50:00', '::1', '1', '2022-06-28 10:31:00', '2022-06-30 01:59:40', '0'),
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
(597, 1, '::1', 'Group', '/BEM/cpanel/group', NULL, '2023-09-25 20:18:58'),
(598, 1, '::1', 'Group', '/BEM/cpanel/group', NULL, '2023-09-25 20:28:04'),
(599, 1, '::1', 'Home', '/BEM/cpanel/home', NULL, '2023-09-25 20:28:08'),
(600, 1, '::1', 'Home', '/BEM/cpanel/home/add', NULL, '2023-09-25 20:28:12'),
(601, 1, '::1', 'Home', '/BEM/cpanel/home', NULL, '2023-09-25 20:31:46'),
(602, 1, '::1', 'M crud Generator', '/BEM/cpanel/m_crud_generator', NULL, '2023-09-25 20:32:39'),
(603, 1, '::1', 'Home', '/BEM/cpanel/Home', NULL, '2023-09-25 20:32:43'),
(604, 1, '::1', 'M crud Generator', '/BEM/cpanel/m_crud_generator/delete/4c0551deaf0403e922870c24da8778b05110d98704532876bc4b86419145c4d45ec02d74a5ef56b0ea21754922c6fba96ef1b1b0bb8922d60f57fb886c72323fx12Om0cSBPrcwfiTYv8B5zPWJQKpjmx1qwscRDf8b80-/f3977130c05d4c31ded8e6a7553b1917e7853d8d18958e5a84ddc4be49c8814c3786c302dbbd40f11e7bdf81790c1c62edbe809bcc8d8a20f20eced1878d9b1alMDV6uX9KCssM7QeUIu6w1Cnv1InMtqk8r7F6O50aUs-', NULL, '2023-09-25 20:32:51'),
(605, 1, '::1', 'title', '/BEM/mcrud', NULL, '2023-09-25 20:32:53'),
(606, 1, '::1', 'title', '/BEM//mcrud/getTable/home', NULL, '2023-09-25 20:32:55'),
(607, 1, '::1', 'title', '/BEM/mcrud/action', '{\"table\":\"home\",\"title\":\"Home\",\"controllers\":\"Home\",\"primary_key\":\"id\",\"mcrud\":{\"1\":{\"id\":{\"field_name\":\"id\",\"sort\":\"1\",\"field_label\":\"Id\",\"form_type\":\"number\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"2\":{\"judul\":{\"field_name\":\"judul\",\"sort\":\"2\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"show_in_filter\":\"true\",\"field_label\":\"Judul\",\"form_type\":\"textarea\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"3\":{\"subjudul\":{\"field_name\":\"subjudul\",\"sort\":\"3\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"show_in_filter\":\"true\",\"field_label\":\"Subjudul\",\"form_type\":\"textarea\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"4\":{\"logo\":{\"field_name\":\"logo\",\"sort\":\"4\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"show_in_filter\":\"true\",\"field_label\":\"Logo\",\"form_type\":\"upload_image\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}}}}', '2023-09-25 20:33:06'),
(608, 1, '::1', 'M crud Generator', '/BEM/cpanel/m_crud_generator', NULL, '2023-09-25 20:33:10'),
(609, 1, '::1', 'Main Menu', '/BEM/cpanel/main_menu', NULL, '2023-09-25 20:33:20'),
(610, 1, '::1', 'Main Menu', '/BEM/cpanel/main_menu/save', '{\"data\":\"[{\\\"id\\\":36},{\\\"id\\\":37,\\\"children\\\":[{\\\"id\\\":38},{\\\"id\\\":39},{\\\"id\\\":40}]},{\\\"id\\\":7,\\\"children\\\":[{\\\"id\\\":34},{\\\"id\\\":3},{\\\"id\\\":54}]},{\\\"id\\\":48},{\\\"id\\\":57,\\\"children\\\":[{\\\"id\\\":62},{\\\"id\\\":63},{\\\"id\\\":58},{\\\"id\\\":60},{\\\"id\\\":65},{\\\"id\\\":64}]}]\"}', '2023-09-25 20:33:24');
INSERT INTO `ci_user_log` (`id`, `user`, `ip_address`, `controller`, `url`, `data`, `created_at`) VALUES
(611, 1, '::1', 'Main Menu', '/BEM/cpanel/main_menu', NULL, '2023-09-25 20:33:30'),
(612, 1, '::1', 'Home', '/BEM/cpanel/home', NULL, '2023-09-25 20:33:33'),
(613, 1, '::1', 'Home', '/BEM/cpanel/home/add', NULL, '2023-09-25 20:33:34'),
(614, 1, '::1', 'M crud Generator', '/BEM/cpanel/m_crud_generator', NULL, '2023-09-25 20:49:56'),
(615, 1, '::1', 'M crud Generator', '/BEM/cpanel/m_crud_generator/delete/3af896c0e1dd96495e8ef1cb00ccbca07596fc4e39eb8c3ab8976882d21af125fadf9c03102ad8a281004936e3bc6d9382c1bb79d5de128c9befdb4c8fb143a4x43kGRoXse6wDMILD6Id_rQHWi9YkqlKhSAhq14a18A-/9ba49c74755d8f0670453de9da5adfb76eabac14ef70893ceb23cf04c293ade711354b54735206556f0d8f3d33ed556bf7bcab0c0690ee55856bf371e40da39a1fKle6PR0TNZC5XSio~Y0yzeRo5LpWFqlgqU8edA0Z4-', NULL, '2023-09-25 20:50:01'),
(616, 1, '::1', 'title', '/BEM/mcrud', NULL, '2023-09-25 20:50:03'),
(617, 1, '::1', 'title', '/BEM//mcrud/getTable/home', NULL, '2023-09-25 20:50:06'),
(618, 1, '::1', 'title', '/BEM/mcrud/action', '{\"table\":\"home\",\"title\":\"Home\",\"controllers\":\"Home\",\"primary_key\":\"id\",\"mcrud\":{\"1\":{\"id\":{\"field_name\":\"id\",\"sort\":\"1\",\"field_label\":\"Id\",\"form_type\":\"number\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"2\":{\"judul\":{\"field_name\":\"judul\",\"sort\":\"2\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"show_in_filter\":\"true\",\"field_label\":\"Judul\",\"form_type\":\"textarea\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"3\":{\"subjudul\":{\"field_name\":\"subjudul\",\"sort\":\"3\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"show_in_filter\":\"true\",\"field_label\":\"Subjudul\",\"form_type\":\"textarea\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"4\":{\"image\":{\"field_name\":\"image\",\"sort\":\"4\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"show_in_filter\":\"true\",\"field_label\":\"Image\",\"form_type\":\"upload_image\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}}}}', '2023-09-25 20:50:19'),
(619, 1, '::1', 'M crud Generator', '/BEM/cpanel/m_crud_generator', NULL, '2023-09-25 20:50:22'),
(620, 1, '::1', 'Main Menu', '/BEM/cpanel/main_menu', NULL, '2023-09-25 20:57:01'),
(621, 1, '::1', 'Main Menu', '/BEM/cpanel/main_menu/add', NULL, '2023-09-25 20:57:03'),
(622, 1, '::1', 'Main Menu', '/BEM/cpanel/main_menu/add_action', '{\"menu\":\"General Setting\",\"icon\":\"\",\"type\":\"controller\",\"controller\":\"general_setting\",\"data_target\":\"\",\"is_parent\":\"57\",\"is_active\":\"1\",\"submit\":\"save\"}', '2023-09-25 20:57:24'),
(623, 1, '::1', 'Main Menu', '/BEM/cpanel/main_menu', NULL, '2023-09-25 20:57:24'),
(624, 1, '::1', 'Main Menu', '/BEM/cpanel/main_menu/save', '{\"data\":\"[{\\\"id\\\":36},{\\\"id\\\":37,\\\"children\\\":[{\\\"id\\\":38},{\\\"id\\\":39},{\\\"id\\\":40}]},{\\\"id\\\":7,\\\"children\\\":[{\\\"id\\\":34},{\\\"id\\\":3},{\\\"id\\\":54}]},{\\\"id\\\":48},{\\\"id\\\":57,\\\"children\\\":[{\\\"id\\\":62},{\\\"id\\\":63},{\\\"id\\\":58},{\\\"id\\\":60},{\\\"id\\\":65},{\\\"id\\\":64},{\\\"id\\\":66}]}]\"}', '2023-09-25 20:57:29'),
(625, 1, '::1', 'Main Menu', '/BEM/cpanel/main_menu/add', NULL, '2023-09-25 20:57:33'),
(626, 1, '::1', 'Main Menu', '/BEM/cpanel/main_menu/add_action', '{\"menu\":\"Sosial Media\",\"icon\":\"\",\"type\":\"controller\",\"controller\":\"sosmed\",\"data_target\":\"\",\"is_parent\":\"57\",\"is_active\":\"1\",\"submit\":\"save\"}', '2023-09-25 20:57:54'),
(627, 1, '::1', 'Main Menu', '/BEM/cpanel/main_menu', NULL, '2023-09-25 20:57:54'),
(628, 1, '::1', 'M crud Generator', '/BEM/cpanel/m_crud_generator', NULL, '2023-09-25 20:57:57'),
(629, 1, '::1', 'title', '/BEM/mcrud', NULL, '2023-09-25 20:57:58'),
(630, 1, '::1', 'title', '/BEM//mcrud/getTable/sosmed', NULL, '2023-09-25 20:58:01'),
(631, 1, '::1', 'title', '/BEM/mcrud/action', '{\"table\":\"sosmed\",\"title\":\"Sosmed\",\"controllers\":\"Sosmed\",\"primary_key\":\"id\",\"mcrud\":{\"1\":{\"id\":{\"field_name\":\"id\",\"sort\":\"1\",\"field_label\":\"Id\",\"form_type\":\"number\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"2\":{\"icon\":{\"field_name\":\"icon\",\"sort\":\"2\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"show_in_filter\":\"true\",\"field_label\":\"Icon\",\"form_type\":\"upload_image\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"3\":{\"nama\":{\"field_name\":\"nama\",\"sort\":\"3\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"show_in_filter\":\"true\",\"field_label\":\"Nama\",\"form_type\":\"text\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"4\":{\"link\":{\"field_name\":\"link\",\"sort\":\"4\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"show_in_filter\":\"true\",\"field_label\":\"Link\",\"form_type\":\"text\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}}}}', '2023-09-25 20:58:24'),
(632, 1, '::1', 'M crud Generator', '/BEM/cpanel/m_crud_generator', NULL, '2023-09-25 20:58:27'),
(633, 1, '::1', 'title', '/BEM/mcrud', NULL, '2023-09-25 20:58:30'),
(634, 1, '::1', 'title', '/BEM//mcrud/getTable/general_setting', NULL, '2023-09-25 20:58:32'),
(635, 1, '::1', 'title', '/BEM/mcrud/action', '{\"table\":\"general_setting\",\"title\":\"General Setting\",\"controllers\":\"General_setting\",\"primary_key\":\"id\",\"mcrud\":{\"1\":{\"id\":{\"field_name\":\"id\",\"sort\":\"1\",\"field_label\":\"Id\",\"form_type\":\"number\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"2\":{\"nama_website\":{\"field_name\":\"nama_website\",\"sort\":\"2\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"show_in_filter\":\"true\",\"field_label\":\"Nama website\",\"form_type\":\"text\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"3\":{\"logo\":{\"field_name\":\"logo\",\"sort\":\"3\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"show_in_filter\":\"true\",\"field_label\":\"Logo\",\"form_type\":\"upload_image\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"4\":{\"alamat\":{\"field_name\":\"alamat\",\"sort\":\"4\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"show_in_filter\":\"true\",\"field_label\":\"Alamat\",\"form_type\":\"textarea\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"5\":{\"telepon\":{\"field_name\":\"telepon\",\"sort\":\"5\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"show_in_filter\":\"true\",\"field_label\":\"Telepon\",\"form_type\":\"text\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"6\":{\"email\":{\"field_name\":\"email\",\"sort\":\"6\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"show_in_filter\":\"true\",\"field_label\":\"Email\",\"form_type\":\"text\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}}}}', '2023-09-25 20:58:50'),
(636, 1, '::1', 'M crud Generator', '/BEM/cpanel/m_crud_generator', NULL, '2023-09-25 20:58:53'),
(637, 1, '::1', 'M crud Generator', '/BEM/cpanel/m_crud_generator/delete/3031ad97daefa965812356cd5e025be08bb240b62190bd9ce13a904f2f029eb610af1322d88b640bc9326d0097ecef3e6b6ec2d2a54bd58280a1d07af0df38b1tvFXb58OwWZ_Xs4OX2omtLSZ7Q7KAI7r~z8NR6_X25M-/6588d52c13d0d7ecefb48545d3ef9923fc03e940950f8f1535adc901ec514e59e36881e2c6dc579247fe91e963543ade1f69cf01cdc88ce76601d99dc7659b53lXFcXo1UJtzMMmjAxeCpyDiZp9LZ9n4X1hMSY7qFEB4-', NULL, '2023-09-25 21:00:51'),
(638, 1, '::1', 'M crud Generator', '/BEM/cpanel/m_crud_generator/delete/e5c9ed05119863d7c51b3e42cca610c0b61691367906b7eafc09be14f3c2587a3f1aa2646eed0d7a14bf69c1c6a89f596e4ad75bbffc9b697716e1fdbedcf2e3AEKxhvS7eTmJCi1Ib~~yNGWtlpjAu8HZSlCRfCRn2D0-/f4cd3f65da67960ccd49820cea68bb170fbe9ff2d8ed802dc9a9cc33542713d3ec15ec84cb481f200818bc6f7eb18073b0baecb3ec7230b225c8cea2dc9ab917VFmz_a3umMJojnThRae27cL4ClJOAeaAj3lVVxHfjQo-', NULL, '2023-09-25 21:01:00'),
(639, 1, '::1', 'Main Menu', '/BEM/cpanel/main_menu', NULL, '2023-09-25 21:08:21'),
(640, 1, '::1', 'Main Menu', '/BEM/cpanel/main_menu/update/8dac7bdecb519ea97f0eccafd8dedcf5c36e1999b2f7f2575dd11450b8a00c012369d187faef8ad783fbad00cbc26690019ec74f0cb0afc2a06353e770605e9aqQjVA~2WfiMSKZ~kIMtS73An59MU4DrtAtsjsKJFNXs-', NULL, '2023-09-25 21:08:26'),
(641, 1, '::1', 'M crud Generator', '/BEM/cpanel/m_crud_generator', NULL, '2023-09-25 21:08:29'),
(642, 1, '::1', 'title', '/BEM/mcrud', NULL, '2023-09-25 21:08:32'),
(643, 1, '::1', 'title', '/BEM//mcrud/getTable/general_setting', NULL, '2023-09-25 21:08:34'),
(644, 1, '::1', 'title', '/BEM/mcrud/action', '{\"table\":\"general_setting\",\"title\":\"General Setting\",\"controllers\":\"General_setting\",\"primary_key\":\"id\",\"mcrud\":{\"1\":{\"id\":{\"field_name\":\"id\",\"sort\":\"1\",\"field_label\":\"Id\",\"form_type\":\"number\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"2\":{\"nama_website\":{\"field_name\":\"nama_website\",\"sort\":\"2\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"show_in_filter\":\"true\",\"field_label\":\"Nama website\",\"form_type\":\"text\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"3\":{\"logo\":{\"field_name\":\"logo\",\"sort\":\"3\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"show_in_filter\":\"true\",\"field_label\":\"Logo\",\"form_type\":\"upload_image\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"4\":{\"alamat\":{\"field_name\":\"alamat\",\"sort\":\"4\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"show_in_filter\":\"true\",\"field_label\":\"Alamat\",\"form_type\":\"textarea\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"5\":{\"telepon\":{\"field_name\":\"telepon\",\"sort\":\"5\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"show_in_filter\":\"true\",\"field_label\":\"Telepon\",\"form_type\":\"text\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"6\":{\"email\":{\"field_name\":\"email\",\"sort\":\"6\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"show_in_filter\":\"true\",\"field_label\":\"Email\",\"form_type\":\"text\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\",\"rules\":[\"valid_email\"]}}}}', '2023-09-25 21:12:08'),
(645, 1, '::1', 'M crud Generator', '/BEM/cpanel/m_crud_generator', NULL, '2023-09-25 21:12:11'),
(646, 1, '::1', 'Main Menu', '/BEM/cpanel/main_menu', NULL, '2023-09-25 21:12:18'),
(647, 1, '::1', 'Main Menu', '/BEM/cpanel/main_menu/add', NULL, '2023-09-25 21:12:21'),
(648, 1, '::1', 'Main Menu', '/BEM/cpanel/main_menu/add_action', '{\"menu\":\"Sosial Media\",\"icon\":\"\",\"type\":\"controller\",\"controller\":\"sosmed\",\"data_target\":\"\",\"is_parent\":\"57\",\"is_active\":\"1\",\"submit\":\"save\"}', '2023-09-25 21:12:34'),
(649, 1, '::1', 'Main Menu', '/BEM/cpanel/main_menu', NULL, '2023-09-25 21:12:34'),
(650, 1, '::1', 'M crud Generator', '/BEM/cpanel/m_crud_generator', NULL, '2023-09-25 21:12:36'),
(651, 1, '::1', 'title', '/BEM/mcrud', NULL, '2023-09-25 21:12:39'),
(652, 1, '::1', 'title', '/BEM//mcrud/getTable/sosial_media', NULL, '2023-09-25 21:12:41'),
(653, 1, '::1', 'title', '/BEM/mcrud', NULL, '2023-09-25 21:14:23'),
(654, 1, '::1', 'title', '/BEM//mcrud/getTable/sosial_media', NULL, '2023-09-25 21:14:37'),
(655, 1, '::1', 'title', '/BEM/mcrud/action', '{\"table\":\"sosial_media\",\"title\":\"Sosial Media\",\"controllers\":\"Sosial_media\",\"primary_key\":\"id\",\"mcrud\":{\"1\":{\"id\":{\"field_name\":\"id\",\"sort\":\"1\",\"field_label\":\"Id\",\"form_type\":\"number\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"2\":{\"sosmed\":{\"field_name\":\"sosmed\",\"sort\":\"2\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"show_in_filter\":\"true\",\"field_label\":\"Sosmed\",\"form_type\":\"select\",\"option\":{\"0\":{\"label\":\"Instagram\",\"value\":\"Instagram\"},\"1695651299079\":{\"label\":\"Facebook\",\"value\":\"Facebook\"},\"1695651305510\":{\"label\":\"Twitter\",\"value\":\"Twitter\"},\"1695651317471\":{\"label\":\"YouTube\",\"value\":\"Youtube\"},\"1695651342335\":{\"label\":\"LinkedIn\",\"value\":\"LinkedIn\"},\"1695651353918\":{\"label\":\"Tiktok\",\"value\":\"Tiktok\"},\"1695651363915\":{\"label\":\"WhatsApp\",\"value\":\"WhatsApp\"}},\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"3\":{\"link\":{\"field_name\":\"link\",\"sort\":\"3\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"show_in_filter\":\"true\",\"field_label\":\"Link\",\"form_type\":\"text\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}}}}', '2023-09-25 21:16:21'),
(656, 1, '::1', 'M crud Generator', '/BEM/cpanel/m_crud_generator', NULL, '2023-09-25 21:16:25'),
(657, 1, '::1', 'title', '/BEM/cpanel/sosmed', NULL, '2023-09-25 21:17:02'),
(658, 1, '::1', 'title', '/BEM/cpanel/sosmed', NULL, '2023-09-25 21:17:04'),
(659, 1, '::1', 'M crud Generator', '/BEM/cpanel/m_crud_generator', NULL, '2023-09-25 21:17:08'),
(660, 1, '::1', 'Main Menu', '/BEM/cpanel/main_menu', NULL, '2023-09-25 21:17:10'),
(661, 1, '::1', 'Main Menu', '/BEM/cpanel/main_menu/delete/2757d6183e7429119afe62ebbfd0e67f8f42ab2c6e1bbc8ff5e6345a3a5c4f281962f062cdcb68a7205c5395578c95574e44f210b830a69626738d6c9ff5a276FIlAEHygEsmiiv3wZ_25BUeS8ScKj9cf7HDKjH2pzwY-', NULL, '2023-09-25 21:17:18'),
(662, 1, '::1', 'Main Menu', '/BEM/cpanel/main_menu', NULL, '2023-09-25 21:17:18'),
(663, 1, '::1', 'Main Menu', '/BEM/cpanel/main_menu/update/688d57b9abb2714d2e0cfeaee505b7c8704a911c9b50ef31ed998eae143aed18ea40d5f816406f8c3c50d4d17b47e24bb7006487cb65e0f0ab60b4408ee4d6a0AgcBgrB6NLx9mTHcQVGXhOSK4lWnDxNj6DzLpr4jFbM-', NULL, '2023-09-25 21:17:23'),
(664, 1, '::1', 'title', '/BEM/cpanel/sosmed', NULL, '2023-09-25 21:17:29'),
(665, 1, '::1', 'General Setting', '/BEM/cpanel/general_setting', NULL, '2023-09-25 21:17:31'),
(666, 1, '::1', 'M crud Generator', '/BEM/cpanel/m_crud_generator', NULL, '2023-09-25 21:17:34'),
(667, 1, '::1', 'Sosial Media', '/BEM/cpanel/Sosial_media', NULL, '2023-09-25 21:17:39'),
(668, 1, '::1', 'Main Menu', '/BEM/cpanel/main_menu', NULL, '2023-09-25 21:17:45'),
(669, 1, '::1', 'Main Menu', '/BEM/cpanel/main_menu/save', '{\"data\":\"[{\\\"id\\\":36},{\\\"id\\\":37,\\\"children\\\":[{\\\"id\\\":38},{\\\"id\\\":39},{\\\"id\\\":40}]},{\\\"id\\\":7,\\\"children\\\":[{\\\"id\\\":34},{\\\"id\\\":3},{\\\"id\\\":54}]},{\\\"id\\\":48},{\\\"id\\\":57,\\\"children\\\":[{\\\"id\\\":62},{\\\"id\\\":63},{\\\"id\\\":58},{\\\"id\\\":60},{\\\"id\\\":65},{\\\"id\\\":64},{\\\"id\\\":66},{\\\"id\\\":68}]}]\"}', '2023-09-25 21:17:53'),
(670, 1, '::1', 'Main Menu', '/BEM/cpanel/main_menu/update/7324586fd4400b964ec468df770c66584f7772daad35de6cc14d63798fd930f0ac6c1e6b65b643a6ae495f8a5a6fa6c0ae4f7714a5a267aad419bd6e9b85b1bekXi8rf5QqknkTONa7NDay0oJFFlijpI7zSJd22IJmpk-', NULL, '2023-09-25 21:17:58'),
(671, 1, '::1', 'Main Menu', '/BEM/cpanel/main_menu/update_action/7324586fd4400b964ec468df770c66584f7772daad35de6cc14d63798fd930f0ac6c1e6b65b643a6ae495f8a5a6fa6c0ae4f7714a5a267aad419bd6e9b85b1bekXi8rf5QqknkTONa7NDay0oJFFlijpI7zSJd22IJmpk-', '{\"menu\":\"sosial media\",\"icon\":\"\",\"type\":\"controller\",\"controller\":\"sosial_media\",\"data_target\":\"\",\"is_parent\":\"57\",\"is_active\":\"1\",\"submit\":\"update\"}', '2023-09-25 21:18:05'),
(672, 1, '::1', 'Main Menu', '/BEM/cpanel/main_menu', NULL, '2023-09-25 21:18:05'),
(673, 1, '::1', 'Sosial Media', '/BEM/cpanel/sosial_media', NULL, '2023-09-25 21:18:10'),
(674, 1, '::1', 'Home', '/BEM/cpanel/home', NULL, '2023-09-25 21:18:12'),
(675, 1, '::1', 'Home', '/BEM/cpanel/home/add', NULL, '2023-09-25 21:18:14'),
(676, 1, '::1', 'title', '/BEM/cpanel/core/imageUpload', NULL, '2023-09-25 21:20:59'),
(677, 1, '::1', 'Home', '/BEM/cpanel/home/add_action', '{\"judul\":\"BADAN EKSEKUTIF MAHASISWA UNIVERSITAS AL-KHAIRIYAH\",\"subjudul\":\"Kementerian Riset Teknologi dan Informasi\",\"file-dir-image\":\"1-80d2cf96024bc427410048484d50364a83e56b4d\",\"image\":\"download_(2).png\",\"submit\":\"add\"}', '2023-09-25 21:21:00'),
(678, 1, '::1', 'Home', '/BEM/cpanel/home', NULL, '2023-09-25 21:21:01'),
(679, 1, '::1', 'Tentang', '/BEM/cpanel/tentang', NULL, '2023-09-25 21:21:04'),
(680, 1, '::1', 'Tentang', '/BEM/cpanel/tentang/add', NULL, '2023-09-25 21:21:08'),
(681, 1, '::1', 'Tentang', '/BEM/cpanel/tentang/add_action', '{\"judul\":\"Tentang Kabinet Reformasi\",\"isi\":\"Kabinet Reformasi lahir dari rahim semangat perjuangan mahasiswa yang terbentuk dari gerakan - gerakan perubahan. Kata reformasi yang berarti merombak, mendobrak dan menyusun Kembali semangat dan niat perubahan untuk menjunjung tinggi nilai organisasi yang berintegritas, inklusif, adaptif dan sinergis di dalamnya. Lambang tangan mengepal yang mengambarkan semangat perubahan untuk menciptakan inovasi \\u2013 inovasi pembaharuan di dalam setiap Gerakan yang diciptakan. Warna yang menggambarkan isi filosofis dalam kabinet yang menggambarkan keberanian, kekeluargaan, inklusif dan juga suci yang menjadi sifat dari setiap komponen yang berada di dalam cabinet reformasi untuk membawa semangat pembaharuan.\",\"submit\":\"add\"}', '2023-09-25 21:21:57'),
(682, 1, '::1', 'Tentang', '/BEM/cpanel/tentang', NULL, '2023-09-25 21:21:57'),
(683, 1, '::1', 'Visi Misi', '/BEM/cpanel/visi_misi', NULL, '2023-09-25 21:21:59'),
(684, 1, '::1', 'Visi Misi', '/BEM/cpanel/visi_misi/update/e804e7137030d469a86cdee6acd9139af43fc97c10b8f58e150b9c74c447590efb7bd4155d249ce4d9b39e2b557165a58268a31e790a81738b4a60e4db7979c29ySWSS3_NIYIf2wSYWYaNqzx9fE7hd3k0pcsr0HeJ~M-', NULL, '2023-09-25 21:22:19'),
(685, 1, '::1', 'Visi Misi', '/BEM/cpanel/visi_misi/update_action/e804e7137030d469a86cdee6acd9139af43fc97c10b8f58e150b9c74c447590efb7bd4155d249ce4d9b39e2b557165a58268a31e790a81738b4a60e4db7979c29ySWSS3_NIYIf2wSYWYaNqzx9fE7hd3k0pcsr0HeJ~M-', '{\"visi\":\"BEM Universitas Airlangga sebagai mercusuar gerakan yang berintegritas, inklusif, sinergis, dan adaptif dengan berlandaskan tri dharma perguruan tinggi\",\"misi\":\"1. ORGANIZATIONAL DEVELOPMENT\\r\\nMembangun organisasi yang sinergis dan berintegritas dengan berpedoman pada aspek kekeluargaan dan professionalitas.\\r\\n\\r\\n2. PRO - ACTIVE\\r\\nBerperan aktif dalam menghadapi berbagai macam problematika lokal hingga internasional.\\r\\n\\r\\n3. TANGIBLE EMPOWERMENT\\r\\nMeningkatkan iklim prestatif melalui pemberdayaan potensi dan minat bakat mahasiswa Universitas Airlangga.\\r\\n\\r\\n4.INTERNATIONAL AND DIGITAL ORIENTATION\\r\\nInternasionalisasi dan digitalisasi BEM Universitas Airlangga sebagai jawaban atas tantangan zaman dan dinamika perubahan.\\r\\n\\r\\n5.MAXIMUM COLLABORATION\\r\\nMeningkatkan sinergitas dengan civitas akademika Universitas Airlangga dan berbagai pihak lain.\",\"submit\":\"update\"}', '2023-09-25 21:23:28'),
(686, 1, '::1', 'Visi Misi', '/BEM/cpanel/visi_misi', NULL, '2023-09-25 21:23:28'),
(687, 1, '::1', 'Struktur Organisasi', '/BEM/cpanel/struktur_organisasi', NULL, '2023-09-25 21:23:42'),
(688, 1, '::1', 'Kementerian', '/BEM/cpanel/kementerian', NULL, '2023-09-25 21:23:44'),
(689, 1, '::1', 'Kementerian', '/BEM/cpanel/kementerian/add', NULL, '2023-09-25 21:24:54'),
(690, 1, '::1', 'Kementerian', '/BEM/cpanel/kementerian/add_action', '{\"nama\":\"Pengembangan Sumber Daya Mahasiswa.\",\"deskripsi\":\"Menciptakan sistem kaderisasi yang baik, mulai dari tahap perekruitan, pengembangan, penempatan, hinggaevaluasi akhir guna mencetak sumber daya mahasiswayang matang dan unggul.\",\"submit\":\"add\"}', '2023-09-25 21:25:04'),
(691, 1, '::1', 'Kementerian', '/BEM/cpanel/kementerian', NULL, '2023-09-25 21:25:05'),
(692, 1, '::1', 'Kementerian', '/BEM/cpanel/kementerian/add', NULL, '2023-09-25 21:25:19'),
(693, 1, '::1', 'Kementerian', '/BEM/cpanel/kementerian/add_action', '{\"nama\":\"Riset dan Keilmuan\",\"deskripsi\":\"Menjadi katalisator riset dan pengembangan atas berbagai isu populer dan strategis, serta bertanggungjawab dalam mengembangkan skill dan semangat riset mahasiswa UNAIR di kancah nasional maupun internasional.\",\"submit\":\"add\"}', '2023-09-25 21:25:27'),
(694, 1, '::1', 'Kementerian', '/BEM/cpanel/kementerian', NULL, '2023-09-25 21:25:27'),
(695, 1, '::1', 'Kementerian', '/BEM/cpanel/kementerian/add', NULL, '2023-09-25 21:25:37'),
(696, 1, '::1', 'Kementerian', '/BEM/cpanel/kementerian/add_action', '{\"nama\":\"Sinergitas Mahasiswa.\",\"deskripsi\":\"Menjalin hubungan yang sinergis dan harmonis dengan seluruh organisasi, badan, lembaga, dan komunitas dalam lingkup UNAIR guna menjamin keberadaan dan keberpihakan di kalangan mahasiswa UNAIR.\",\"submit\":\"add\"}', '2023-09-25 21:25:44'),
(697, 1, '::1', 'Kementerian', '/BEM/cpanel/kementerian', NULL, '2023-09-25 21:25:44'),
(698, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi', NULL, '2023-09-25 21:25:47'),
(699, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi/add', NULL, '2023-09-25 21:25:50'),
(700, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi/add_action', '{\"kategori\":\"UKM\",\"nama\":\"Resimen Mahasiswa\",\"deskripsi\":\"UKM Resimen Mahasiswa merupakan wadah bagi mahasiswa untuk menyalurkan potensinya. Mahasiswa dilatih untuk disiplin, berjiwa dan berfisik kuat, berpengetahuan luas dan diberikan pelatihan ilmu militer seperti bela diri militer, survival, penggunaan senjata, dll. \",\"submit\":\"add\"}', '2023-09-25 21:26:33'),
(701, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi', NULL, '2023-09-25 21:26:33'),
(702, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi/add', NULL, '2023-09-25 21:26:37'),
(703, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi/add_action', '{\"kategori\":\"UKM\",\"nama\":\"UKM Penalaran\",\"deskripsi\":\"Unit Kegiatan Mahasiswa (UKM) Penalaran merupakan organisasi yang mewadahi minat bakat dan aktualisasi mahasiswa dalam bidang karya tulis, penelitian, dan jurnalistik. Sekretariat UKM Penalaran Universitas Airlangga terletak di ruang 302 lantai 3 gedung Student Center Kampus C Universitas Airlangga atau yang biasa disebut oleh pengurus UKM Penalaran sebagai Astana Widya (AW) yang berarti istana pengetahuan.\",\"submit\":\"add\"}', '2023-09-25 21:26:51'),
(704, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi', NULL, '2023-09-25 21:26:51'),
(705, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi/add', NULL, '2023-09-25 21:26:55'),
(706, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi/add_action', '{\"kategori\":\"UKM\",\"nama\":\"UKM Pramuka\",\"deskripsi\":\"UKM Pramuka merupakan wadah untuk menunjang pengembangan potensi dan daya kreatifitas mahasiswa dalam mengamalkan Tri Dharma Perguruan Tinggi. UKM ini menggunakan metode belajar Learning by Doing, yaitu belajar dengan melakukan. Seorang pramuka mengalami proses pembelajaran yang bertahap, kesulitan dan tanggung jawab yang diembannya disesuaikan dengan tingkatan dalam usia mereka.\",\"submit\":\"add\"}', '2023-09-25 21:27:35'),
(707, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi', NULL, '2023-09-25 21:27:36'),
(708, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi/update/4c435dcc8a139f6fd729f00393f4cf58ed805cf70ada146d1cad8b9df878cb1848eb768a5dbcd357bcac049d4212a2c2deb8fb430bd713b9017b3e184f8ea36ca1YXwJNR701yyeKJSrfqqZ6mr6qRFGQ6QFpTOZtCRow-', NULL, '2023-09-25 21:28:36'),
(709, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi/update_action/4c435dcc8a139f6fd729f00393f4cf58ed805cf70ada146d1cad8b9df878cb1848eb768a5dbcd357bcac049d4212a2c2deb8fb430bd713b9017b3e184f8ea36ca1YXwJNR701yyeKJSrfqqZ6mr6qRFGQ6QFpTOZtCRow-', '{\"kategori\":\"HIMA\",\"nama\":\"HIMA Pend. Matematika\",\"deskripsi\":\"TES\",\"submit\":\"update\"}', '2023-09-25 21:28:46'),
(710, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi', NULL, '2023-09-25 21:28:47'),
(711, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi/add', NULL, '2023-09-25 21:28:49'),
(712, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi/add_action', '{\"kategori\":\"HIMA\",\"nama\":\"HIMA Pend. Biologi\",\"deskripsi\":\"tes\",\"submit\":\"add\"}', '2023-09-25 21:29:09'),
(713, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi', NULL, '2023-09-25 21:29:10'),
(714, 1, '::1', 'General Setting', '/BEM/cpanel/general_setting', NULL, '2023-09-25 21:29:12'),
(715, 1, '::1', 'General Setting', '/BEM/cpanel/general_setting/add', NULL, '2023-09-25 21:29:14'),
(716, 1, '::1', 'title', '/BEM/cpanel/core/imageUpload', NULL, '2023-09-25 21:29:38'),
(717, 1, '::1', 'General Setting', '/BEM/cpanel/general_setting/add_action', '{\"nama_website\":\"BEM UNIVAL\",\"file-dir-logo\":\"1-9a78aa35630bade49673ce8a0c330ed590e9b89f\",\"logo\":\"download_(2).png\",\"alamat\":\"Baliwerti 119 - 121\",\"telepon\":\"085667788998877\",\"email\":\"bem.unival@gmail.com\",\"submit\":\"add\"}', '2023-09-25 21:30:16'),
(718, 1, '::1', 'General Setting', '/BEM/cpanel/general_setting', NULL, '2023-09-25 21:30:16'),
(719, 1, '::1', 'General Setting', '/BEM/cpanel/general_setting/update/a898849ca22f030b3b0d9ba964bb9f3597151c265122044d702fb1a40e6a052a3a1d7e24f44f546cb2b6a9b4dea032587f14865c122786b71499164fe60e89feUvUlB6hafLUg1GcdQnKYL8D5txCovndCuLzK_HZ5PBk-', NULL, '2023-09-25 21:30:18'),
(720, 1, '::1', 'General Setting', '/BEM/cpanel/general_setting/update_action/a898849ca22f030b3b0d9ba964bb9f3597151c265122044d702fb1a40e6a052a3a1d7e24f44f546cb2b6a9b4dea032587f14865c122786b71499164fe60e89feUvUlB6hafLUg1GcdQnKYL8D5txCovndCuLzK_HZ5PBk-', '{\"nama_website\":\"BEM UNIVAL\",\"file-dir-logo\":\"\",\"logo\":\"250923213016_download_(2).png\",\"alamat\":\"JL Baliwerti 119 - 121\",\"telepon\":\"085667788998877\",\"email\":\"bem.unival@gmail.com\",\"submit\":\"update\"}', '2023-09-25 21:30:24'),
(721, 1, '::1', 'General Setting', '/BEM/cpanel/general_setting', NULL, '2023-09-25 21:30:24'),
(722, 1, '::1', 'Sosial Media', '/BEM/cpanel/sosial_media', NULL, '2023-09-25 21:30:27'),
(723, 1, '::1', 'Sosial Media', '/BEM/cpanel/sosial_media/add', NULL, '2023-09-25 21:30:29'),
(724, 1, '::1', 'Sosial Media', '/BEM/cpanel/sosial_media/add_action', '{\"sosmed\":\"Instagram\",\"link\":\"https:\\/\\/www.instagram.com\\/bem.uniska\\/\",\"submit\":\"add\"}', '2023-09-25 21:31:43'),
(725, 1, '::1', 'Sosial Media', '/BEM/cpanel/sosial_media', NULL, '2023-09-25 21:31:43'),
(726, 1, '::1', 'title', '/BEM/cpanel/dashboard', NULL, '2023-09-25 22:28:44'),
(727, 1, '::1', 'title', '/BEM/cpanel/dashboard', NULL, '2023-09-26 10:23:30'),
(728, 1, '::1', 'title', '/BEM/cpanel/homepage', NULL, '2023-09-26 10:23:36'),
(729, 1, '::1', 'title', '/BEM/frontend/HomePage', NULL, '2023-09-26 10:24:40'),
(730, 1, '::1', 'title', '/BEM/frontend/HomePage', NULL, '2023-09-26 10:27:51'),
(731, 1, '::1', 'title', '/BEM/frontend/HomePage', NULL, '2023-09-26 10:29:28'),
(732, 1, '::1', 'title', '/BEM/frontend/HomePage', NULL, '2023-09-26 10:35:12'),
(733, 1, '::1', 'title', '/BEM/frontend/', NULL, '2023-09-26 10:37:19'),
(734, 1, '::1', 'title', '/BEM/cpanel/dashboard', NULL, '2023-09-26 10:37:49'),
(735, 1, '::1', 'title', '/BEM/frontend/', NULL, '2023-09-26 10:38:30'),
(736, 1, '::1', 'title', '/BEM/', NULL, '2023-09-26 10:38:40'),
(737, 1, '::1', 'title', '/BEM/cpanel/dashboard', NULL, '2023-09-26 10:39:34'),
(738, 1, '::1', 'title', '/BEM/', NULL, '2023-09-26 11:20:02'),
(739, 1, '::1', 'title', '/BEM/', NULL, '2023-09-26 11:25:45'),
(740, 1, '::1', 'title', '/BEM/', NULL, '2023-09-26 11:30:13'),
(741, 1, '::1', 'title', '/BEM/cpanel/dashboard', NULL, '2023-09-26 14:03:49'),
(742, 1, '::1', 'Visi Misi', '/BEM/cpanel/visi_misi', NULL, '2023-09-26 14:03:55'),
(743, 1, '::1', 'Visi Misi', '/BEM/cpanel/visi_misi', NULL, '2023-09-26 14:04:01'),
(744, 1, '::1', 'Visi Misi', '/BEM/cpanel/visi_misi/update/ba63d4591b25f18ffd4fe18ebce5f351c92ab4a6dad708e5d1f4f4be657ae85e8eeebac71555ae3b0e64ad99d22a9999e236dbbdd429ad2c7a6ddcc360ec7a9a0SgoBjj3EOFDpXFutF1fQtG1DE6piYVp9u_xJ7q_jwc-', NULL, '2023-09-26 14:04:03'),
(745, 1, '::1', 'Visi Misi', '/BEM/cpanel/visi_misi/update_action/ba63d4591b25f18ffd4fe18ebce5f351c92ab4a6dad708e5d1f4f4be657ae85e8eeebac71555ae3b0e64ad99d22a9999e236dbbdd429ad2c7a6ddcc360ec7a9a0SgoBjj3EOFDpXFutF1fQtG1DE6piYVp9u_xJ7q_jwc-', '{\"visi\":\"BEM Universitas Airlangga sebagai mercusuar gerakan yang berintegritas, inklusif, sinergis, dan adaptif dengan berlandaskan tri dharma perguruan tinggi\",\"misi\":\"<p>1. ORGANIZATIONAL DEVELOPMENT<br \\/>\\r\\nMembangun organisasi yang sinergis dan berintegritas dengan berpedoman pada aspek kekeluargaan dan professionalitas.<\\/p>\\r\\n\\r\\n<p>2. PRO - ACTIVE<br \\/>\\r\\nBerperan aktif dalam menghadapi berbagai macam problematika lokal hingga internasional.<\\/p>\\r\\n\\r\\n<p>3. TANGIBLE EMPOWERMENT<br \\/>\\r\\nMeningkatkan iklim prestatif melalui pemberdayaan potensi dan minat bakat mahasiswa Universitas Airlangga.<\\/p>\\r\\n\\r\\n<p>4.INTERNATIONAL AND DIGITAL ORIENTATION<br \\/>\\r\\nInternasionalisasi dan digitalisasi BEM Universitas Airlangga sebagai jawaban atas tantangan zaman dan dinamika perubahan.<\\/p>\\r\\n\\r\\n<p>5.MAXIMUM COLLABORATION<br \\/>\\r\\nMeningkatkan sinergitas dengan civitas akademika Universitas Airlangga dan berbagai pihak lain.<\\/p>\\r\\n\"}', '2023-09-26 14:04:45'),
(746, 1, '::1', 'Visi Misi', '/BEM/cpanel/visi_misi', NULL, '2023-09-26 14:04:45'),
(747, 1, '::1', 'Visi Misi', '/BEM/cpanel/visi_misi/detail/a0a1ab54de4c3acb2b2da1cb34d09296c4fc5548ff8387b842a6b0460e82f04bfde9c97b4ab9e9655b78bbb270571a8a710d6ca13fce06d08b7762be4683c0e7jddXQYX2lDJuxQooAufD~HRCMydbPQyQYBDqq5PubJU-', NULL, '2023-09-26 14:04:51'),
(748, 1, '::1', 'Kementerian', '/BEM/cpanel/kementerian', NULL, '2023-09-26 14:05:07'),
(749, 1, '::1', 'title', '/BEM/cpanel/dashboard', NULL, '2023-09-26 16:10:07'),
(750, 1, '::1', 'title', '/BEM/', NULL, '2023-09-26 16:10:10'),
(751, 1, '::1', 'title', '/BEM/', NULL, '2023-09-26 16:10:15'),
(752, 1, '::1', 'title', '/BEM/', NULL, '2023-09-26 16:10:40'),
(753, 1, '::1', 'title', '/BEM/', NULL, '2023-09-26 16:10:52'),
(754, 1, '::1', 'title', '/BEM/', NULL, '2023-09-26 16:11:00'),
(755, 1, '::1', 'title', '/BEM/', NULL, '2023-09-26 16:14:26'),
(756, 1, '::1', 'title', '/BEM/', NULL, '2023-09-26 16:14:58'),
(757, 1, '::1', 'title', '/BEM/', NULL, '2023-09-26 16:15:16'),
(758, 1, '::1', 'title', '/BEM/cpanel/dashboard', NULL, '2023-09-26 22:38:14'),
(759, 1, '::1', 'title', '/BEM/', NULL, '2023-09-26 22:38:17'),
(760, 1, '::1', 'title', '/BEM/', NULL, '2023-09-26 22:38:25'),
(761, 1, '::1', 'title', '/BEM/', NULL, '2023-09-26 22:38:28'),
(762, 1, '::1', 'title', '/BEM/cpanel/frontend', NULL, '2023-09-26 22:38:32'),
(763, 1, '::1', 'title', '/BEM/', NULL, '2023-09-26 22:38:37'),
(764, 1, '::1', 'title', '/BEM/', NULL, '2023-09-26 22:39:19'),
(765, 1, '::1', 'title', '/BEM/', NULL, '2023-09-26 22:39:21'),
(766, 1, '::1', 'Tentang', '/BEM/cpanel/tentang', NULL, '2023-09-26 22:39:25'),
(767, 1, '::1', 'title', '/BEM/', NULL, '2023-09-26 22:39:34'),
(768, 1, '::1', 'title', '/BEM/frontend/Tentang', NULL, '2023-09-26 22:40:24'),
(769, 1, '::1', 'title', '/BEM/tentang', NULL, '2023-09-26 22:43:19'),
(770, 1, '::1', 'Tentang', '/BEM/cpanel/tentang', NULL, '2023-09-26 22:43:23'),
(771, 1, '::1', 'title', '/BEM/tentang', NULL, '2023-09-26 22:43:37'),
(772, 1, '::1', 'title', '/BEM/cpanel/frontend', NULL, '2023-09-26 22:43:38'),
(773, 1, '::1', 'title', '/BEM/frontend', NULL, '2023-09-26 22:45:24'),
(774, 1, '::1', 'title', '/BEM/frontend', NULL, '2023-09-26 22:46:29'),
(775, 1, '::1', 'title', '/BEM/tentang', NULL, '2023-09-26 22:46:31'),
(776, 1, '::1', 'title', '/BEM/tentang', NULL, '2023-09-26 22:48:46'),
(777, 1, '::1', 'title', '/BEM/visimisi', NULL, '2023-09-26 22:48:48'),
(778, 1, '::1', 'title', '/BEM/strukturOrganisasi', NULL, '2023-09-26 22:48:53'),
(779, 1, '::1', 'title', '/BEM/visimisi', NULL, '2023-09-26 22:48:55'),
(780, 1, '::1', 'title', '/BEM/strukturOrganisasi', NULL, '2023-09-26 22:49:07'),
(781, 1, '::1', 'title', '/BEM/visimisi', NULL, '2023-09-26 22:52:57'),
(782, 1, '::1', 'title', '/BEM/frontend', NULL, '2023-09-26 22:52:59'),
(783, 1, '::1', 'title', '/BEM/frontend', NULL, '2023-09-26 22:53:04'),
(784, 1, '::1', 'title', '/BEM/frontend', NULL, '2023-09-26 22:53:05'),
(785, 1, '::1', 'title', '/BEM/frontend', NULL, '2023-09-26 22:53:15'),
(786, 1, '::1', 'title', '/BEM/tentang', NULL, '2023-09-26 22:56:47'),
(787, 1, '::1', 'title', '/BEM/visi-misi', NULL, '2023-09-26 22:56:49'),
(788, 1, '::1', 'title', '/BEM/tentang', NULL, '2023-09-26 22:56:58'),
(789, 1, '::1', 'title', '/BEM/visi-misi', NULL, '2023-09-26 22:57:00'),
(790, 1, '::1', 'title', '/BEM/tentang', NULL, '2023-09-26 22:57:02'),
(791, 1, '::1', 'title', '/BEM/tentang', NULL, '2023-09-26 22:57:04'),
(792, 1, '::1', 'title', '/BEM/tentang', NULL, '2023-09-26 22:57:05'),
(793, 1, '::1', 'title', '/BEM/tentang', NULL, '2023-09-26 22:57:05'),
(794, 1, '::1', 'title', '/BEM/tentang', NULL, '2023-09-26 22:57:07'),
(795, 1, '::1', 'title', '/BEM/visi-misi', NULL, '2023-09-26 22:57:08'),
(796, 1, '::1', 'title', '/BEM/frontend', NULL, '2023-09-26 22:57:10'),
(797, 1, '::1', 'title', '/BEM/tentang', NULL, '2023-09-26 22:57:13'),
(798, 1, '::1', 'title', '/BEM/visi-misi', NULL, '2023-09-26 22:57:15'),
(799, 1, '::1', 'title', '/BEM/frontend', NULL, '2023-09-26 22:57:16'),
(800, 1, '::1', 'title', '/BEM/frontend', NULL, '2023-09-26 22:58:21'),
(801, 1, '::1', 'title', '/BEM/ukm', NULL, '2023-09-26 22:58:23'),
(802, 1, '::1', 'title', '/BEM/ukm', NULL, '2023-09-26 22:58:38'),
(803, 1, '::1', 'title', '/BEM/ukm', NULL, '2023-09-26 22:58:40'),
(804, 1, '::1', 'title', '/BEM/tentang', NULL, '2023-09-26 22:58:41'),
(805, 1, '::1', 'title', '/BEM/ukm', NULL, '2023-09-26 22:58:44'),
(806, 1, '::1', 'title', '/BEM/tentang', NULL, '2023-09-26 22:59:29'),
(807, 1, '::1', 'title', '/BEM/tentang', NULL, '2023-09-26 23:03:14'),
(808, 1, '::1', 'title', '/BEM/tentang', NULL, '2023-09-26 23:03:16'),
(809, 1, '::1', 'title', '/BEM/visi-misi', NULL, '2023-09-26 23:03:18'),
(810, 1, '::1', 'title', '/BEM/visi-misi', NULL, '2023-09-26 23:03:19'),
(811, 1, '::1', 'title', '/BEM/tentang', NULL, '2023-09-26 23:03:20'),
(812, 1, '::1', 'title', '/BEM/struktur-organisasi', NULL, '2023-09-26 23:03:22'),
(813, 1, '::1', 'title', '/BEM/tentang', NULL, '2023-09-26 23:03:23'),
(814, 1, '::1', 'title', '/BEM/tentang', NULL, '2023-09-26 23:05:44'),
(815, 1, '::1', 'title', '/BEM/tentang', NULL, '2023-09-26 23:14:31'),
(816, 1, '::1', 'title', '/BEM/frontend', NULL, '2023-09-26 23:14:35'),
(817, 1, '::1', 'title', '/BEM/visi-misi', NULL, '2023-09-26 23:14:36'),
(818, 1, '::1', 'title', '/BEM/visi-misi', NULL, '2023-09-26 23:14:38'),
(819, 1, '::1', 'title', '/BEM/tentang', NULL, '2023-09-26 23:14:45'),
(820, 1, '::1', 'title', '/BEM/visi-misi', NULL, '2023-09-26 23:14:46'),
(821, 1, '::1', 'title', '/BEM/hima', NULL, '2023-09-26 23:14:49'),
(822, 1, '::1', 'title', '/BEM/visi-misi', NULL, '2023-09-26 23:14:50'),
(823, 1, '::1', 'title', '/BEM/ukm', NULL, '2023-09-26 23:14:52'),
(824, 1, '::1', 'title', '/BEM/ukm', NULL, '2023-09-26 23:15:29'),
(825, 1, '::1', 'title', '/BEM/hima', NULL, '2023-09-26 23:15:31'),
(826, 1, '::1', 'title', '/BEM/frontend', NULL, '2023-09-26 23:16:26'),
(827, 1, '::1', 'title', '/BEM/tentang', NULL, '2023-09-26 23:17:11'),
(828, 1, '::1', 'title', '/BEM/kementerian', NULL, '2023-09-26 23:17:14'),
(829, 1, '::1', 'title', '/BEM/tentang', NULL, '2023-09-26 23:17:20'),
(830, 1, '::1', 'title', '/BEM/frontend', NULL, '2023-09-26 23:17:21'),
(831, 1, '::1', 'title', '/BEM/tentang', NULL, '2023-09-26 23:17:57'),
(832, 1, '::1', 'title', '/BEM/visi-misi', NULL, '2023-09-26 23:17:59'),
(833, 1, '::1', 'title', '/BEM/struktur-organisasi', NULL, '2023-09-26 23:18:00'),
(834, 1, '::1', 'title', '/BEM/kementerian', NULL, '2023-09-26 23:18:03'),
(835, 1, '::1', 'title', '/BEM/frontend', NULL, '2023-09-26 23:18:05'),
(836, 1, '::1', 'title', '/BEM/struktur-organisasi', NULL, '2023-09-26 23:18:56'),
(837, 1, '::1', 'title', '/BEM/struktur-organisasi', NULL, '2023-09-26 23:19:06'),
(838, 1, '::1', 'title', '/BEM/struktur-organisasi', NULL, '2023-09-26 23:19:08'),
(839, 1, '::1', 'title', '/BEM/struktur-organisasi', NULL, '2023-09-26 23:19:13'),
(840, 1, '::1', 'title', '/BEM/struktur-organisasi', NULL, '2023-09-26 23:19:14'),
(841, 1, '::1', 'title', '/BEM/struktur-organisasi', NULL, '2023-09-26 23:19:14'),
(842, 1, '::1', 'title', '/BEM/visi-misi', NULL, '2023-09-26 23:19:16'),
(843, 1, '::1', 'title', '/BEM/struktur-organisasi', NULL, '2023-09-26 23:19:17'),
(844, 1, '::1', 'title', '/BEM/struktur-organisasi', NULL, '2023-09-26 23:19:23'),
(845, 1, '::1', 'title', '/BEM/kementerian', NULL, '2023-09-26 23:19:29'),
(846, 1, '::1', 'title', '/BEM/kementerian', NULL, '2023-09-26 23:19:45'),
(847, 1, '::1', 'title', '/BEM/kementerian', NULL, '2023-09-26 23:19:47'),
(848, 1, '::1', 'title', '/BEM/struktur-organisasi', NULL, '2023-09-26 23:19:48'),
(849, 1, '::1', 'title', '/BEM/kementerian', NULL, '2023-09-26 23:19:49'),
(850, 1, '::1', 'title', '/BEM/hima', NULL, '2023-09-26 23:19:51'),
(851, 1, '::1', 'title', '/BEM/frontend', NULL, '2023-09-26 23:20:08'),
(852, 1, '::1', 'title', '/BEM/ukm', NULL, '2023-09-26 23:20:09'),
(853, 1, '::1', 'title', '/BEM/hima', NULL, '2023-09-26 23:20:10'),
(854, 1, '::1', 'title', '/BEM/kementerian', NULL, '2023-09-26 23:20:10'),
(855, 1, '::1', 'title', '/BEM/struktur-organisasi', NULL, '2023-09-26 23:20:11'),
(856, 1, '::1', 'title', '/BEM/struktur-organisasi', NULL, '2023-09-26 23:20:12'),
(857, 1, '::1', 'title', '/BEM/visi-misi', NULL, '2023-09-26 23:20:13'),
(858, 1, '::1', 'title', '/BEM/tentang', NULL, '2023-09-26 23:20:15'),
(859, 1, '::1', 'title', '/BEM/cpanel/dashboard', NULL, '2023-09-27 12:02:14'),
(860, 1, '::1', 'title', '/BEM/', NULL, '2023-09-27 12:02:17'),
(861, 1, '::1', 'title', '/BEM/tentang', NULL, '2023-09-27 12:02:20'),
(862, 1, '::1', 'title', '/BEM/visi-misi', NULL, '2023-09-27 12:02:22'),
(863, 1, '::1', 'title', '/BEM/frontend', NULL, '2023-09-27 12:02:28'),
(864, 1, '::1', 'title', '/BEM/frontend', NULL, '2023-09-27 12:02:32'),
(865, 1, '::1', 'title', '/BEM/struktur-organisasi', NULL, '2023-09-27 12:02:35'),
(866, 1, '::1', 'title', '/BEM/frontend', NULL, '2023-09-27 12:02:38'),
(867, 1, '::1', 'title', '/BEM/', NULL, '2023-09-27 12:02:41'),
(868, 1, '::1', 'title', '/BEM/tentang', NULL, '2023-09-27 12:02:45'),
(869, 1, '::1', 'title', '/BEM/frontend', NULL, '2023-09-27 12:02:46'),
(870, 1, '::1', 'title', '/BEM/visi-misi', NULL, '2023-09-27 12:02:48'),
(871, 1, '::1', 'title', '/BEM/struktur-organisasi', NULL, '2023-09-27 12:02:50'),
(872, 1, '::1', 'title', '/BEM/kementerian', NULL, '2023-09-27 12:02:51'),
(873, 1, '::1', 'title', '/BEM/', NULL, '2023-09-27 12:04:50'),
(874, 1, '::1', 'title', '/BEM/tentang', NULL, '2023-09-27 12:04:54'),
(875, 1, '::1', 'title', '/BEM/frontend', NULL, '2023-09-27 12:04:55'),
(876, 1, '::1', 'title', '/BEM/', NULL, '2023-09-27 12:04:57'),
(877, 1, '::1', 'title', '/BEM/cpanel/dashboard', NULL, '2023-09-27 20:42:36'),
(878, 1, '::1', 'title', '/BEM/', NULL, '2023-09-27 20:42:42'),
(879, 1, '::1', 'title', '/BEM/tentang', NULL, '2023-09-27 20:42:52'),
(880, 1, '::1', 'title', '/BEM/frontend', NULL, '2023-09-27 20:42:54'),
(881, 1, '::1', 'title', '/BEM/tentang', NULL, '2023-09-27 20:42:57'),
(882, 1, '::1', 'title', '/BEM/visi-misi', NULL, '2023-09-27 20:42:58'),
(883, 1, '::1', 'title', '/BEM/struktur-organisasi', NULL, '2023-09-27 20:42:59'),
(884, 1, '::1', 'title', '/BEM/kementerian', NULL, '2023-09-27 20:43:00'),
(885, 1, '::1', 'title', '/BEM/hima', NULL, '2023-09-27 20:43:01'),
(886, 1, '::1', 'title', '/BEM/ukm', NULL, '2023-09-27 20:43:03'),
(887, 1, '::1', 'title', '/BEM/frontend', NULL, '2023-09-27 20:43:04'),
(888, 1, '::1', 'title', '/BEM/cpanel/dashboard', NULL, '2023-09-27 20:43:29'),
(889, 1, '::1', 'Home', '/BEM/cpanel/home', NULL, '2023-09-27 20:43:35'),
(890, 1, '::1', 'Home', '/BEM/cpanel/home', NULL, '2023-09-27 20:43:37'),
(891, 1, '::1', 'Tentang', '/BEM/cpanel/tentang', NULL, '2023-09-27 20:43:43'),
(892, 1, '::1', 'Tentang', '/BEM/cpanel/tentang/add', NULL, '2023-09-27 20:43:45'),
(893, 1, '::1', 'Kementerian', '/BEM/cpanel/kementerian', NULL, '2023-09-27 20:43:54'),
(894, 1, '::1', 'Kementerian', '/BEM/cpanel/kementerian/add', NULL, '2023-09-27 20:43:56'),
(895, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi', NULL, '2023-09-27 20:44:01'),
(896, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi/add', NULL, '2023-09-27 20:44:04'),
(897, 1, '::1', 'General Setting', '/BEM/cpanel/general_setting', NULL, '2023-09-27 20:44:06'),
(898, 1, '::1', 'General Setting', '/BEM/cpanel/general_setting/add', NULL, '2023-09-27 20:44:08'),
(899, 1, '::1', 'Struktur Organisasi', '/BEM/cpanel/struktur_organisasi', NULL, '2023-09-27 20:44:09'),
(900, 1, '::1', 'Struktur Organisasi', '/BEM/cpanel/struktur_organisasi/add', NULL, '2023-09-27 20:44:11'),
(901, 1, '::1', 'Kementerian', '/BEM/cpanel/kementerian', NULL, '2023-09-27 20:44:13'),
(902, 1, '::1', 'Kementerian', '/BEM/cpanel/kementerian/add', NULL, '2023-09-27 20:44:15'),
(903, 1, '::1', 'Visi Misi', '/BEM/cpanel/visi_misi', NULL, '2023-09-27 20:44:22'),
(904, 1, '::1', 'Visi Misi', '/BEM/cpanel/visi_misi/detail/4375c203459bc9d151f632b7c2756c75118bdba51927357537d79b1ebee58a44599866269851f33483b5787e093fef0a383b8f7a60f58f3c74b823d0315894afvjnYLgIUZBRoREhhC~oSCmY9gzKTtvtzlk09_JOE7z0-', NULL, '2023-09-27 20:44:29'),
(905, 1, '::1', 'Visi Misi', '/BEM/cpanel/visi_misi', NULL, '2023-09-27 20:44:32'),
(906, 1, '::1', 'Visi Misi', '/BEM/cpanel/visi_misi/update/ad72f677050bcd45a24c1081c3afadbd41869b65fcb8cc9cf4e7ea7d2b08c53553e5fa6be1fe0c4ff703cfdf769d1cece0a602c0b2bdaa2de16a03e39dd8fe8caKiq0i0ZD~Wcdhq_dJHq0dLNdcRs4GgDYiLUnoJjZCI-', NULL, '2023-09-27 20:44:34'),
(907, 1, '::1', 'Tentang', '/BEM/cpanel/tentang', NULL, '2023-09-27 20:46:04'),
(908, 1, '::1', 'Visi Misi', '/BEM/cpanel/visi_misi', NULL, '2023-09-27 20:46:23'),
(909, 1, '::1', 'Tentang', '/BEM/cpanel/tentang', NULL, '2023-09-27 20:46:24'),
(910, 1, '::1', 'Tentang', '/BEM/cpanel/tentang/add', NULL, '2023-09-27 20:46:26'),
(911, 1, '::1', 'Tentang', '/BEM/cpanel/tentang', NULL, '2023-09-27 20:46:29'),
(912, 1, '::1', 'Tentang', '/BEM/cpanel/tentang/update/6f643e1c9520aed74a2856a867a50d3c23af8fe667738702097225892b8579fb1bfb3ac76ccbc00381d14694f1d19afcfc308c2c06ac69b95121bdc0a31af406bf5HjyRcJjMBw8P_rwawVNU9jW8GMbMFxNPZpJbAV18-', NULL, '2023-09-27 20:46:31'),
(913, 1, '::1', 'Tentang', '/BEM/cpanel/tentang', NULL, '2023-09-27 20:46:35'),
(914, 1, '::1', 'Tentang', '/BEM/cpanel/tentang/add', NULL, '2023-09-27 20:46:48'),
(915, 1, '::1', 'Visi Misi', '/BEM/cpanel/visi_misi', NULL, '2023-09-27 20:46:52'),
(916, 1, '::1', 'Struktur Organisasi', '/BEM/cpanel/struktur_organisasi', NULL, '2023-09-27 20:46:55'),
(917, 1, '::1', 'Kementerian', '/BEM/cpanel/kementerian', NULL, '2023-09-27 20:46:57'),
(918, 1, '::1', 'Kementerian', '/BEM/cpanel/kementerian', NULL, '2023-09-27 20:47:31'),
(919, 1, '::1', 'Kementerian', '/BEM/cpanel/kementerian/add', NULL, '2023-09-27 20:47:33'),
(920, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi', NULL, '2023-09-27 20:47:50'),
(921, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi/add', NULL, '2023-09-27 20:48:02'),
(922, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi', NULL, '2023-09-27 20:48:05'),
(923, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi', NULL, '2023-09-27 20:48:31'),
(924, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi/add', NULL, '2023-09-27 20:48:33'),
(925, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi', NULL, '2023-09-27 20:48:36'),
(926, 1, '::1', 'General Setting', '/BEM/cpanel/general_setting', NULL, '2023-09-27 20:48:37'),
(927, 1, '::1', 'Sosial Media', '/BEM/cpanel/sosial_media', NULL, '2023-09-27 20:48:40'),
(928, 1, '::1', 'title', '/BEM/', NULL, '2023-09-27 20:51:55'),
(929, 1, '::1', 'title', '/BEM/tentang', NULL, '2023-09-27 20:51:59'),
(930, 1, '::1', 'title', '/BEM/tentang', NULL, '2023-09-27 21:02:28'),
(931, 1, '::1', 'title', '/BEM/tentang', NULL, '2023-09-27 21:03:25'),
(932, 1, '::1', 'title', '/BEM/frontend', NULL, '2023-09-27 21:03:40'),
(933, 1, '::1', 'title', '/BEM/frontend', NULL, '2023-09-27 21:04:28'),
(934, 1, '::1', 'title', '/BEM/frontend', NULL, '2023-09-27 21:05:53'),
(935, 1, '::1', 'title', '/BEM/frontend', NULL, '2023-09-27 21:06:10'),
(936, 1, '::1', 'title', '/BEM/frontend', NULL, '2023-09-27 21:06:21'),
(937, 1, '::1', 'title', '/BEM/frontend', NULL, '2023-09-27 21:06:38'),
(938, 1, '::1', 'title', '/BEM/tentang', NULL, '2023-09-27 21:06:49'),
(939, 1, '::1', 'title', '/BEM/frontend', NULL, '2023-09-27 21:07:00'),
(940, 1, '::1', 'title', '/BEM/cpanel/dashboard', NULL, '2023-09-27 21:11:21'),
(941, 1, '::1', 'Home', '/BEM/cpanel/home', NULL, '2023-09-27 21:11:27'),
(942, 1, '::1', 'Home', '/BEM/cpanel/home/update/36a034615d1b1e668f7acd92835d6311ddd07cf9e6354affe018be55fe2e1dd4cb147a605578eb75bb6982626f3709191b67608f84c9d6da6ac8b08f48324f97b0~Ya4zvJSkFfQmx4SejGpOkDaJLPRC8CA6MkERB1H4-', NULL, '2023-09-27 21:11:35'),
(943, 1, '::1', 'title', '/BEM/cpanel/core/imageUpload', NULL, '2023-09-27 21:11:50'),
(944, 1, '::1', 'Home', '/BEM/cpanel/home', NULL, '2023-09-27 21:11:54'),
(945, 1, '::1', 'Home', '/BEM/cpanel/home', NULL, '2023-09-27 21:11:58'),
(946, 1, '::1', 'Home', '/BEM/cpanel/home/update/88ff4f01faee40033db9337d1b4e4060c1476264065de60ae399d24c68a73444af2addac35621826673291d43a1e1959da0f1b809fb6e1cb48d41c9697b6253aIX69RKj_ifMkbWMDR8nvrXk7o1nNTKus_G_n7ZqujfA-', NULL, '2023-09-27 21:12:00'),
(947, 1, '::1', 'title', '/BEM/cpanel/core/imageUpload', NULL, '2023-09-27 21:12:16'),
(948, 1, '::1', 'Home', '/BEM/cpanel/home/update_action/88ff4f01faee40033db9337d1b4e4060c1476264065de60ae399d24c68a73444af2addac35621826673291d43a1e1959da0f1b809fb6e1cb48d41c9697b6253aIX69RKj_ifMkbWMDR8nvrXk7o1nNTKus_G_n7ZqujfA-', '{\"judul\":\"BADAN EKSEKUTIF MAHASISWA UNIVERSITAS AL-KHAIRIYAH\",\"subjudul\":\"Kementerian Riset Teknologi dan Informasi\",\"file-dir-image\":\"1-b8092e830c32724cea518c790cb63085dc567ae3\",\"image\":\"download_(2).png\",\"submit\":\"update\"}', '2023-09-27 21:12:20'),
(949, 1, '::1', 'Home', '/BEM/cpanel/home', NULL, '2023-09-27 21:12:20'),
(950, 1, '::1', 'title', '/BEM/frontend', NULL, '2023-09-27 21:13:07'),
(951, 1, '::1', 'title', '/BEM/frontend', NULL, '2023-09-27 21:13:14'),
(952, 1, '::1', 'title', '/BEM/frontend', NULL, '2023-09-27 21:13:26'),
(953, 1, '::1', 'title', '/BEM/frontend', NULL, '2023-09-27 21:13:29'),
(954, 1, '::1', 'title', '/BEM/frontend', NULL, '2023-09-27 21:14:32'),
(955, 1, '::1', 'title', '/BEM/tentang', NULL, '2023-09-27 21:14:38'),
(956, 1, '::1', 'title', '/BEM/frontend', NULL, '2023-09-27 21:14:45'),
(957, 1, '::1', 'title', '/BEM/tentang', NULL, '2023-09-27 21:18:12'),
(958, 1, '::1', 'title', '/BEM/frontend', NULL, '2023-09-27 21:18:17'),
(959, 1, '::1', 'Tentang', '/BEM/cpanel/tentang', NULL, '2023-09-27 21:18:51'),
(960, 1, '::1', 'Tentang', '/BEM/cpanel/tentang/update/bfbe3f9695d78697b7ded63f19870979cb10a0f631c9439feeecfa345583f85e0c3973618d6fb75761480a9996b7b226ca26cf6b5ad383521dea03d0e8e182415sh1x78wTFDeIMQYxKEJA4D5KLmkEiwiIrxAjo~OYz4-', NULL, '2023-09-27 21:18:56'),
(961, 1, '::1', 'Tentang', '/BEM/cpanel/tentang/update_action/bfbe3f9695d78697b7ded63f19870979cb10a0f631c9439feeecfa345583f85e0c3973618d6fb75761480a9996b7b226ca26cf6b5ad383521dea03d0e8e182415sh1x78wTFDeIMQYxKEJA4D5KLmkEiwiIrxAjo~OYz4-', '{\"judul\":\"Tentang Kabinet Reformasi\",\"isi\":\"Kabinet Reformasi lahir dari rahim semangat perjuangan mahasiswa yang terbentuk dari gerakan - gerakan perubahan. Kata reformasi yang berarti merombak, mendobrak dan menyusun Kembali semangat dan niat perubahan untuk menjunjung tinggi nilai organisasi yang berintegritas, inklusif, adaptif dan sinergis di dalamnya. Lambang tangan mengepal yang mengambarkan semangat perubahan untuk menciptakan inovasi \\u2013 inovasi pembaharuan di dalam setiap Gerakan yang diciptakan. Warna yang menggambarkan isi filosofis dalam kabinet yang menggambarkan keberanian, kekeluargaan, inklusif dan juga suci yang menjadi sifat dari setiap komponen yang berada di dalam cabinet reformasi untuk membawa semangat pembaharuan.\",\"submit\":\"update\"}', '2023-09-27 21:23:10'),
(962, 1, '::1', 'Tentang', '/BEM/cpanel/tentang', NULL, '2023-09-27 21:23:10'),
(963, 1, '::1', 'Tentang', '/BEM/cpanel/tentang/update/33089b6706f952002aab0a71b12f89effb5c68d96059b3f76b7f792cdf8bd1ac72d016bf5ff892490aa0550cfe8528c8dabbe248a8ebbe2ab9c52905328d1d88CtowkHyK347Ii65zzurFwSNQ9JRGmMBrRP0Uuaf8BQ8-', NULL, '2023-09-27 21:23:18');
INSERT INTO `ci_user_log` (`id`, `user`, `ip_address`, `controller`, `url`, `data`, `created_at`) VALUES
(964, 1, '::1', 'Tentang', '/BEM/cpanel/tentang/update_action/33089b6706f952002aab0a71b12f89effb5c68d96059b3f76b7f792cdf8bd1ac72d016bf5ff892490aa0550cfe8528c8dabbe248a8ebbe2ab9c52905328d1d88CtowkHyK347Ii65zzurFwSNQ9JRGmMBrRP0Uuaf8BQ8-', '{\"judul\":\"Tentang Kabinet Reformasi\",\"isi\":\"Kabinet Reformasi lahir dari rahim semangat perjuangan mahasiswa yang terbentuk dari gerakan - gerakan perubahan. Kata reformasi yang berarti merombak, mendobrak dan menyusun Kembali semangat dan niat perubahan untuk menjunjung tinggi nilai organisasi yang berintegritas, inklusif, adaptif dan sinergis di dalamnya. Lambang tangan mengepal yang mengambarkan semangat perubahan untuk menciptakan inovasi \\u2013 inovasi pembaharuan di dalam setiap Gerakan yang diciptakan. Warna yang menggambarkan isi filosofis dalam kabinet yang menggambarkan keberanian, kekeluargaan, inklusif dan juga suci yang menjadi sifat dari setiap komponen yang berada di dalam cabinet reformasi untuk membawa semangat pembaharuan.\",\"submit\":\"update\"}', '2023-09-27 21:23:36'),
(965, 1, '::1', 'Tentang', '/BEM/cpanel/tentang', NULL, '2023-09-27 21:23:36'),
(966, 1, '::1', 'Tentang', '/BEM/cpanel/tentang/detail/43b08d46e1f9db7ed823bafabe1bb6673eb2c920b149982a5cd504b035573c693d010d1a60503ef6692cfbd9d7ba41a99fa0c01dd47ffb70a559ae0ab9890fa11zg0Zb1L6pC51YJHTpb8cBhPlVlD8ebrGJ6xo2L~Mag-', NULL, '2023-09-27 21:23:40'),
(967, 1, '::1', 'Tentang', '/BEM/cpanel/tentang', NULL, '2023-09-27 21:29:18'),
(968, 1, '::1', 'Tentang', '/BEM/cpanel/tentang', NULL, '2023-09-27 21:29:35'),
(969, 1, '::1', 'Visi Misi', '/BEM/cpanel/visi_misi', NULL, '2023-09-27 21:30:00'),
(970, 1, '::1', 'Visi Misi', '/BEM/cpanel/visi_misi/update/8eb203e8fde07e290f1339f5392dbb714b976390c963c41a36c6846c65cfb8858c31e877781baf5d75bf4414c3e54bc685b37a8a34fc3e6b85615d5c5236663aprgng_DwfwxUq05fjkxdPS~qSMsXw6MR8Hd4fW85Be0-', NULL, '2023-09-27 21:30:32'),
(971, 1, '::1', 'Visi Misi', '/BEM/cpanel/visi_misi', NULL, '2023-09-27 21:30:38'),
(972, 1, '::1', 'title', '/BEM/tentang', NULL, '2023-09-27 21:33:53'),
(973, 1, '::1', 'title', '/BEM/tentang', NULL, '2023-09-27 21:36:29'),
(974, 1, '::1', 'title', '/BEM/tentang', NULL, '2023-09-27 21:37:20'),
(975, 1, '::1', 'title', '/BEM/tentang', NULL, '2023-09-27 21:37:43'),
(976, 1, '::1', 'title', '/BEM/tentang', NULL, '2023-09-27 21:38:06'),
(977, 1, '::1', 'title', '/BEM/visi-misi', NULL, '2023-09-27 21:42:44'),
(978, 1, '::1', 'title', '/BEM/visi-misi', NULL, '2023-09-27 21:45:08'),
(979, 1, '::1', 'title', '/BEM/visi-misi', NULL, '2023-09-27 21:46:12'),
(980, 1, '::1', 'title', '/BEM/visi-misi', NULL, '2023-09-27 21:46:35'),
(981, 1, '::1', 'title', '/BEM/visi-misi', NULL, '2023-09-27 21:46:49'),
(982, 1, '::1', 'Visi Misi', '/BEM/cpanel/visi_misi/update/146610ba6e67696f9ecba071e439a0eb35c296e78744f4b9e53657f39899b7893176201aceb076cf1df93149367c427ef96a81b2ec4c9080268b90ea512b8d4d2iWRjVfKLdToDJiyyOcvAe54PkkxsjIX0AS~0Gfkx_A-', NULL, '2023-09-27 21:47:28'),
(983, 1, '::1', 'Visi Misi', '/BEM/cpanel/visi_misi/update_action/146610ba6e67696f9ecba071e439a0eb35c296e78744f4b9e53657f39899b7893176201aceb076cf1df93149367c427ef96a81b2ec4c9080268b90ea512b8d4d2iWRjVfKLdToDJiyyOcvAe54PkkxsjIX0AS~0Gfkx_A-', '{\"visi\":\"BEM Universitas Airlangga sebagai mercusuar gerakan yang berintegritas, inklusif, sinergis, dan adaptif dengan berlandaskan tri dharma perguruan tinggi\",\"misi\":\"<p>1. ORGANIZATIONAL DEVELOPMENT<br \\/>\\r\\nMembangun organisasi yang sinergis dan berintegritas dengan berpedoman pada aspek kekeluargaan dan professionalitas.<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p>2. PRO - ACTIVE<br \\/>\\r\\nBerperan aktif dalam menghadapi berbagai macam problematika lokal hingga internasional.<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p>3. TANGIBLE EMPOWERMENT<br \\/>\\r\\nMeningkatkan iklim prestatif melalui pemberdayaan potensi dan minat bakat mahasiswa Universitas Airlangga.<\\/p>\\r\\n\\r\\n<p>4.INTERNATIONAL AND DIGITAL ORIENTATION<br \\/>\\r\\nInternasionalisasi dan digitalisasi BEM Universitas Airlangga sebagai jawaban atas tantangan zaman dan dinamika perubahan.<\\/p>\\r\\n\\r\\n<p>5.MAXIMUM COLLABORATION<br \\/>\\r\\nMeningkatkan sinergitas dengan civitas akademika Universitas Airlangga dan berbagai pihak lain.<\\/p>\\r\\n\"}', '2023-09-27 21:47:40'),
(984, 1, '::1', 'Visi Misi', '/BEM/cpanel/visi_misi', NULL, '2023-09-27 21:47:40'),
(985, 1, '::1', 'title', '/BEM/visi-misi', NULL, '2023-09-27 21:47:44'),
(986, 1, '::1', 'Visi Misi', '/BEM/cpanel/visi_misi/update/66ef4ae37fd4bd6bc793f9c8370fa61d99329d76ea0bab12d88f833e2ac69258ab8e1f35634ffe5ab396831c6f71e42ce5568c5bb971cbbe2b04000f3f59e4db2OO37_TteQhqUgOq_CKsvbZf2UDDigqQ~u23qPCYw8c-', NULL, '2023-09-27 21:47:53'),
(987, 1, '::1', 'Visi Misi', '/BEM/cpanel/visi_misi/update_action/66ef4ae37fd4bd6bc793f9c8370fa61d99329d76ea0bab12d88f833e2ac69258ab8e1f35634ffe5ab396831c6f71e42ce5568c5bb971cbbe2b04000f3f59e4db2OO37_TteQhqUgOq_CKsvbZf2UDDigqQ~u23qPCYw8c-', '{\"visi\":\"BEM Universitas Airlangga sebagai mercusuar gerakan yang berintegritas, inklusif, sinergis, dan adaptif dengan berlandaskan tri dharma perguruan tinggi\",\"misi\":\"<ol>\\r\\n\\t<li><strong>ORGANIZATIONAL DEVELOPMENT<\\/strong><br \\/>\\r\\n\\tMembangun organisasi yang sinergis dan berintegritas dengan berpedoman pada aspek kekeluargaan dan professionalitas.<br \\/>\\r\\n\\t&nbsp;<\\/li>\\r\\n\\t<li><strong>PRO - ACTIVE<\\/strong><br \\/>\\r\\n\\tBerperan aktif dalam menghadapi berbagai macam problematika lokal hingga internasional.<br \\/>\\r\\n\\t&nbsp;<\\/li>\\r\\n\\t<li><strong>TANGIBLE EMPOWERMENT<\\/strong><br \\/>\\r\\n\\tMeningkatkan iklim prestatif melalui pemberdayaan potensi dan minat bakat mahasiswa Universitas Airlangga.<br \\/>\\r\\n\\t&nbsp;<\\/li>\\r\\n\\t<li><strong>INTERNATIONAL AND DIGITAL ORIENTATION<\\/strong><br \\/>\\r\\n\\tInternasionalisasi dan digitalisasi BEM Universitas Airlangga sebagai jawaban atas tantangan zaman dan dinamika perubahan.<br \\/>\\r\\n\\t&nbsp;<\\/li>\\r\\n\\t<li><strong>MAXIMUM COLLABORATION<\\/strong><br \\/>\\r\\n\\tMeningkatkan sinergitas dengan civitas akademika Universitas Airlangga dan berbagai pihak lain.<\\/li>\\r\\n<\\/ol>\\r\\n\"}', '2023-09-27 21:53:10'),
(988, 1, '::1', 'Visi Misi', '/BEM/cpanel/visi_misi', NULL, '2023-09-27 21:53:10'),
(989, 1, '::1', 'title', '/BEM/visi-misi', NULL, '2023-09-27 21:53:15'),
(990, 1, '::1', 'title', '/BEM/visi-misi', NULL, '2023-09-27 21:53:54'),
(991, 1, '::1', 'title', '/BEM/visi-misi', NULL, '2023-09-27 21:54:06'),
(992, 1, '::1', 'title', '/BEM/visi-misi', NULL, '2023-09-27 21:54:16'),
(993, 1, '::1', 'title', '/BEM/struktur-organisasi', NULL, '2023-09-27 21:54:39'),
(994, 1, '::1', 'title', '/BEM/frontend', NULL, '2023-09-27 21:54:45'),
(995, 1, '::1', 'title', '/BEM/struktur-organisasi', NULL, '2023-09-27 21:54:58'),
(996, 1, '::1', 'title', '/BEM/visi-misi', NULL, '2023-09-27 21:55:05'),
(997, 1, '::1', 'title', '/BEM/frontend', NULL, '2023-09-27 21:55:07'),
(998, 1, '::1', 'title', '/BEM/visi-misi', NULL, '2023-09-27 21:55:19'),
(999, 1, '::1', 'title', '/BEM/tentang', NULL, '2023-09-27 21:55:36'),
(1000, 1, '::1', 'title', '/BEM/frontend', NULL, '2023-09-27 21:55:38'),
(1001, 1, '::1', 'title', '/BEM/tentang', NULL, '2023-09-27 21:55:45'),
(1002, 1, '::1', 'title', '/BEM/visi-misi', NULL, '2023-09-27 21:55:49'),
(1003, 1, '::1', 'Visi Misi', '/BEM/cpanel/visi_misi/update/8d0cd654ccdd076a8f067b1e61369ce13aefae8bac3c836050d2b81a76dc3ed50a92e7a52e2199ccf437c52e59e833a668331cb3da245b31b8f1b4f2f94bf176T80mbGnoqQ2mQQAJdUKFgI1r9TMXTX8mBLcX5ohtIFg-', NULL, '2023-09-27 21:56:19'),
(1004, 1, '::1', 'Visi Misi', '/BEM/cpanel/visi_misi', NULL, '2023-09-27 21:56:45'),
(1005, 1, '::1', 'title', '/BEM/visi-misi', NULL, '2023-09-27 21:58:13'),
(1006, 1, '::1', 'title', '/BEM/visi-misi', NULL, '2023-09-27 22:03:13'),
(1007, 1, '::1', 'Struktur Organisasi', '/BEM/cpanel/struktur_organisasi', NULL, '2023-09-27 22:05:14'),
(1008, 1, '::1', 'Kementerian', '/BEM/cpanel/kementerian', NULL, '2023-09-27 22:05:16'),
(1009, 1, '::1', 'title', '/BEM/tentang', NULL, '2023-09-27 22:05:54'),
(1010, 1, '::1', 'title', '/BEM/frontend', NULL, '2023-09-27 22:05:59'),
(1011, 1, '::1', 'title', '/BEM/visi-misi', NULL, '2023-09-27 22:06:23'),
(1012, 1, '::1', 'title', '/BEM/visi-misi', NULL, '2023-09-27 22:08:09'),
(1013, 1, '::1', 'title', '/BEM/struktur-organisasi', NULL, '2023-09-27 22:08:38'),
(1014, 1, '::1', 'title', '/BEM/visi-misi', NULL, '2023-09-27 22:08:42'),
(1015, 1, '::1', 'Struktur Organisasi', '/BEM/cpanel/struktur_organisasi', NULL, '2023-09-27 22:09:21'),
(1016, 1, '::1', 'Struktur Organisasi', '/BEM/cpanel/struktur_organisasi/update/ba39a5670eb2049561e18f305e8075afccb0458a56ac38b220c992624a30ba6e3c41f0593d9a28e1e9822ec36cdaf4ec1d8182e35d5c4f008ba4761379f05d20E7E_8m3nDQsiajEw8gKmkWcuaIm1OftS3nM2WmWjqgg-', NULL, '2023-09-27 22:09:25'),
(1017, 1, '::1', 'title', '/BEM/cpanel/core/imageUpload', NULL, '2023-09-27 22:09:37'),
(1018, 1, '::1', 'title', '/BEM/cpanel/core/imageUpload', NULL, '2023-09-27 22:12:28'),
(1019, 1, '::1', 'Struktur Organisasi', '/BEM/cpanel/struktur_organisasi/update_action/ba39a5670eb2049561e18f305e8075afccb0458a56ac38b220c992624a30ba6e3c41f0593d9a28e1e9822ec36cdaf4ec1d8182e35d5c4f008ba4761379f05d20E7E_8m3nDQsiajEw8gKmkWcuaIm1OftS3nM2WmWjqgg-', '{\"file-dir-path\":\"1-262d881296bb6041dcf230e0fe432195adcf3d0f\",\"path\":\"struktur.jpg\",\"submit\":\"update\"}', '2023-09-27 22:12:30'),
(1020, 1, '::1', 'Struktur Organisasi', '/BEM/cpanel/struktur_organisasi', NULL, '2023-09-27 22:12:30'),
(1021, 1, '::1', 'title', '/BEM/struktur-organisasi', NULL, '2023-09-27 22:14:37'),
(1022, 1, '::1', 'title', '/BEM/struktur-organisasi', NULL, '2023-09-27 22:14:56'),
(1023, 1, '::1', 'title', '/BEM/struktur-organisasi', NULL, '2023-09-27 22:15:19'),
(1024, 1, '::1', 'title', '/BEM/struktur-organisasi', NULL, '2023-09-27 22:15:23'),
(1025, 1, '::1', 'title', '/BEM/struktur-organisasi', NULL, '2023-09-27 22:15:35'),
(1026, 1, '::1', 'title', '/BEM/struktur-organisasi', NULL, '2023-09-27 22:15:37'),
(1027, 1, '::1', 'title', '/BEM/struktur-organisasi', NULL, '2023-09-27 22:15:47'),
(1028, 1, '::1', 'title', '/BEM/struktur-organisasi', NULL, '2023-09-27 22:15:56'),
(1029, 1, '::1', 'title', '/BEM/struktur-organisasi', NULL, '2023-09-27 22:19:06'),
(1030, 1, '::1', 'title', '/BEM/struktur-organisasi', NULL, '2023-09-27 22:25:43'),
(1031, 1, '::1', 'title', '/BEM/struktur-organisasi', NULL, '2023-09-27 22:26:01'),
(1032, 1, '::1', 'title', '/BEM/struktur-organisasi', NULL, '2023-09-27 22:26:23'),
(1033, 1, '::1', 'title', '/BEM/struktur-organisasi', NULL, '2023-09-27 22:26:34'),
(1034, 1, '::1', 'title', '/BEM/visi-misi', NULL, '2023-09-27 22:26:38'),
(1035, 1, '::1', 'title', '/BEM/visi-misi', NULL, '2023-09-27 22:26:44'),
(1036, 1, '::1', 'title', '/BEM/visi-misi', NULL, '2023-09-27 22:26:46'),
(1037, 1, '::1', 'title', '/BEM/tentang', NULL, '2023-09-27 22:26:48'),
(1038, 1, '::1', 'title', '/BEM/frontend', NULL, '2023-09-27 22:26:51'),
(1039, 1, '::1', 'title', '/BEM/frontend', NULL, '2023-09-27 22:27:56'),
(1040, 1, '::1', 'title', '/BEM/tentang', NULL, '2023-09-27 22:27:58'),
(1041, 1, '::1', 'title', '/BEM/visi-misi', NULL, '2023-09-27 22:28:11'),
(1042, 1, '::1', 'title', '/BEM/tentang', NULL, '2023-09-27 22:28:13'),
(1043, 1, '::1', 'title', '/BEM/tentang', NULL, '2023-09-27 22:28:30'),
(1044, 1, '::1', 'title', '/BEM/visi-misi', NULL, '2023-09-27 22:28:35'),
(1045, 1, '::1', 'title', '/BEM/visi-misi', NULL, '2023-09-27 22:29:01'),
(1046, 1, '::1', 'title', '/BEM/visi-misi', NULL, '2023-09-27 22:29:24'),
(1047, 1, '::1', 'title', '/BEM/visi-misi', NULL, '2023-09-27 22:29:26'),
(1048, 1, '::1', 'title', '/BEM/visi-misi', NULL, '2023-09-27 22:29:27'),
(1049, 1, '::1', 'title', '/BEM/visi-misi', NULL, '2023-09-27 22:29:35'),
(1050, 1, '::1', 'title', '/BEM/visi-misi', NULL, '2023-09-27 22:29:36'),
(1051, 1, '::1', 'title', '/BEM/visi-misi', NULL, '2023-09-27 22:30:10'),
(1052, 1, '::1', 'title', '/BEM/visi-misi', NULL, '2023-09-27 22:30:13'),
(1053, 1, '::1', 'title', '/BEM/tentang', NULL, '2023-09-27 22:30:15'),
(1054, 1, '::1', 'title', '/BEM/visi-misi', NULL, '2023-09-27 22:30:17'),
(1055, 1, '::1', 'title', '/BEM/tentang', NULL, '2023-09-27 22:30:21'),
(1056, 1, '::1', 'title', '/BEM/struktur-organisasi', NULL, '2023-09-27 22:30:27'),
(1057, 1, '::1', 'title', '/BEM/struktur-organisasi', NULL, '2023-09-27 22:31:04'),
(1058, 1, '::1', 'title', '/BEM/struktur-organisasi', NULL, '2023-09-27 22:32:29'),
(1059, 1, '::1', 'title', '/BEM/kementerian', NULL, '2023-09-27 22:32:30'),
(1060, 1, '::1', 'title', '/BEM/kementerian', NULL, '2023-09-27 22:33:11'),
(1061, 1, '::1', 'title', '/BEM/kementerian', NULL, '2023-09-27 22:34:04'),
(1062, 1, '::1', 'Kementerian', '/BEM/cpanel/kementerian', NULL, '2023-09-27 22:39:30'),
(1063, 1, '::1', 'Kementerian', '/BEM/cpanel/kementerian/update/1a1449e9081f3188df3ac47a3a46b0ad470b7ef8d1a1277355d3bac9643dd978f12a78349731434319c02ad64395b2faaa5517fa2ee05073036a207b6aa18149lw3Z6ensN7rRnHg3o2TW8yCL4XeXW531Ff8VM4Z~iYg-', NULL, '2023-09-27 22:39:33'),
(1064, 1, '::1', 'Kementerian', '/BEM/cpanel/kementerian/update_action/1a1449e9081f3188df3ac47a3a46b0ad470b7ef8d1a1277355d3bac9643dd978f12a78349731434319c02ad64395b2faaa5517fa2ee05073036a207b6aa18149lw3Z6ensN7rRnHg3o2TW8yCL4XeXW531Ff8VM4Z~iYg-', '{\"nama\":\"Sinergitas Mahasiswa.\",\"deskripsi\":\"Menjalin hubungan yang sinergis dan harmonis dengan seluruh organisasi, badan, lembaga, dan komunitas dalam lingkup UNAIR guna menjamin keberadaan dan keberpihakan di kalangan mahasiswa UNAIR.\",\"submit\":\"update\"}', '2023-09-27 22:39:44'),
(1065, 1, '::1', 'Kementerian', '/BEM/cpanel/kementerian', NULL, '2023-09-27 22:39:44'),
(1066, 1, '::1', 'Kementerian', '/BEM/cpanel/kementerian/detail/df1baaf94e146891468b0ee5433066d4694cb5cbe068dc02458a38bb4bf04a6400f0177340fdda38ca188bc0ce1ba46a0b2b94474c44fc537138138136b98d55fwvCgnpxul8WQ7W2OMiT46K52SkjEI8DpXJvbDFyWv8-', NULL, '2023-09-27 22:39:47'),
(1067, 1, '::1', 'Kementerian', '/BEM/cpanel/kementerian', NULL, '2023-09-27 22:39:50'),
(1068, 1, '::1', 'Kementerian', '/BEM/cpanel/kementerian', NULL, '2023-09-27 22:40:09'),
(1069, 1, '::1', 'Kementerian', '/BEM/cpanel/kementerian/update/8ef31711c251b7bdda810a6587b9455d591412ae50e317f6dd0275e19086ff457503f7a39d19f6feda13cb5b6bcae138f3ac54e1986de2042e5fdea693afd9a8RBeGAPpQJzCA2hG9zqbelBOovtBqUPaRsh~jw2YU2lI-', NULL, '2023-09-27 22:40:11'),
(1070, 1, '::1', 'Kementerian', '/BEM/cpanel/kementerian/update_action/8ef31711c251b7bdda810a6587b9455d591412ae50e317f6dd0275e19086ff457503f7a39d19f6feda13cb5b6bcae138f3ac54e1986de2042e5fdea693afd9a8RBeGAPpQJzCA2hG9zqbelBOovtBqUPaRsh~jw2YU2lI-', '{\"nama\":\"Sinergitas Mahasiswa.\",\"deskripsi\":\"<p><strong>Menjalin hubungan<\\/strong> yang sinergis dan harmonis dengan seluruh organisasi, badan, lembaga, dan komunitas dalam lingkup UNAIR guna menjamin keberadaan dan keberpihakan di kalangan mahasiswa UNAIR.<\\/p>\\r\\n\",\"submit\":\"update\"}', '2023-09-27 22:40:20'),
(1071, 1, '::1', 'Kementerian', '/BEM/cpanel/kementerian/update/8ef31711c251b7bdda810a6587b9455d591412ae50e317f6dd0275e19086ff457503f7a39d19f6feda13cb5b6bcae138f3ac54e1986de2042e5fdea693afd9a8RBeGAPpQJzCA2hG9zqbelBOovtBqUPaRsh~jw2YU2lI-', NULL, '2023-09-27 22:40:26'),
(1072, 1, '::1', 'Kementerian', '/BEM/cpanel/kementerian', NULL, '2023-09-27 22:40:33'),
(1073, 1, '::1', 'Kementerian', '/BEM/cpanel/kementerian/update/febbef8acf76f1616f506bf1ddd1e64394450bd2be03c5f169db69d281c8c0d4ef7b4df71a50d6909ec2cdc2c0133704cd45c9c65fa3d33fde495ed12c3fe53fjN~thHR56luJrDdT0jO53Fsizgalm1HNPtcgy3Ajz8A-', NULL, '2023-09-27 22:40:36'),
(1074, 1, '::1', 'Kementerian', '/BEM/cpanel/kementerian/update_action/febbef8acf76f1616f506bf1ddd1e64394450bd2be03c5f169db69d281c8c0d4ef7b4df71a50d6909ec2cdc2c0133704cd45c9c65fa3d33fde495ed12c3fe53fjN~thHR56luJrDdT0jO53Fsizgalm1HNPtcgy3Ajz8A-', '{\"nama\":\"Sinergitas Mahasiswa.\",\"deskripsi\":\"<p><strong>Menjalin hubungan <\\/strong>yang sinergis dan harmonis dengan seluruh organisasi, badan, lembaga, dan komunitas dalam lingkup UNAIR guna menjamin keberadaan dan keberpihakan di kalangan mahasiswa UNAIR.<\\/p>\\r\\n\",\"submit\":\"update\"}', '2023-09-27 22:40:42'),
(1075, 1, '::1', 'Kementerian', '/BEM/cpanel/kementerian/update/febbef8acf76f1616f506bf1ddd1e64394450bd2be03c5f169db69d281c8c0d4ef7b4df71a50d6909ec2cdc2c0133704cd45c9c65fa3d33fde495ed12c3fe53fjN~thHR56luJrDdT0jO53Fsizgalm1HNPtcgy3Ajz8A-', NULL, '2023-09-27 22:41:46'),
(1076, 1, '::1', 'Kementerian', '/BEM/cpanel/kementerian/update_action/febbef8acf76f1616f506bf1ddd1e64394450bd2be03c5f169db69d281c8c0d4ef7b4df71a50d6909ec2cdc2c0133704cd45c9c65fa3d33fde495ed12c3fe53fjN~thHR56luJrDdT0jO53Fsizgalm1HNPtcgy3Ajz8A-', '{\"nama\":\"Sinergitas Mahasiswa.\",\"deskripsi\":\"<p><strong>Menjalin hubungan<\\/strong> yang sinergis dan harmonis dengan seluruh organisasi, badan, lembaga, dan komunitas dalam lingkup UNAIR guna menjamin keberadaan dan keberpihakan di kalangan mahasiswa UNAIR.<\\/p>\\r\\n\",\"submit\":\"update\"}', '2023-09-27 22:41:51'),
(1077, 1, '::1', 'Kementerian', '/BEM/cpanel/kementerian/update/febbef8acf76f1616f506bf1ddd1e64394450bd2be03c5f169db69d281c8c0d4ef7b4df71a50d6909ec2cdc2c0133704cd45c9c65fa3d33fde495ed12c3fe53fjN~thHR56luJrDdT0jO53Fsizgalm1HNPtcgy3Ajz8A-', NULL, '2023-09-27 22:41:53'),
(1078, 1, '::1', 'Kementerian', '/BEM/cpanel/kementerian', NULL, '2023-09-27 22:41:55'),
(1079, 1, '::1', 'Kementerian', '/BEM/cpanel/kementerian', NULL, '2023-09-27 22:41:58'),
(1080, 1, '::1', 'Kementerian', '/BEM/cpanel/kementerian/update/a9505b2a6556f472453b8f66b44f331eeb2c1925783ac628f8e4dccd2aef23ce2603e46f9f09a4bead507b12e3109e68df8a4870e1d1e0106a6e9e0e503b5ac1XHI~BYu5zUNV7bZ~1~~wo_nDWHTFAOHySTyO_mb7eFM-', NULL, '2023-09-27 22:42:00'),
(1081, 1, '::1', 'Kementerian', '/BEM/cpanel/kementerian/update_action/a9505b2a6556f472453b8f66b44f331eeb2c1925783ac628f8e4dccd2aef23ce2603e46f9f09a4bead507b12e3109e68df8a4870e1d1e0106a6e9e0e503b5ac1XHI~BYu5zUNV7bZ~1~~wo_nDWHTFAOHySTyO_mb7eFM-', '{\"nama\":\"Sinergitas Mahasiswa.\",\"deskripsi\":\"<p><strong>Menjalin hubungan<\\/strong> yang sinergis dan harmonis dengan seluruh organisasi, badan, lembaga, dan komunitas dalam lingkup UNAIR guna menjamin keberadaan dan keberpihakan di kalangan mahasiswa UNAIR.<\\/p>\\r\\n\",\"submit\":\"update\"}', '2023-09-27 22:42:05'),
(1082, 1, '::1', 'Kementerian', '/BEM/cpanel/kementerian/update/a9505b2a6556f472453b8f66b44f331eeb2c1925783ac628f8e4dccd2aef23ce2603e46f9f09a4bead507b12e3109e68df8a4870e1d1e0106a6e9e0e503b5ac1XHI~BYu5zUNV7bZ~1~~wo_nDWHTFAOHySTyO_mb7eFM-', NULL, '2023-09-27 22:42:33'),
(1083, 1, '::1', 'Kementerian', '/BEM/cpanel/kementerian/update_action/a9505b2a6556f472453b8f66b44f331eeb2c1925783ac628f8e4dccd2aef23ce2603e46f9f09a4bead507b12e3109e68df8a4870e1d1e0106a6e9e0e503b5ac1XHI~BYu5zUNV7bZ~1~~wo_nDWHTFAOHySTyO_mb7eFM-', '{\"nama\":\"Sinergitas Mahasiswa.\",\"deskripsi\":\"<p><strong>Menjalin hubungan<\\/strong> yang sinergis dan harmonis dengan seluruh organisasi, badan, lembaga, dan komunitas dalam lingkup UNAIR guna menjamin keberadaan dan keberpihakan di kalangan mahasiswa UNAIR.<\\/p>\\r\\n\",\"submit\":\"update\"}', '2023-09-27 22:42:37'),
(1084, 1, '::1', 'Kementerian', '/BEM/cpanel/kementerian/update/a9505b2a6556f472453b8f66b44f331eeb2c1925783ac628f8e4dccd2aef23ce2603e46f9f09a4bead507b12e3109e68df8a4870e1d1e0106a6e9e0e503b5ac1XHI~BYu5zUNV7bZ~1~~wo_nDWHTFAOHySTyO_mb7eFM-', NULL, '2023-09-27 22:42:40'),
(1085, 1, '::1', 'Kementerian', '/BEM/cpanel/kementerian', NULL, '2023-09-27 22:42:42'),
(1086, 1, '::1', 'Kementerian', '/BEM/cpanel/kementerian', NULL, '2023-09-27 22:42:46'),
(1087, 1, '::1', 'Kementerian', '/BEM/cpanel/kementerian/update/52a9ac1eb284652e69bfc76a99127e621d17fae3400cab35a2f8e018b81ca550e6a32078bd4cf7cf3db0433b7bfadb986b4ad8eabc4275d444280b675fdec4a576JHVJGL0XQ0MKLfzXHf1FIfimH8og_aOCEHbp5Fmsc-', NULL, '2023-09-27 22:42:49'),
(1088, 1, '::1', 'Kementerian', '/BEM/cpanel/kementerian/update_action/52a9ac1eb284652e69bfc76a99127e621d17fae3400cab35a2f8e018b81ca550e6a32078bd4cf7cf3db0433b7bfadb986b4ad8eabc4275d444280b675fdec4a576JHVJGL0XQ0MKLfzXHf1FIfimH8og_aOCEHbp5Fmsc-', '{\"nama\":\"Sinergitas Mahasiswa.\",\"deskripsi\":\"<p><strong>Menjalin hubungan<\\/strong> yang sinergis dan harmonis dengan seluruh organisasi, badan, lembaga, dan komunitas dalam lingkup UNAIR guna menjamin keberadaan dan keberpihakan di kalangan mahasiswa UNAIR.<\\/p>\\r\\n\",\"submit\":\"update\"}', '2023-09-27 22:42:53'),
(1089, 1, '::1', 'Kementerian', '/BEM/cpanel/kementerian/update/52a9ac1eb284652e69bfc76a99127e621d17fae3400cab35a2f8e018b81ca550e6a32078bd4cf7cf3db0433b7bfadb986b4ad8eabc4275d444280b675fdec4a576JHVJGL0XQ0MKLfzXHf1FIfimH8og_aOCEHbp5Fmsc-', NULL, '2023-09-27 22:43:43'),
(1090, 1, '::1', 'Kementerian', '/BEM/cpanel/kementerian/update/52a9ac1eb284652e69bfc76a99127e621d17fae3400cab35a2f8e018b81ca550e6a32078bd4cf7cf3db0433b7bfadb986b4ad8eabc4275d444280b675fdec4a576JHVJGL0XQ0MKLfzXHf1FIfimH8og_aOCEHbp5Fmsc-', NULL, '2023-09-27 22:43:45'),
(1091, 1, '::1', 'Kementerian', '/BEM/cpanel/kementerian/update/52a9ac1eb284652e69bfc76a99127e621d17fae3400cab35a2f8e018b81ca550e6a32078bd4cf7cf3db0433b7bfadb986b4ad8eabc4275d444280b675fdec4a576JHVJGL0XQ0MKLfzXHf1FIfimH8og_aOCEHbp5Fmsc-', NULL, '2023-09-27 22:44:01'),
(1092, 1, '::1', 'Kementerian', '/BEM/cpanel/kementerian/update_action/52a9ac1eb284652e69bfc76a99127e621d17fae3400cab35a2f8e018b81ca550e6a32078bd4cf7cf3db0433b7bfadb986b4ad8eabc4275d444280b675fdec4a576JHVJGL0XQ0MKLfzXHf1FIfimH8og_aOCEHbp5Fmsc-', '{\"nama\":\"Sinergitas Mahasiswa.\",\"deskripsi\":\"<p>Menjalin hubungan yang sinergis dan harmonis dengan seluruh organisasi<strong>, badan, lembaga, <\\/strong>dan komunitas dalam lingkup UNAIR guna menjamin keberadaan dan keberpihakan di kalangan mahasiswa UNAIR.<\\/p>\\r\\n\",\"submit\":\"update\"}', '2023-09-27 22:44:16'),
(1093, 1, '::1', 'Kementerian', '/BEM/cpanel/kementerian/update/52a9ac1eb284652e69bfc76a99127e621d17fae3400cab35a2f8e018b81ca550e6a32078bd4cf7cf3db0433b7bfadb986b4ad8eabc4275d444280b675fdec4a576JHVJGL0XQ0MKLfzXHf1FIfimH8og_aOCEHbp5Fmsc-', NULL, '2023-09-27 22:44:19'),
(1094, 1, '::1', 'Kementerian', '/BEM/cpanel/kementerian/update/52a9ac1eb284652e69bfc76a99127e621d17fae3400cab35a2f8e018b81ca550e6a32078bd4cf7cf3db0433b7bfadb986b4ad8eabc4275d444280b675fdec4a576JHVJGL0XQ0MKLfzXHf1FIfimH8og_aOCEHbp5Fmsc-', NULL, '2023-09-27 22:44:47'),
(1095, 1, '::1', 'Kementerian', '/BEM/cpanel/kementerian/update_action/52a9ac1eb284652e69bfc76a99127e621d17fae3400cab35a2f8e018b81ca550e6a32078bd4cf7cf3db0433b7bfadb986b4ad8eabc4275d444280b675fdec4a576JHVJGL0XQ0MKLfzXHf1FIfimH8og_aOCEHbp5Fmsc-', '{\"nama\":\"Sinergitas Mahasiswa.\",\"deskripsi\":\"<p><strong>Menjalin hubungan<\\/strong> yang sinergis dan harmonis dengan seluruh organisasi, badan, lembaga, dan komunitas dalam lingkup UNAIR guna menjamin keberadaan dan keberpihakan di kalangan mahasiswa UNAIR.<\\/p>\\r\\n\",\"submit\":\"update\"}', '2023-09-27 22:44:55'),
(1096, 1, '::1', 'Kementerian', '/BEM/cpanel/kementerian', NULL, '2023-09-27 22:44:55'),
(1097, 1, '::1', 'title', '/BEM/kementerian', NULL, '2023-09-27 22:48:42'),
(1098, 1, '::1', 'title', '/BEM/kementerian', NULL, '2023-09-27 22:50:26'),
(1099, 1, '::1', 'Kementerian', '/BEM/cpanel/kementerian/update/87b514888dab46e8c379dfda788847f971ed80dd6aa17c09de453c2528d0942167367d597fe3c5017ea45a74ea6290ffefcbc485751b044899096d590ea2ef3d12S4Q4luk3sJnnjnqMqolpUj5pOFGRRaYBghTXM653U-', NULL, '2023-09-27 22:50:44'),
(1100, 1, '::1', 'Kementerian', '/BEM/cpanel/kementerian/update_action/87b514888dab46e8c379dfda788847f971ed80dd6aa17c09de453c2528d0942167367d597fe3c5017ea45a74ea6290ffefcbc485751b044899096d590ea2ef3d12S4Q4luk3sJnnjnqMqolpUj5pOFGRRaYBghTXM653U-', '{\"nama\":\"Sinergitas Mahasiswa.\",\"deskripsi\":\"<p>Menjalin hubungan yang sinergis dan harmonis dengan seluruh organisasi, badan, lembaga, dan komunitas dalam lingkup UNAIR guna menjamin keberadaan dan keberpihakan di kalangan mahasiswa UNAIR.<\\/p>\\r\\n\",\"submit\":\"update\"}', '2023-09-27 22:51:17'),
(1101, 1, '::1', 'Kementerian', '/BEM/cpanel/kementerian', NULL, '2023-09-27 22:51:17'),
(1102, 1, '::1', 'title', '/BEM/kementerian', NULL, '2023-09-27 22:51:26'),
(1103, 1, '::1', 'title', '/BEM/kementerian', NULL, '2023-09-27 22:53:28'),
(1104, 1, '::1', 'title', '/BEM/kementerian', NULL, '2023-09-27 22:53:43'),
(1105, 1, '::1', 'title', '/BEM/kementerian', NULL, '2023-09-27 22:54:16'),
(1106, 1, '::1', 'title', '/BEM/kementerian', NULL, '2023-09-27 22:56:24'),
(1107, 1, '::1', 'title', '/BEM/kementerian', NULL, '2023-09-27 22:57:21'),
(1108, 1, '::1', 'title', '/BEM/kementerian', NULL, '2023-09-27 23:03:37'),
(1109, 1, '::1', 'title', '/BEM/cpanel/dashboard', NULL, '2023-09-28 07:50:24'),
(1110, 1, '::1', 'title', '/BEM/', NULL, '2023-09-28 07:50:34'),
(1111, 1, '::1', 'title', '/BEM/tentang', NULL, '2023-09-28 07:50:38'),
(1112, 1, '::1', 'title', '/BEM/visi-misi', NULL, '2023-09-28 07:50:42'),
(1113, 1, '::1', 'title', '/BEM/struktur-organisasi', NULL, '2023-09-28 07:50:48'),
(1114, 1, '::1', 'title', '/BEM/kementerian', NULL, '2023-09-28 07:51:38'),
(1115, 1, '::1', 'title', '/BEM/kementerian', NULL, '2023-09-28 07:56:04'),
(1116, 1, '::1', 'title', '/BEM/struktur-organisasi', NULL, '2023-09-28 07:56:08'),
(1117, 1, '::1', 'title', '/BEM/kementerian', NULL, '2023-09-28 07:56:09'),
(1118, 1, '::1', 'title', '/BEM/kementerian', NULL, '2023-09-28 07:56:21'),
(1119, 1, '::1', 'title', '/BEM/kementerian', NULL, '2023-09-28 07:56:30'),
(1120, 1, '::1', 'title', '/BEM/kementerian', NULL, '2023-09-28 07:57:23'),
(1121, 1, '::1', 'title', '/BEM/kementerian', NULL, '2023-09-28 07:57:27'),
(1122, 1, '::1', 'title', '/BEM/kementerian', NULL, '2023-09-28 07:57:40'),
(1123, 1, '::1', 'title', '/BEM/kementerian', NULL, '2023-09-28 07:58:37'),
(1124, 1, '::1', 'title', '/BEM/kementerian', NULL, '2023-09-28 07:58:40'),
(1125, 1, '::1', 'title', '/BEM/kementerian', NULL, '2023-09-28 07:59:35'),
(1126, 1, '::1', 'title', '/BEM/kementerian', NULL, '2023-09-28 07:59:37'),
(1127, 1, '::1', 'title', '/BEM/kementerian', NULL, '2023-09-28 07:59:45'),
(1128, 1, '::1', 'title', '/BEM/kementerian', NULL, '2023-09-28 07:59:53'),
(1129, 1, '::1', 'title', '/BEM/struktur-organisasi', NULL, '2023-09-28 07:59:56'),
(1130, 1, '::1', 'title', '/BEM/visi-misi', NULL, '2023-09-28 07:59:59'),
(1131, 1, '::1', 'title', '/BEM/struktur-organisasi', NULL, '2023-09-28 08:00:00'),
(1132, 1, '::1', 'title', '/BEM/kementerian', NULL, '2023-09-28 08:00:01'),
(1133, 1, '::1', 'title', '/BEM/kementerian', NULL, '2023-09-28 08:02:09'),
(1134, 1, '::1', 'title', '/BEM/kementerian', NULL, '2023-09-28 08:02:26'),
(1135, 1, '::1', 'title', '/BEM/kementerian', NULL, '2023-09-28 08:02:28'),
(1136, 1, '::1', 'title', '/BEM/kementerian', NULL, '2023-09-28 08:02:30'),
(1137, 1, '::1', 'title', '/BEM/kementerian', NULL, '2023-09-28 08:02:32'),
(1138, 1, '::1', 'title', '/BEM/kementerian', NULL, '2023-09-28 08:02:36'),
(1139, 1, '::1', 'title', '/BEM/kementerian', NULL, '2023-09-28 08:02:50'),
(1140, 1, '::1', 'title', '/BEM/kementerian', NULL, '2023-09-28 08:02:56'),
(1141, 1, '::1', 'title', '/BEM/kementerian', NULL, '2023-09-28 08:03:03'),
(1142, 1, '::1', 'title', '/BEM/struktur-organisasi', NULL, '2023-09-28 08:03:06'),
(1143, 1, '::1', 'title', '/BEM/kementerian', NULL, '2023-09-28 08:03:08'),
(1144, 1, '::1', 'title', '/BEM/kementerian', NULL, '2023-09-28 08:04:46'),
(1145, 1, '::1', 'title', '/BEM/kementerian', NULL, '2023-09-28 08:06:04'),
(1146, 1, '::1', 'title', '/BEM/kementerian', NULL, '2023-09-28 08:06:46'),
(1147, 1, '::1', 'title', '/BEM/kementerian', NULL, '2023-09-28 08:06:54'),
(1148, 1, '::1', 'title', '/BEM/kementerian', NULL, '2023-09-28 08:07:01'),
(1149, 1, '::1', 'title', '/BEM/kementerian', NULL, '2023-09-28 08:10:48'),
(1150, 1, '::1', 'title', '/BEM/kementerian', NULL, '2023-09-28 08:11:21'),
(1151, 1, '::1', 'title', '/BEM/kementerian', NULL, '2023-09-28 08:11:37'),
(1152, 1, '::1', 'title', '/BEM/kementerian', NULL, '2023-09-28 08:11:55'),
(1153, 1, '::1', 'title', '/BEM/kementerian', NULL, '2023-09-28 08:12:12'),
(1154, 1, '::1', 'title', '/BEM/kementerian', NULL, '2023-09-28 08:12:59'),
(1155, 1, '::1', 'title', '/BEM/kementerian', NULL, '2023-09-28 08:13:02'),
(1156, 1, '::1', 'title', '/BEM/kementerian', NULL, '2023-09-28 08:14:45'),
(1157, 1, '::1', 'title', '/BEM/struktur-organisasi', NULL, '2023-09-28 08:18:36'),
(1158, 1, '::1', 'title', '/BEM/ukm', NULL, '2023-09-28 08:18:39'),
(1159, 1, '::1', 'title', '/BEM/ukm', NULL, '2023-09-28 08:19:00'),
(1160, 1, '::1', 'title', '/BEM/ukm', NULL, '2023-09-28 08:19:31'),
(1161, 1, '::1', 'title', '/BEM/ukm', NULL, '2023-09-28 08:19:46'),
(1162, 1, '::1', 'title', '/BEM/hima', NULL, '2023-09-28 08:19:49'),
(1163, 1, '::1', 'title', '/BEM/hima', NULL, '2023-09-28 08:21:37'),
(1164, 1, '::1', 'title', '/BEM/hima', NULL, '2023-09-28 08:24:30'),
(1165, 1, '::1', 'title', '/BEM/hima', NULL, '2023-09-28 08:27:58'),
(1166, 1, '::1', 'title', '/BEM/hima', NULL, '2023-09-28 08:28:17'),
(1167, 1, '::1', 'title', '/BEM/hima', NULL, '2023-09-28 08:28:34'),
(1168, 1, '::1', 'title', '/BEM/frontend', NULL, '2023-09-28 08:28:48'),
(1169, 1, '::1', 'title', '/BEM/frontend', NULL, '2023-09-28 08:31:49'),
(1170, 1, '::1', 'title', '/BEM/frontend', NULL, '2023-09-28 08:32:17'),
(1171, 1, '::1', 'title', '/BEM/frontend', NULL, '2023-09-28 08:33:00'),
(1172, 1, '::1', 'title', '/BEM/frontend', NULL, '2023-09-28 08:33:47'),
(1173, 1, '::1', 'title', '/BEM/frontend', NULL, '2023-09-28 08:34:00'),
(1174, 1, '::1', 'title', '/BEM/frontend', NULL, '2023-09-28 08:34:15'),
(1175, 1, '::1', 'title', '/BEM/cpanel/dashboard', NULL, '2023-09-28 08:36:28'),
(1176, 1, '::1', 'Main Menu', '/BEM/cpanel/main_menu', NULL, '2023-09-28 08:36:32'),
(1177, 1, '::1', 'Main Menu', '/BEM/cpanel/main_menu/add', NULL, '2023-09-28 08:36:34'),
(1178, 1, '::1', 'title', '/BEM/cpanel/core/icon', NULL, '2023-09-28 08:36:37'),
(1179, 1, '::1', 'Main Menu', '/BEM/cpanel/main_menu/add', NULL, '2023-09-28 08:42:02'),
(1180, 1, '::1', 'title', '/BEM/cpanel/core/icon', NULL, '2023-09-28 08:42:04'),
(1181, 1, '::1', 'Main Menu', '/BEM/cpanel/main_menu/add', NULL, '2023-09-28 08:46:32'),
(1182, 1, '::1', 'title', '/BEM/cpanel/core/icon', NULL, '2023-09-28 08:46:34'),
(1183, 1, '::1', 'Main Menu', '/BEM/cpanel/main_menu/add', NULL, '2023-09-28 08:49:02'),
(1184, 1, '::1', 'title', '/BEM/cpanel/core/icon', NULL, '2023-09-28 08:49:05'),
(1185, 1, '::1', 'Main Menu', '/BEM/cpanel/main_menu/add', NULL, '2023-09-28 08:49:33'),
(1186, 1, '::1', 'title', '/BEM/cpanel/core/icon', NULL, '2023-09-28 08:49:36'),
(1187, 1, '::1', 'title', '/BEM/cpanel/core/icon', NULL, '2023-09-28 08:49:43'),
(1188, 1, '::1', 'Sosial Media', '/BEM/cpanel/sosial_media', NULL, '2023-09-28 08:57:04'),
(1189, 1, '::1', 'Sosial Media', '/BEM/cpanel/sosial_media/add', NULL, '2023-09-28 08:57:08'),
(1190, 1, '::1', 'Sosial Media', '/BEM/cpanel/sosial_media/add', NULL, '2023-09-28 08:58:36'),
(1191, 1, '::1', 'Sosial Media', '/BEM/cpanel/sosial_media/add', NULL, '2023-09-28 09:00:06'),
(1192, 1, '::1', 'Sosial Media', '/BEM/cpanel/sosial_media/add', NULL, '2023-09-28 09:01:47'),
(1193, 1, '::1', 'Sosial Media', '/BEM/cpanel/sosial_media/add', NULL, '2023-09-28 09:03:18'),
(1194, 1, '::1', 'title', '/BEM/cpanel/core/icon', NULL, '2023-09-28 09:03:21'),
(1195, 1, '::1', 'Sosial Media', '/BEM/cpanel/sosial_media/add', NULL, '2023-09-28 09:03:32'),
(1196, 1, '::1', 'title', '/BEM/cpanel/core/icon-sosmed', NULL, '2023-09-28 09:03:34'),
(1197, 1, '::1', 'Sosial Media', '/BEM/cpanel/sosial_media/add', NULL, '2023-09-28 09:04:22'),
(1198, 1, '::1', 'Sosial Media', '/BEM/cpanel/sosial_media/add', NULL, '2023-09-28 09:04:41'),
(1199, 1, '::1', 'title', '/BEM/cpanel/core/icon_sosmed', NULL, '2023-09-28 09:04:43'),
(1200, 1, '::1', 'Sosial Media', '/BEM/cpanel/sosial_media/add', NULL, '2023-09-28 09:05:59'),
(1201, 1, '::1', 'title', '/BEM/cpanel/core/icon_sosmed', NULL, '2023-09-28 09:06:02'),
(1202, 1, '::1', 'Main Menu', '/BEM/cpanel/main_menu', NULL, '2023-09-28 09:10:19'),
(1203, 1, '::1', 'Main Menu', '/BEM/cpanel/main_menu', NULL, '2023-09-28 09:12:26'),
(1204, 1, '::1', 'M crud Generator', '/BEM/cpanel/m_crud_generator', NULL, '2023-09-28 09:12:29'),
(1205, 1, '::1', 'M crud Generator', '/BEM/cpanel/m_crud_generator/delete/dc1d321f5f871f35c894a2cd76b7c26b38227b11766d30ef057d70de12e76a1510352965053b8bad9c58d4f3ac6b6c944f2610638c02cd7586d25212175175fbwgEDaxksWTwSeeNFjmam02ymY6mPshFCgoP2rWPjDGE-/6b0acd28cd2435179484412baf89c9a70da99d37e8941195a0645789b9ffbe40fd66a968b80e89f23a8d22806e2ee64570f3453a82d0e11a4296253544ffa325E5lgWWSKiMQCz97YZVHwahHzO_xCABVBEaNKx4zf6fU-', NULL, '2023-09-28 09:13:34'),
(1206, 1, '::1', 'title', '/BEM/mcrud', NULL, '2023-09-28 09:13:36'),
(1207, 1, '::1', 'title', '/BEM//mcrud/getTable/sosial_media', NULL, '2023-09-28 09:13:39'),
(1208, 1, '::1', 'title', '/BEM/mcrud/action', '{\"table\":\"sosial_media\",\"title\":\"Sosial Media\",\"controllers\":\"Sosial_media\",\"primary_key\":\"id\",\"mcrud\":{\"1\":{\"id\":{\"field_name\":\"id\",\"sort\":\"1\",\"field_label\":\"Id\",\"form_type\":\"number\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"2\":{\"sosmed\":{\"field_name\":\"sosmed\",\"sort\":\"2\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"show_in_filter\":\"true\",\"field_label\":\"Sosmed\",\"form_type\":\"text\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"3\":{\"link\":{\"field_name\":\"link\",\"sort\":\"3\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"show_in_filter\":\"true\",\"field_label\":\"Link\",\"form_type\":\"text\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"4\":{\"icon\":{\"field_name\":\"icon\",\"sort\":\"4\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"show_in_filter\":\"true\",\"field_label\":\"Icon\",\"form_type\":\"text\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}}}}', '2023-09-28 09:13:52'),
(1209, 1, '::1', 'M crud Generator', '/BEM/cpanel/m_crud_generator', NULL, '2023-09-28 09:13:57'),
(1210, 1, '::1', 'Sosial Media', '/BEM/cpanel/Sosial_media', NULL, '2023-09-28 09:14:11'),
(1211, 1, '::1', 'Sosial Media', '/BEM/cpanel/sosial_media', NULL, '2023-09-28 09:14:19'),
(1212, 1, '::1', 'M crud Generator', '/BEM/cpanel/m_crud_generator', NULL, '2023-09-28 09:14:21'),
(1213, 1, '::1', 'M crud Generator', '/BEM/cpanel/m_crud_generator/delete/4e2af5fdcc049aa91a6dcdf91252bfcbcabf9c14228b9f88ec0c434944f93d040286b8f22d4b0c654b04cf9105ce680b089473f25d1c8ad5bb55c2895a9d1abdzIl~BR10EQGm6kykrIKhKrGHljYNSeExAEqDDBDiJ68-/ad429c65d1b3b500314d779643a7c2daf96c0fa4a94ae36b79c08e63f2848750a99356aa58f5a8108c45a3efbbc4f8e3a5545cb4b52d054cbd88381cd0a4607bwBpfL3EXgApvg1RS4jp2T5asYGqmyYH36W9HbUMRc3w-', NULL, '2023-09-28 09:14:29'),
(1214, 1, '::1', 'title', '/BEM/mcrud', NULL, '2023-09-28 09:14:31'),
(1215, 1, '::1', 'title', '/BEM//mcrud/getTable/sosial_media', NULL, '2023-09-28 09:14:34'),
(1216, 1, '::1', 'M crud Generator', '/BEM/cpanel/m_crud_generator', NULL, '2023-09-28 09:15:14'),
(1217, 1, '::1', 'title', '/BEM/mcrud', NULL, '2023-09-28 09:15:18'),
(1218, 1, '::1', 'title', '/BEM//mcrud/getTable/sosial_media', NULL, '2023-09-28 09:15:28'),
(1219, 1, '::1', 'title', '/BEM/mcrud/action', '{\"table\":\"sosial_media\",\"title\":\"Sosial Media\",\"controllers\":\"Sosial_media\",\"primary_key\":\"id\",\"mcrud\":{\"1\":{\"id\":{\"field_name\":\"id\",\"sort\":\"1\",\"field_label\":\"Id\",\"form_type\":\"number\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"2\":{\"sosmed\":{\"field_name\":\"sosmed\",\"sort\":\"2\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"show_in_filter\":\"true\",\"field_label\":\"Sosmed\",\"form_type\":\"text\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\",\"rules\":[\"required\"]}},\"3\":{\"link\":{\"field_name\":\"link\",\"sort\":\"3\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"show_in_filter\":\"true\",\"field_label\":\"Link\",\"form_type\":\"text\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\",\"rules\":[\"required\"]}},\"4\":{\"icon\":{\"field_name\":\"icon\",\"sort\":\"4\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"show_in_filter\":\"true\",\"field_label\":\"Icon\",\"form_type\":\"text\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}}}}', '2023-09-28 09:15:52'),
(1220, 1, '::1', 'M crud Generator', '/BEM/cpanel/m_crud_generator', NULL, '2023-09-28 09:15:56'),
(1221, 1, '::1', 'Sosial Media', '/BEM/cpanel/sosial_media', NULL, '2023-09-28 09:17:49'),
(1222, 1, '::1', 'Sosial Media', '/BEM/cpanel/sosial_media/delete/6c4b52290a385931ca9e844a235533dbd1f630c203004df0ed0cbbf8562361a7d2cfbf7b1b98bd3f881b33e027a9c336bd9c19da7987eeadf0c01fc6425c2e4ajG3dcOpp2uTTAGLDOAgE8FJAAqTCpjn~aJGKma~GD0I-', NULL, '2023-09-28 09:17:54'),
(1223, 1, '::1', 'Sosial Media', '/BEM/cpanel/sosial_media/add', NULL, '2023-09-28 09:17:57'),
(1224, 1, '::1', 'title', '/BEM/cpanel/core/icon_sosmed', NULL, '2023-09-28 09:18:25'),
(1225, 1, '::1', 'Sosial Media', '/BEM/cpanel/sosial_media/add_action', '{\"sosmed\":\"Instagram\",\"link\":\"https:\\/\\/instagram.com\\/\",\"icon\":\"bi bi-instagram\",\"submit\":\"add\"}', '2023-09-28 09:18:33'),
(1226, 1, '::1', 'Sosial Media', '/BEM/cpanel/sosial_media', NULL, '2023-09-28 09:18:33'),
(1227, 1, '::1', 'Sosial Media', '/BEM/cpanel/sosial_media', NULL, '2023-09-28 09:19:45'),
(1228, 1, '::1', 'Sosial Media', '/BEM/cpanel/sosial_media/update/26c7536747f00b3836f8c4e03d19434dfebe0af93cacbe262d0800e6814bd64e2ff029eb7182f8132676651ebb74ce37fad82fbd46466e3e82388a78d18a866drqbFPM_Bg0SodwZ0CdyBogwxlx~Rn~m8NgTqHGuLWTc-', NULL, '2023-09-28 09:19:48'),
(1229, 1, '::1', 'title', '/BEM/cpanel/core/icon_sosmed', NULL, '2023-09-28 09:19:51'),
(1230, 1, '::1', 'Sosial Media', '/BEM/cpanel/sosial_media/update_action/26c7536747f00b3836f8c4e03d19434dfebe0af93cacbe262d0800e6814bd64e2ff029eb7182f8132676651ebb74ce37fad82fbd46466e3e82388a78d18a866drqbFPM_Bg0SodwZ0CdyBogwxlx~Rn~m8NgTqHGuLWTc-', '{\"sosmed\":\"Instagram\",\"link\":\"https:\\/\\/instagram.com\\/\",\"icon\":\"bi bi-messenger\",\"submit\":\"update\"}', '2023-09-28 09:19:55'),
(1231, 1, '::1', 'Sosial Media', '/BEM/cpanel/sosial_media', NULL, '2023-09-28 09:19:55'),
(1232, 1, '::1', 'Sosial Media', '/BEM/cpanel/sosial_media/update/e533fb5a8c05f02d0781335cb880bc561c41b5008ff70dea826f385c9689a74f08dd4128707d37cef8e84b7093cad6e778bbee40719af106f9867fb500cd49d63xMNn9gy~B9X2~eRZGiFrrmb1KGXP3Fqf3LLI0d6po8-', NULL, '2023-09-28 09:19:59'),
(1233, 1, '::1', 'title', '/BEM/cpanel/core/icon_sosmed', NULL, '2023-09-28 09:20:02'),
(1234, 1, '::1', 'Sosial Media', '/BEM/cpanel/sosial_media/update_action/e533fb5a8c05f02d0781335cb880bc561c41b5008ff70dea826f385c9689a74f08dd4128707d37cef8e84b7093cad6e778bbee40719af106f9867fb500cd49d63xMNn9gy~B9X2~eRZGiFrrmb1KGXP3Fqf3LLI0d6po8-', '{\"sosmed\":\"Instagram\",\"link\":\"https:\\/\\/instagram.com\\/\",\"icon\":\"bi bi-instagram\",\"submit\":\"update\"}', '2023-09-28 09:20:05'),
(1235, 1, '::1', 'Sosial Media', '/BEM/cpanel/sosial_media', NULL, '2023-09-28 09:20:05'),
(1236, 1, '::1', 'Sosial Media', '/BEM/cpanel/sosial_media', NULL, '2023-09-28 09:23:52'),
(1237, 1, '::1', 'Sosial Media', '/BEM/cpanel/sosial_media', NULL, '2023-09-28 09:23:56'),
(1238, 1, '::1', 'Sosial Media', '/BEM/cpanel/sosial_media', NULL, '2023-09-28 09:24:41'),
(1239, 1, '::1', 'title', '/BEM/frontend', NULL, '2023-09-28 09:25:53'),
(1240, 1, '::1', 'title', '/BEM/frontend', NULL, '2023-09-28 09:28:48'),
(1241, 1, '::1', 'Sosial Media', '/BEM/cpanel/sosial_media/add', NULL, '2023-09-28 09:29:12'),
(1242, 1, '::1', 'title', '/BEM/cpanel/core/icon_sosmed', NULL, '2023-09-28 09:29:19'),
(1243, 1, '::1', 'Sosial Media', '/BEM/cpanel/sosial_media/add_action', '{\"sosmed\":\"Twitter\",\"link\":\"https:\\/\\/bem.feb.ub.ac.id\\/\",\"icon\":\"bi bi-twitter-x\",\"submit\":\"add\"}', '2023-09-28 09:29:24'),
(1244, 1, '::1', 'Sosial Media', '/BEM/cpanel/sosial_media', NULL, '2023-09-28 09:29:24'),
(1245, 1, '::1', 'Sosial Media', '/BEM/cpanel/sosial_media/add', NULL, '2023-09-28 09:29:29'),
(1246, 1, '::1', 'title', '/BEM/cpanel/core/icon_sosmed', NULL, '2023-09-28 09:29:39'),
(1247, 1, '::1', 'Sosial Media', '/BEM/cpanel/sosial_media/add_action', '{\"sosmed\":\"YouTube\",\"link\":\"https:\\/\\/bem.feb.ub.ac.id\\/\",\"icon\":\"bi bi-youtube\",\"submit\":\"add\"}', '2023-09-28 09:29:42'),
(1248, 1, '::1', 'Sosial Media', '/BEM/cpanel/sosial_media', NULL, '2023-09-28 09:29:42'),
(1249, 1, '::1', 'title', '/BEM/frontend', NULL, '2023-09-28 09:29:45'),
(1250, 1, '::1', 'title', '/BEM/frontend', NULL, '2023-09-28 09:30:13'),
(1251, 1, '::1', 'title', '/BEM/tentang', NULL, '2023-09-28 09:30:29'),
(1252, 1, '::1', 'title', '/BEM/tentang', NULL, '2023-09-28 09:31:14'),
(1253, 1, '::1', 'title', '/BEM/visi-misi', NULL, '2023-09-28 09:31:19'),
(1254, 1, '::1', 'title', '/BEM/struktur-organisasi', NULL, '2023-09-28 09:31:22'),
(1255, 1, '::1', 'title', '/BEM/kementerian', NULL, '2023-09-28 09:31:24'),
(1256, 1, '::1', 'title', '/BEM/hima', NULL, '2023-09-28 09:35:33'),
(1257, 1, '::1', 'title', '/BEM/visi-misi', NULL, '2023-09-28 09:35:39'),
(1258, 1, '::1', 'title', '/BEM/frontend', NULL, '2023-09-28 09:36:18'),
(1259, 1, '::1', 'title', '/BEM/frontend', NULL, '2023-09-28 09:37:40'),
(1260, 1, '::1', 'title', '/BEM/frontend', NULL, '2023-09-28 09:38:24'),
(1261, 1, '::1', 'title', '/BEM/frontend', NULL, '2023-09-28 09:38:36'),
(1262, 1, '::1', 'title', '/BEM/frontend', NULL, '2023-09-28 09:39:03'),
(1263, 1, '::1', 'title', '/BEM/frontend', NULL, '2023-09-28 09:39:17'),
(1264, 1, '::1', 'title', '/BEM/frontend', NULL, '2023-09-28 09:39:29'),
(1265, 1, '::1', 'title', '/BEM/frontend', NULL, '2023-09-28 09:39:56'),
(1266, 1, '::1', 'title', '/BEM/frontend', NULL, '2023-09-28 09:40:20'),
(1267, 1, '::1', 'title', '/BEM/frontend', NULL, '2023-09-28 09:40:27'),
(1268, 1, '::1', 'title', '/BEM/frontend', NULL, '2023-09-28 09:40:37'),
(1269, 1, '::1', 'title', '/BEM/frontend', NULL, '2023-09-28 09:40:47'),
(1270, 1, '::1', 'title', '/BEM/frontend', NULL, '2023-09-28 09:41:31'),
(1271, 1, '::1', 'title', '/BEM/frontend', NULL, '2023-09-28 09:42:07'),
(1272, 1, '::1', 'title', '/BEM/frontend', NULL, '2023-09-28 09:42:28'),
(1273, 1, '::1', 'title', '/BEM/frontend', NULL, '2023-09-28 09:42:54'),
(1274, 1, '::1', 'title', '/BEM/frontend', NULL, '2023-09-28 09:43:10'),
(1275, 1, '::1', 'title', '/BEM/frontend', NULL, '2023-09-28 09:45:02'),
(1276, 1, '::1', 'title', '/BEM/ukm', NULL, '2023-09-28 09:45:05'),
(1277, 1, '::1', 'title', '/BEM/ukm', NULL, '2023-09-28 09:45:28'),
(1278, 1, '::1', 'title', '/BEM/ukm', NULL, '2023-09-28 09:45:55'),
(1279, 1, '::1', 'title', '/BEM/ukm', NULL, '2023-09-28 09:46:11'),
(1280, 1, '::1', 'title', '/BEM/ukm', NULL, '2023-09-28 09:46:15'),
(1281, 1, '::1', 'title', '/BEM/frontend', NULL, '2023-09-28 09:46:34'),
(1282, 1, '::1', 'title', '/BEM/ukm', NULL, '2023-09-28 09:46:55'),
(1283, 1, '::1', 'title', '/BEM/ukm', NULL, '2023-09-28 09:47:11'),
(1284, 1, '::1', 'title', '/BEM/ukm', NULL, '2023-09-28 09:48:19'),
(1285, 1, '::1', 'title', '/BEM/ukm', NULL, '2023-09-28 09:48:42'),
(1286, 1, '::1', 'title', '/BEM/ukm', NULL, '2023-09-28 09:49:08'),
(1287, 1, '::1', 'title', '/BEM/ukm', NULL, '2023-09-28 09:50:13'),
(1288, 1, '::1', 'title', '/BEM/ukm', NULL, '2023-09-28 09:50:23'),
(1289, 1, '::1', 'title', '/BEM/kementerian', NULL, '2023-09-28 09:50:29'),
(1290, 1, '::1', 'title', '/BEM/hima', NULL, '2023-09-28 09:50:31'),
(1291, 1, '::1', 'title', '/BEM/ukm', NULL, '2023-09-28 09:50:34'),
(1292, 1, '::1', 'title', '/BEM/visi-misi', NULL, '2023-09-28 09:50:39'),
(1293, 1, '::1', 'title', '/BEM/struktur-organisasi', NULL, '2023-09-28 09:50:42'),
(1294, 1, '::1', 'title', '/BEM/frontend', NULL, '2023-09-28 09:50:49'),
(1295, 1, '::1', 'Kementerian', '/BEM/cpanel/kementerian', NULL, '2023-09-28 10:02:58'),
(1296, 1, '::1', 'M crud Generator', '/BEM/cpanel/m_crud_generator', NULL, '2023-09-28 10:03:02'),
(1297, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi', NULL, '2023-09-28 10:03:54'),
(1298, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi/add', NULL, '2023-09-28 10:03:57'),
(1299, 1, '::1', 'M crud Generator', '/BEM/cpanel/m_crud_generator', NULL, '2023-09-28 10:04:03'),
(1300, 1, '::1', 'M crud Generator', '/BEM/cpanel/m_crud_generator/delete/3fb87e72069629f6f1ebaf08e0b90a5eead858d358ccfa4561c2e435f794162cd7f5a5dc9243e84b5a1872ac3b5153e274b8eb38bc2c70711c7f79ea94271917s0cJnGsW_wq2eFrfX3kbxKdwKHgSuAxWwekzn2nR778-/116e3fd2d9c0c855296e9f184e1b34a2bfbe975f192f2b48e7f67e9602342180606a547fa3e49e538e074223f04c604ea7be801a43473c59f017dbcaf188fcccjtPzKTz0draXIf5lOV9eJpZ9tq1JZ_rjyICI88vusPw-', NULL, '2023-09-28 10:04:09'),
(1301, 1, '::1', 'title', '/BEM/mcrud', NULL, '2023-09-28 10:04:12'),
(1302, 1, '::1', 'title', '/BEM//mcrud/getTable/organisasi', NULL, '2023-09-28 10:04:16'),
(1303, 1, '::1', 'title', '/BEM/mcrud/action', '{\"table\":\"organisasi\",\"title\":\"Organisasi\",\"controllers\":\"Organisasi\",\"primary_key\":\"id\",\"mcrud\":{\"1\":{\"id\":{\"field_name\":\"id\",\"sort\":\"1\",\"field_label\":\"Id\",\"form_type\":\"number\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"2\":{\"kategori\":{\"field_name\":\"kategori\",\"sort\":\"2\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"show_in_filter\":\"true\",\"field_label\":\"Kategori\",\"form_type\":\"option\",\"option\":{\"0\":{\"label\":\"UKM\",\"value\":\"UKM\"},\"1695870280936\":{\"label\":\"HIMA\",\"value\":\"HIMA\"}},\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\",\"rules\":[\"required\"]}},\"3\":{\"nama\":{\"field_name\":\"nama\",\"sort\":\"3\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"show_in_filter\":\"true\",\"field_label\":\"Nama\",\"form_type\":\"text\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\",\"rules\":[\"required\"]}},\"4\":{\"deskripsi\":{\"field_name\":\"deskripsi\",\"sort\":\"4\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"show_in_filter\":\"true\",\"field_label\":\"Deskripsi\",\"form_type\":\"textarea\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"5\":{\"image\":{\"field_name\":\"image\",\"sort\":\"5\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"show_in_filter\":\"true\",\"field_label\":\"Image\",\"form_type\":\"upload_image\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}}}}', '2023-09-28 10:05:28'),
(1304, 1, '::1', 'M crud Generator', '/BEM/cpanel/m_crud_generator', NULL, '2023-09-28 10:05:32'),
(1305, 1, '::1', 'Organisasi', '/BEM/cpanel/Organisasi', NULL, '2023-09-28 10:05:37'),
(1306, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi/add', NULL, '2023-09-28 10:09:16'),
(1307, 1, '::1', 'Organisasi', '/BEM/cpanel/Organisasi', NULL, '2023-09-28 10:09:29'),
(1308, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi/update/8fd28a06c769edabf21151f42b681300730201e943756fc220b5a35fffb5feb04f4ee26257f1f90fb02b48dbe3b4fecbad59d74cead0d0f007857ecaae006cb4as3s0VKMjXD0VUf9oid9C6UyGm5mCtAvG0nEZLiWPr4-', NULL, '2023-09-28 10:09:37'),
(1309, 1, '::1', 'title', '/BEM/cpanel/core/imageUpload', NULL, '2023-09-28 10:12:04'),
(1310, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi/update_action/8fd28a06c769edabf21151f42b681300730201e943756fc220b5a35fffb5feb04f4ee26257f1f90fb02b48dbe3b4fecbad59d74cead0d0f007857ecaae006cb4as3s0VKMjXD0VUf9oid9C6UyGm5mCtAvG0nEZLiWPr4-', '{\"kategori\":\"HIMA\",\"nama\":\"HIMA Pend. Biologi\",\"deskripsi\":\"<p>Himpunan Mahasiswa atau Hima merupakan salah satu organisasi mahasiswa yang berada di tingkat jurusan dan termasuk organisasi intra kampus, serta bagian dari kegiatan ekstra kurikuler yang dapat dipilih dan diikuti oleh setiap mahasiswa. Hadirnya organisasi Himpunan Mahasiswa tersebut, berasal dari prinsip dari, oleh serta untuk mahasiswa.<\\/p>\\r\\n\\r\\n<p>Hima menjadi media bagi para anggotanya agar mampu mengembangkan pola pikir, kepribadian serta potensi yang dimiliki oleh setiap mahasiswa yang berkaitan dengan disiplin ilmu, agar setelah lulus dari perguruan tinggi maka mahasiswa siap untuk terjun langsung ke masyarakat.<\\/p>\\r\\n\\r\\n<p>Pada dasarnya, Himpunan Mahasiswa ada dua yaitu Himpunan Mahasiswa Jurusan atau HMJ serta Himpunan Mahasiswa Program Studi atau HMPS yang berada di tingkat fakultas serta berada di bawah koordinasi dari para Senat Mahasiswa atau BEM fakultas, sehingga seluruh kegiatan yang diadakan oleh HMJ atau HMPS haruslah memiliki afiliasi dengan program-program yang ada pada Senat Mahasiswa.<\\/p>\\r\\n\",\"img\":\"hima.png\",\"file-dir-image\":\"1-3dcff4dbaa82cbdd36d5ca6a76c13ca5c136e252\",\"image\":\"hima.png\",\"submit\":\"update\"}', '2023-09-28 10:12:10'),
(1311, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi', NULL, '2023-09-28 10:12:10'),
(1312, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi/update/b4358227a6a6056eba1f04a8dd53cbee2d1641d4fb0579f52778b130de3f61894076bf012682fa0672ffd0cf04d7f39352ce1c3805ec8964bcd72c0d9cfa7c8bmT5zxwig_0a4UpiUPCaGL0G1LSmh_fJhwnDB_qqo7Ek-', NULL, '2023-09-28 10:12:17'),
(1313, 1, '::1', 'title', '/BEM/cpanel/core/imageUpload', NULL, '2023-09-28 10:12:27');
INSERT INTO `ci_user_log` (`id`, `user`, `ip_address`, `controller`, `url`, `data`, `created_at`) VALUES
(1314, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi/update_action/b4358227a6a6056eba1f04a8dd53cbee2d1641d4fb0579f52778b130de3f61894076bf012682fa0672ffd0cf04d7f39352ce1c3805ec8964bcd72c0d9cfa7c8bmT5zxwig_0a4UpiUPCaGL0G1LSmh_fJhwnDB_qqo7Ek-', '{\"kategori\":\"HIMA\",\"nama\":\"HIMA Pend. Matematika\",\"deskripsi\":\"<p>Himpunan Mahasiswa atau Hima merupakan salah satu organisasi mahasiswa yang berada di tingkat jurusan dan termasuk organisasi intra kampus, serta bagian dari kegiatan ekstra kurikuler yang dapat dipilih dan diikuti oleh setiap mahasiswa. Hadirnya organisasi Himpunan Mahasiswa tersebut, berasal dari prinsip dari, oleh serta untuk mahasiswa.<\\/p>\\r\\n\\r\\n<p>Hima menjadi media bagi para anggotanya agar mampu mengembangkan pola pikir, kepribadian serta potensi yang dimiliki oleh setiap mahasiswa yang berkaitan dengan disiplin ilmu, agar setelah lulus dari perguruan tinggi maka mahasiswa siap untuk terjun langsung ke masyarakat.<\\/p>\\r\\n\\r\\n<p>Pada dasarnya, Himpunan Mahasiswa ada dua yaitu Himpunan Mahasiswa Jurusan atau HMJ serta Himpunan Mahasiswa Program Studi atau HMPS yang berada di tingkat fakultas serta berada di bawah koordinasi dari para Senat Mahasiswa atau BEM fakultas, sehingga seluruh kegiatan yang diadakan oleh HMJ atau HMPS haruslah memiliki afiliasi dengan program-program yang ada pada Senat Mahasiswa.<\\/p>\\r\\n\",\"img\":\"hima.png\",\"file-dir-image\":\"1-4db69415c80adbf22344b7c5944c6943e02ae4cb\",\"image\":\"hima.png\",\"submit\":\"update\"}', '2023-09-28 10:12:29'),
(1315, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi', NULL, '2023-09-28 10:12:30'),
(1316, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi/update/4bb8515a9be5f4219b2cbcec9d121635e19458cd1dc0d4ddacced9544b4ae2d417dbf6a0181b452bbfe8d7ba7ed4a3a3d9f097b6e605fbb5398fd73ecc1f1242kDblfHVf90UnGPzfbcFnRRkpiaVo7eS2W4_MsktaSsg-', NULL, '2023-09-28 10:13:57'),
(1317, 1, '::1', 'title', '/BEM/cpanel/core/imageUpload', NULL, '2023-09-28 10:14:04'),
(1318, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi/update_action/4bb8515a9be5f4219b2cbcec9d121635e19458cd1dc0d4ddacced9544b4ae2d417dbf6a0181b452bbfe8d7ba7ed4a3a3d9f097b6e605fbb5398fd73ecc1f1242kDblfHVf90UnGPzfbcFnRRkpiaVo7eS2W4_MsktaSsg-', '{\"kategori\":\"UKM\",\"nama\":\"UKM Pramuka\",\"deskripsi\":\"<p>UKM Pramuka merupakan wadah untuk menunjang pengembangan potensi dan daya kreatifitas mahasiswa dalam mengamalkan Tri Dharma Perguruan Tinggi. UKM ini menggunakan metode belajar Learning by Doing, yaitu belajar dengan melakukan. Seorang pramuka mengalami proses pembelajaran yang bertahap, kesulitan dan tanggung jawab yang diembannya disesuaikan dengan tingkatan dalam usia mereka.<\\/p>\\r\\n\",\"img\":\"ukm.jpg\",\"file-dir-image\":\"1-39a94a8b9d77bf4b669bcc83b6fddfdd7e55aeff\",\"image\":\"ukm.jpg\",\"submit\":\"update\"}', '2023-09-28 10:14:05'),
(1319, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi', NULL, '2023-09-28 10:14:05'),
(1320, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi/update/95fd2e8fb4b8cffa481160b9b3e72a9c9888513bd39bc5de6a6b0526a98419d15e07a8baff406926eed263d7cad05254dd560523dc448882958ce9882fffae31qKbd5y0RSgHOJTkZz2Uba1PKDt3hk5PMdOL5dngyl2g-', NULL, '2023-09-28 10:14:09'),
(1321, 1, '::1', 'title', '/BEM/cpanel/core/imageUpload', NULL, '2023-09-28 10:14:14'),
(1322, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi/update_action/95fd2e8fb4b8cffa481160b9b3e72a9c9888513bd39bc5de6a6b0526a98419d15e07a8baff406926eed263d7cad05254dd560523dc448882958ce9882fffae31qKbd5y0RSgHOJTkZz2Uba1PKDt3hk5PMdOL5dngyl2g-', '{\"kategori\":\"UKM\",\"nama\":\"UKM Penalaran\",\"deskripsi\":\"<p>Unit Kegiatan Mahasiswa (UKM) Penalaran merupakan organisasi yang mewadahi minat bakat dan aktualisasi mahasiswa dalam bidang karya tulis, penelitian, dan jurnalistik. Sekretariat UKM Penalaran Universitas Airlangga terletak di ruang 302 lantai 3 gedung Student Center Kampus C Universitas Airlangga atau yang biasa disebut oleh pengurus UKM Penalaran sebagai Astana Widya (AW) yang berarti istana pengetahuan.<\\/p>\\r\\n\",\"img\":\"ukm.jpg\",\"file-dir-image\":\"1-f763b744f2fa7fda9ad8eb59505eb69396c0665c\",\"image\":\"ukm.jpg\",\"submit\":\"update\"}', '2023-09-28 10:14:15'),
(1323, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi', NULL, '2023-09-28 10:14:15'),
(1324, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi/update/8d0d182bacc285650f1667a6b096d7aa2fd443972e05e64fcd1f95f606c03cd49b4a567cd3b95cb04fd358b466db9ba6b3cd1f435e7b9afffa6488b477457605f4hU30lzYqhxgSHn4GuQmrgn7zElBsi2t4lF0gZ_AA4-', NULL, '2023-09-28 10:14:19'),
(1325, 1, '::1', 'title', '/BEM/cpanel/core/imageUpload', NULL, '2023-09-28 10:14:25'),
(1326, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi/update_action/8d0d182bacc285650f1667a6b096d7aa2fd443972e05e64fcd1f95f606c03cd49b4a567cd3b95cb04fd358b466db9ba6b3cd1f435e7b9afffa6488b477457605f4hU30lzYqhxgSHn4GuQmrgn7zElBsi2t4lF0gZ_AA4-', '{\"kategori\":\"UKM\",\"nama\":\"Resimen Mahasiswa\",\"deskripsi\":\"<p>UKM Resimen Mahasiswa merupakan wadah bagi mahasiswa untuk menyalurkan potensinya. Mahasiswa dilatih untuk disiplin, berjiwa dan berfisik kuat, berpengetahuan luas dan diberikan pelatihan ilmu militer seperti bela diri militer, survival, penggunaan senjata, dll.<\\/p>\\r\\n\",\"img\":\"ukm.jpg\",\"file-dir-image\":\"1-b3ed1c5e2df5e9918098b46fd5f47f443fd6aa98\",\"image\":\"ukm.jpg\",\"submit\":\"update\"}', '2023-09-28 10:14:26'),
(1327, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi', NULL, '2023-09-28 10:14:26'),
(1328, 1, '::1', 'title', '/BEM/frontend', NULL, '2023-09-28 10:15:27'),
(1329, 1, '::1', 'title', '/BEM/ukm', NULL, '2023-09-28 10:15:32'),
(1330, 1, '::1', 'title', '/BEM/ukm', NULL, '2023-09-28 10:16:20'),
(1331, 1, '::1', 'title', '/BEM/ukm', NULL, '2023-09-28 10:16:50'),
(1332, 1, '::1', 'title', '/BEM/ukm', NULL, '2023-09-28 10:17:05'),
(1333, 1, '::1', 'title', '/BEM/ukm', NULL, '2023-09-28 10:17:08'),
(1334, 1, '::1', 'title', '/BEM/ukm', NULL, '2023-09-28 10:17:10'),
(1335, 1, '::1', 'title', '/BEM/ukm', NULL, '2023-09-28 10:19:15'),
(1336, 1, '::1', 'title', '/BEM/ukm', NULL, '2023-09-28 10:19:17'),
(1337, 1, '::1', 'title', '/BEM/ukm', NULL, '2023-09-28 10:20:03'),
(1338, 1, '::1', 'title', '/BEM/ukm', NULL, '2023-09-28 10:20:34'),
(1339, 1, '::1', 'title', '/BEM/ukm', NULL, '2023-09-28 10:20:49'),
(1340, 1, '::1', 'title', '/BEM/ukm', NULL, '2023-09-28 10:20:57'),
(1341, 1, '::1', 'title', '/BEM/ukm', NULL, '2023-09-28 10:21:26'),
(1342, 1, '::1', 'title', '/BEM/frontend', NULL, '2023-09-28 10:21:56'),
(1343, 1, '::1', 'title', '/BEM/frontend', NULL, '2023-09-28 10:24:38'),
(1344, 1, '::1', 'title', '/BEM/ukm', NULL, '2023-09-28 10:24:38'),
(1345, 1, '::1', 'title', '/BEM/frontend', NULL, '2023-09-28 10:25:05'),
(1346, 1, '::1', 'title', '/BEM/ukm', NULL, '2023-09-28 10:25:14'),
(1347, 1, '::1', 'title', '/BEM/frontend', NULL, '2023-09-28 10:25:40'),
(1348, 1, '::1', 'title', '/BEM/ukm', NULL, '2023-09-28 10:25:43'),
(1349, 1, '::1', 'title', '/BEM/hima', NULL, '2023-09-28 10:25:44'),
(1350, 1, '::1', 'title', '/BEM/ukm', NULL, '2023-09-28 10:25:47'),
(1351, 1, '::1', 'title', '/BEM/ukm', NULL, '2023-09-28 10:25:49'),
(1352, 1, '::1', 'title', '/BEM/ukm', NULL, '2023-09-28 10:25:50'),
(1353, 1, '::1', 'title', '/BEM/hima', NULL, '2023-09-28 10:25:52'),
(1354, 1, '::1', 'title', '/BEM/ukm', NULL, '2023-09-28 10:25:55'),
(1355, 1, '::1', 'title', '/BEM/ukm', NULL, '2023-09-28 10:26:14'),
(1356, 1, '::1', 'title', '/BEM/ukm', NULL, '2023-09-28 10:26:19'),
(1357, 1, '::1', 'title', '/BEM/ukm', NULL, '2023-09-28 10:26:32'),
(1358, 1, '::1', 'title', '/BEM/ukm', NULL, '2023-09-28 10:27:13'),
(1359, 1, '::1', 'title', '/BEM/ukm', NULL, '2023-09-28 10:28:00'),
(1360, 1, '::1', 'title', '/BEM/frontend', NULL, '2023-09-28 10:28:02'),
(1361, 1, '::1', 'title', '/BEM/ukm', NULL, '2023-09-28 10:28:41'),
(1362, 1, '::1', 'title', '/BEM/ukm', NULL, '2023-09-28 10:28:50'),
(1363, 1, '::1', 'title', '/BEM/ukm', NULL, '2023-09-28 10:29:05'),
(1364, 1, '::1', 'title', '/BEM/ukm', NULL, '2023-09-28 10:29:40'),
(1365, 1, '::1', 'title', '/BEM/ukm', NULL, '2023-09-28 10:30:22'),
(1366, 1, '::1', 'title', '/BEM/ukm', NULL, '2023-09-28 10:30:29'),
(1367, 1, '::1', 'title', '/BEM/ukm', NULL, '2023-09-28 10:30:32'),
(1368, 1, '::1', 'title', '/BEM/ukm', NULL, '2023-09-28 10:30:43'),
(1369, 1, '::1', 'title', '/BEM/ukm', NULL, '2023-09-28 10:30:57'),
(1370, 1, '::1', 'title', '/BEM/frontend', NULL, '2023-09-28 10:34:35'),
(1371, 1, '::1', 'title', '/BEM/ukm', NULL, '2023-09-28 10:36:46'),
(1372, 1, '::1', 'title', '/BEM/ukm', NULL, '2023-09-28 10:37:30'),
(1373, 1, '::1', 'title', '/BEM/ukm', NULL, '2023-09-28 10:38:09'),
(1374, 1, '::1', 'title', '/BEM/hima', NULL, '2023-09-28 10:38:31'),
(1375, 1, '::1', 'title', '/BEM/tentang', NULL, '2023-09-28 10:38:36'),
(1376, 1, '::1', 'title', '/BEM/visi-misi', NULL, '2023-09-28 10:38:48'),
(1377, 1, '::1', 'title', '/BEM/frontend', NULL, '2023-09-28 10:38:52'),
(1378, 1, '::1', 'title', '/BEM/tentang', NULL, '2023-09-28 10:38:59'),
(1379, 1, '::1', 'Tentang', '/BEM/cpanel/tentang', NULL, '2023-09-28 10:39:08'),
(1380, 1, '::1', 'Tentang', '/BEM/cpanel/tentang/update/43c0fae53785f5fac8fad5e26577ed61e4ed914e3b1752aa94cf04a58a9a47030bb105f0d4fa0b575971ab2a909d699de9c87ec7fd41f578aa17f84daaf879acxdwMsYt0GUgbpuE2XxzPYTMCQTB0LrJ2LYbzGrz_3jI-', NULL, '2023-09-28 10:39:11'),
(1381, 1, '::1', 'Tentang', '/BEM/cpanel/tentang/update_action/43c0fae53785f5fac8fad5e26577ed61e4ed914e3b1752aa94cf04a58a9a47030bb105f0d4fa0b575971ab2a909d699de9c87ec7fd41f578aa17f84daaf879acxdwMsYt0GUgbpuE2XxzPYTMCQTB0LrJ2LYbzGrz_3jI-', '{\"judul\":\"Tentang Kabinet Reformasi\",\"isi\":\"Kabinet Reformasi lahir dari rahim semangat perjuangan mahasiswa yang terbentuk dari gerakan - gerakan perubahan. Kata reformasi yang berarti merombak, mendobrak dan menyusun Kembali semangat dan niat perubahan untuk menjunjung tinggi nilai organisasi yang berintegritas, inklusif, adaptif dan sinergis di dalamnya. Lambang tangan mengepal yang mengambarkan semangat perubahan untuk menciptakan inovasi \\u2013 inovasi pembaharuan di dalam setiap Gerakan yang diciptakan. Warna yang menggambarkan isi filosofis dalam kabinet yang menggambarkan keberanian, kekeluargaan, inklusif dan juga suci yang menjadi sifat dari setiap komponen yang berada di dalam cabinet reformasi untuk membawa semangat pembaharuan.\",\"submit\":\"update\"}', '2023-09-28 10:39:19'),
(1382, 1, '::1', 'Tentang', '/BEM/cpanel/tentang', NULL, '2023-09-28 10:39:19'),
(1383, 1, '::1', 'Tentang', '/BEM/cpanel/tentang/update/c7a9b26f9cdebffc3e755d33e1feca9815a52e016f634a4860fa3a1a71eaa3fead5ad6cf2fc7dbdd792d47579211dff914f6fa0f4dfe7cac076674885e0ec96flGmdzFOGmEcGnKCkFsPoX3K6XrrIW6RXz3Uvvoz9KCI-', NULL, '2023-09-28 10:39:23'),
(1384, 1, '::1', 'Tentang', '/BEM/cpanel/tentang', NULL, '2023-09-28 10:39:28'),
(1385, 1, '::1', 'Tentang', '/BEM/cpanel/tentang', NULL, '2023-09-28 10:43:53'),
(1386, 1, '::1', 'Tentang', '/BEM/cpanel/tentang/update/b66f52255fed801f1011a5e05d90caae71848ed8e16e51397c5d5ec537a63b0a1a7a66c409dc416cdbdf476baa5f87c7b4bc91d66418eb9520ee3cd66333de2dFMIKV5zC6GLkVDU2gFevk998MxHC6ZeveyzzaBnNL3U-', NULL, '2023-09-28 10:43:55'),
(1387, 1, '::1', 'Tentang', '/BEM/cpanel/tentang/update_action/b66f52255fed801f1011a5e05d90caae71848ed8e16e51397c5d5ec537a63b0a1a7a66c409dc416cdbdf476baa5f87c7b4bc91d66418eb9520ee3cd66333de2dFMIKV5zC6GLkVDU2gFevk998MxHC6ZeveyzzaBnNL3U-', '{\"judul\":\"Tentang Kabinet Reformasi\",\"isi\":\"<p>Kabinet Reformasi lahir dari rahim semangat perjuangan mahasiswa yang terbentuk dari gerakan - gerakan perubahan. Kata reformasi yang berarti merombak, mendobrak dan menyusun Kembali semangat dan niat perubahan untuk menjunjung tinggi nilai organisasi yang berintegritas, inklusif, adaptif dan sinergis di dalamnya.<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p>Lambang tangan mengepal yang mengambarkan semangat perubahan untuk menciptakan inovasi &ndash; inovasi pembaharuan di dalam setiap Gerakan yang diciptakan. Warna yang menggambarkan isi filosofis dalam kabinet yang menggambarkan keberanian, kekeluargaan, inklusif dan juga suci yang menjadi sifat dari setiap komponen yang berada di dalam cabinet reformasi untuk membawa semangat pembaharuan.<\\/p>\\r\\n\",\"submit\":\"update\"}', '2023-09-28 10:44:03'),
(1388, 1, '::1', 'Tentang', '/BEM/cpanel/tentang', NULL, '2023-09-28 10:44:03'),
(1389, 1, '::1', 'title', '/BEM/tentang', NULL, '2023-09-28 10:44:08'),
(1390, 1, '::1', 'title', '/BEM/tentang', NULL, '2023-09-28 11:12:15'),
(1391, 1, '::1', 'title', '/BEM/frontend', NULL, '2023-09-28 11:12:19'),
(1392, 1, '::1', 'title', '/BEM/frontend', NULL, '2023-09-28 11:13:20'),
(1393, 1, '::1', 'title', '/BEM/tentang', NULL, '2023-09-28 11:17:56'),
(1394, 1, '::1', 'title', '/BEM/visi-misi', NULL, '2023-09-28 11:18:02'),
(1395, 1, '::1', 'title', '/BEM/struktur-organisasi', NULL, '2023-09-28 11:18:08'),
(1396, 1, '::1', 'title', '/BEM/kementerian', NULL, '2023-09-28 11:18:19'),
(1397, 1, '::1', 'title', '/BEM/hima', NULL, '2023-09-28 11:18:23'),
(1398, 1, '::1', 'title', '/BEM/ukm', NULL, '2023-09-28 11:18:26'),
(1399, 1, '::1', 'title', '/BEM/ukm', NULL, '2023-09-28 11:22:27'),
(1400, 1, '::1', 'title', '/BEM/ukm', NULL, '2023-09-28 11:24:20'),
(1401, 1, '::1', 'title', '/BEM/ukm', NULL, '2023-09-28 11:24:24'),
(1402, 1, '::1', 'title', '/BEM/ukm', NULL, '2023-09-28 11:24:28'),
(1403, 1, '::1', 'title', '/BEM/ukm', NULL, '2023-09-28 11:25:13'),
(1404, 1, '::1', 'title', '/BEM/ukm', NULL, '2023-09-28 11:25:17'),
(1405, 1, '::1', 'title', '/BEM/ukm', NULL, '2023-09-28 11:25:28'),
(1406, 1, '::1', 'title', '/BEM/ukm', NULL, '2023-09-28 11:26:53'),
(1407, 1, '::1', 'title', '/BEM/ukm', NULL, '2023-09-28 11:26:57'),
(1408, 1, '::1', 'title', '/BEM/ukm', NULL, '2023-09-28 11:31:57'),
(1409, 1, '::1', 'title', '/BEM/ukm', NULL, '2023-09-28 11:32:01'),
(1410, 1, '::1', 'title', '/BEM/frontend', NULL, '2023-09-28 11:32:04'),
(1411, 1, '::1', 'title', '/BEM/frontend', NULL, '2023-09-28 11:33:01'),
(1412, 1, '::1', 'title', '/BEM/tentang', NULL, '2023-09-28 11:33:34'),
(1413, 1, '::1', 'title', '/BEM/struktur-organisasi', NULL, '2023-09-28 11:33:40'),
(1414, 1, '::1', 'title', '/BEM/struktur-organisasi', NULL, '2023-09-28 11:33:43'),
(1415, 1, '::1', 'title', '/BEM/kementerian', NULL, '2023-09-28 11:33:44'),
(1416, 1, '::1', 'title', '/BEM/hima', NULL, '2023-09-28 11:34:15'),
(1417, 1, '::1', 'title', '/BEM/ukm', NULL, '2023-09-28 11:34:18'),
(1418, 1, '::1', 'title', '/BEM/ukm', NULL, '2023-09-28 11:37:52'),
(1419, 1, '::1', 'title', '/BEM/hima', NULL, '2023-09-28 11:38:00'),
(1420, 1, '::1', 'title', '/BEM/frontend', NULL, '2023-09-28 11:39:09'),
(1421, 1, '::1', 'title', '/BEM/hima', NULL, '2023-09-28 11:47:48'),
(1422, 1, '::1', 'title', '/BEM/hima', NULL, '2023-09-28 11:49:59'),
(1423, 1, '::1', 'title', '/BEM/hima', NULL, '2023-09-28 11:50:09'),
(1424, 1, '::1', 'title', '/BEM/frontend/hima/detail/1', NULL, '2023-09-28 11:51:27'),
(1425, 1, '::1', 'title', '/BEM/frontend/hima/detail/1', NULL, '2023-09-28 11:51:56'),
(1426, 1, '::1', 'title', '/BEM/frontend/hima/detail/1', NULL, '2023-09-28 11:52:55'),
(1427, 1, '::1', 'title', '/BEM/frontend/hima/detail/1', NULL, '2023-09-28 11:52:58'),
(1428, 1, '::1', 'title', '/BEM/frontend/hima/detail/1', NULL, '2023-09-28 11:53:06'),
(1429, 1, '::1', 'title', '/BEM/frontend/hima/detail/1', NULL, '2023-09-28 11:53:16'),
(1430, 1, '::1', 'title', '/BEM/frontend/hima/detail/1', NULL, '2023-09-28 11:57:07'),
(1431, 1, '::1', 'title', '/BEM/frontend/hima/detail/1', NULL, '2023-09-28 11:57:17'),
(1432, 1, '::1', 'title', '/BEM/frontend/hima/detail/1', NULL, '2023-09-28 11:58:19'),
(1433, 1, '::1', 'title', '/BEM/kementerian', NULL, '2023-09-28 11:58:35'),
(1434, 1, '::1', 'title', '/BEM/kementerian', NULL, '2023-09-28 11:58:40'),
(1435, 1, '::1', 'title', '/BEM/hima', NULL, '2023-09-28 11:58:43'),
(1436, 1, '::1', 'title', '/BEM/hima', NULL, '2023-09-28 11:59:02'),
(1437, 1, '::1', 'title', '/BEM/frontend/hima/detail/5', NULL, '2023-09-28 11:59:04'),
(1438, 1, '::1', 'title', '/BEM/ukm', NULL, '2023-09-28 11:59:17'),
(1439, 1, '::1', 'title', '/BEM/ukm', NULL, '2023-09-28 12:02:20'),
(1440, 1, '::1', 'title', '/BEM/ukm', NULL, '2023-09-28 12:02:41'),
(1441, 1, '::1', 'title', '/BEM/frontend/ukm/detail/2', NULL, '2023-09-28 12:02:44'),
(1442, 1, '::1', 'title', '/BEM/frontend/hima/detail/2', NULL, '2023-09-28 12:02:55'),
(1443, 1, '::1', 'title', '/BEM/frontend/ukm/detail/2', NULL, '2023-09-28 12:03:01'),
(1444, 1, '::1', 'title', '/BEM/ukm', NULL, '2023-09-28 12:03:02'),
(1445, 1, '::1', 'title', '/BEM/ukm', NULL, '2023-09-28 12:03:24'),
(1446, 1, '::1', 'title', '/BEM/frontend/ukm/detail/2', NULL, '2023-09-28 12:03:26'),
(1447, 1, '::1', 'title', '/BEM/frontend/ukm/detail/2', NULL, '2023-09-28 12:03:42'),
(1448, 1, '::1', 'title', '/BEM/kementerian', NULL, '2023-09-28 12:03:45'),
(1449, 1, '::1', 'title', '/BEM/frontend', NULL, '2023-09-28 12:03:54'),
(1450, 1, '::1', 'title', '/BEM/frontend', NULL, '2023-09-28 12:12:23'),
(1451, 1, '::1', 'title', '/BEM/tentang', NULL, '2023-09-28 12:12:30'),
(1452, 1, '::1', 'title', '/BEM/visi-misi', NULL, '2023-09-28 12:12:33'),
(1453, 1, '::1', 'title', '/BEM/cpanel/permission', NULL, '2023-09-28 12:12:40'),
(1454, 1, '::1', 'User', '/BEM/cpanel/user', NULL, '2023-09-28 12:12:49'),
(1455, 1, '::1', 'Group', '/BEM/cpanel/group', NULL, '2023-09-28 12:12:51'),
(1456, 1, '::1', 'Group', '/BEM/cpanel/group/access_control/c07fda95c477082df394d77c0b0a29700aca476c8d31076c08d9cadfd486fac08b51d323e205ac773b31faa65218ff2192f21d027b34e922b34f17952ca97ce3x4pjSrAPbi4byLyrbjU6mHBa2QcWizntljtLdHZGW_4-', NULL, '2023-09-28 12:12:56'),
(1457, 1, '::1', 'Group', '/BEM/cpanel/group/save_acces_control/c07fda95c477082df394d77c0b0a29700aca476c8d31076c08d9cadfd486fac08b51d323e205ac773b31faa65218ff2192f21d027b34e922b34f17952ca97ce3x4pjSrAPbi4byLyrbjU6mHBa2QcWizntljtLdHZGW_4-', '{\"id\":[\"47\",\"48\",\"49\",\"50\",\"51\",\"55\",\"87\",\"88\",\"100\",\"101\",\"103\",\"104\",\"106\",\"107\",\"109\",\"110\",\"118\",\"119\",\"121\",\"122\",\"135\",\"136\",\"137\",\"138\",\"139\",\"145\",\"146\",\"148\",\"149\",\"162\",\"163\",\"165\",\"166\",\"177\",\"178\",\"179\",\"180\",\"181\",\"182\",\"183\",\"184\",\"185\",\"186\"],\"submit\":\"\"}', '2023-09-28 12:14:06'),
(1458, 1, '::1', 'Group', '/BEM/cpanel/group', NULL, '2023-09-28 12:14:06'),
(1459, 1, '::1', 'Struktur Organisasi', '/BEM/cpanel/struktur_organisasi', NULL, '2023-09-28 12:14:12'),
(1460, 1, '::1', 'title', '/BEM/hima', NULL, '2023-09-28 12:14:16'),
(1461, 1, '::1', 'title', '/BEM/frontend/hima/detail/5', NULL, '2023-09-28 12:14:17'),
(1462, 1, '::1', 'Sosial Media', '/BEM/cpanel/sosial_media', NULL, '2023-09-28 12:17:22'),
(1463, 1, '::1', 'Sosial Media', '/BEM/cpanel/sosial_media/update/8bef6905e07550fed18b367cf1dd82bf7f04b521c33102c3578297668ccfafcf795907d0682f7aea6d0bc35c0d434d62c5c3c3771252b4a5f15f949004bcc16ac6KHhPpE8cRUY1yyox9_sI2afdq6wX4MVcjZ6C36dVg-', NULL, '2023-09-28 12:17:38'),
(1464, 1, '::1', 'Sosial Media', '/BEM/cpanel/sosial_media/update_action/8bef6905e07550fed18b367cf1dd82bf7f04b521c33102c3578297668ccfafcf795907d0682f7aea6d0bc35c0d434d62c5c3c3771252b4a5f15f949004bcc16ac6KHhPpE8cRUY1yyox9_sI2afdq6wX4MVcjZ6C36dVg-', '{\"sosmed\":\"YouTube\",\"link\":\"https:\\/\\/www.youtube.com\\/\",\"icon\":\"bi bi-youtube\",\"submit\":\"update\"}', '2023-09-28 12:17:44'),
(1465, 1, '::1', 'Sosial Media', '/BEM/cpanel/sosial_media', NULL, '2023-09-28 12:17:44'),
(1466, 1, '::1', 'Sosial Media', '/BEM/cpanel/sosial_media/update/63b46a04150cf39dafed105794c7844d721e9aee5688393f5c9c7c3d9129e4b95feae917984ece862d08e30072601e798d903d264baef34a1dd0790014911cf4CrFv5efMKQL83auvDeGFCOPG9YaCrzMAnt7cEOMX3a8-', NULL, '2023-09-28 12:17:59'),
(1467, 1, '::1', 'Sosial Media', '/BEM/cpanel/sosial_media/update_action/63b46a04150cf39dafed105794c7844d721e9aee5688393f5c9c7c3d9129e4b95feae917984ece862d08e30072601e798d903d264baef34a1dd0790014911cf4CrFv5efMKQL83auvDeGFCOPG9YaCrzMAnt7cEOMX3a8-', '{\"sosmed\":\"Twitter\",\"link\":\"https:\\/\\/twitter.com\\/home\",\"icon\":\"bi bi-twitter-x\",\"submit\":\"update\"}', '2023-09-28 12:18:03'),
(1468, 1, '::1', 'Sosial Media', '/BEM/cpanel/sosial_media', NULL, '2023-09-28 12:18:03'),
(1469, 1, '::1', 'Sosial Media', '/BEM/cpanel/sosial_media/add', NULL, '2023-09-28 12:18:25'),
(1470, 1, '::1', 'title', '/BEM/cpanel/core/icon_sosmed', NULL, '2023-09-28 12:18:28'),
(1471, 1, '::1', 'Sosial Media', '/BEM/cpanel/sosial_media/add', NULL, '2023-09-28 12:19:45'),
(1472, 1, '::1', 'title', '/BEM/cpanel/core/icon_sosmed', NULL, '2023-09-28 12:19:48'),
(1473, 1, '::1', 'title', '/BEM/frontend/hima/detail/5', NULL, '2023-09-28 12:26:01'),
(1474, 1, '::1', 'title', '/BEM/frontend/hima/detail/5', NULL, '2023-09-28 12:26:12'),
(1475, 1, '::1', 'title', '/BEM/frontend', NULL, '2023-09-28 12:26:14'),
(1476, 1, '::1', 'title', '/BEM/tentang', NULL, '2023-09-28 12:26:22'),
(1477, 1, '::1', 'title', '/BEM/visi-misi', NULL, '2023-09-28 12:26:25'),
(1478, 1, '::1', 'title', '/BEM/struktur-organisasi', NULL, '2023-09-28 12:26:28'),
(1479, 1, '::1', 'title', '/BEM/kementerian', NULL, '2023-09-28 12:26:30'),
(1480, 1, '::1', 'title', '/BEM/hima', NULL, '2023-09-28 12:26:33'),
(1481, 1, '::1', 'title', '/BEM/ukm', NULL, '2023-09-28 12:26:37'),
(1482, 1, '::1', 'title', '/BEM/frontend/ukm/detail/3', NULL, '2023-09-28 12:26:39'),
(1483, 1, '::1', 'M crud Generator', '/BEM/cpanel/m_crud_generator', NULL, '2023-09-28 12:41:04'),
(1484, 1, '::1', 'M crud Generator', '/BEM/cpanel/m_crud_generator/delete/12299ceaeac34f437bf7ad56133c12cfd8bf31e7d638e6a0e574969741665abfd2252fee7ce6207cc4d01a75c91119cf2cded36f95e1913766f02db14b180216tvFn7rZ0P5oLmnj7uTLyXRhWUK5OHBLXdF8BNdV3w90-/62274b547a4600528b239302e4d95a8364afcc12a86bca98b4a621aa4f122a0d9172d05a77744a26dbdd40af962ef0bc8d8126502a3306c05638c6cd2a584f34zNuCkgtEaIk7XBLuLqSy004rFt0puHgMhabiut~5hJc-', NULL, '2023-09-28 12:42:12'),
(1485, 1, '::1', 'M crud Generator', '/BEM/cpanel/m_crud_generator', NULL, '2023-09-28 12:42:15'),
(1486, 1, '::1', 'title', '/BEM/mcrud', NULL, '2023-09-28 12:42:15'),
(1487, 1, '::1', 'title', '/BEM//mcrud/getTable/organisasi', NULL, '2023-09-28 12:42:18'),
(1488, 1, '::1', 'title', '/BEM/mcrud/action', '{\"table\":\"organisasi\",\"title\":\"Organisasi\",\"controllers\":\"Organisasi\",\"primary_key\":\"id\",\"mcrud\":{\"1\":{\"id\":{\"field_name\":\"id\",\"sort\":\"1\",\"field_label\":\"Id\",\"form_type\":\"number\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"2\":{\"kategori\":{\"field_name\":\"kategori\",\"sort\":\"2\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"show_in_filter\":\"true\",\"field_label\":\"Kategori\",\"form_type\":\"option\",\"option\":{\"0\":{\"label\":\"HIMA\",\"value\":\"HIMA\"},\"1695879767731\":{\"label\":\"UKM\",\"value\":\"UKM\"}},\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"3\":{\"nama\":{\"field_name\":\"nama\",\"sort\":\"3\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"show_in_filter\":\"true\",\"field_label\":\"Nama\",\"form_type\":\"text\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"4\":{\"deskripsi\":{\"field_name\":\"deskripsi\",\"sort\":\"4\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"show_in_filter\":\"true\",\"field_label\":\"Deskripsi\",\"form_type\":\"textarea\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"5\":{\"image\":{\"field_name\":\"image\",\"sort\":\"5\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"show_in_filter\":\"true\",\"field_label\":\"Image\",\"form_type\":\"upload_image\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"6\":{\"seo_name\":{\"field_name\":\"seo_name\",\"sort\":\"6\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"show_in_filter\":\"true\",\"field_label\":\"Seo name\",\"form_type\":\"text\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}}}}', '2023-09-28 12:43:35'),
(1489, 1, '::1', 'M crud Generator', '/BEM/cpanel/m_crud_generator', NULL, '2023-09-28 12:43:39'),
(1490, 1, '::1', 'Organisasi', '/BEM/cpanel/Organisasi', NULL, '2023-09-28 12:43:44'),
(1491, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi/add', NULL, '2023-09-28 12:48:38'),
(1492, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi/add', NULL, '2023-09-28 12:53:35'),
(1493, 1, '::1', 'Organisasi', '/BEM/cpanel/Organisasi', NULL, '2023-09-28 12:53:40'),
(1494, 1, '::1', 'Tentang', '/BEM/cpanel/tentang', NULL, '2023-09-28 12:53:43'),
(1495, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi', NULL, '2023-09-28 12:53:45'),
(1496, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi/update/ec505fde94e6ae5c54cd27ea10b4ec0218b21f3fe557f68dc282bb1c2a6535e713109b15118c132c28e7f87f8457b9b0f0d46f59978fa0b4c5d87b0cd90c38efGk3VHyAtE8XN1Ip1x_NvwFLMSNi7FOiOF7FzXY0ilU0-', NULL, '2023-09-28 12:53:47'),
(1497, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi/update_action/ec505fde94e6ae5c54cd27ea10b4ec0218b21f3fe557f68dc282bb1c2a6535e713109b15118c132c28e7f87f8457b9b0f0d46f59978fa0b4c5d87b0cd90c38efGk3VHyAtE8XN1Ip1x_NvwFLMSNi7FOiOF7FzXY0ilU0-?kategori=HIMA&nama=HIMA+Pendidikan+Biologi&img=&file-dir-image=&image=280923101210_hima.png&deskripsi=%3Cp%3EHimpunan+Mahasiswa+atau+Hima+merupakan+salah+satu+organisasi+mahasiswa+yang+berada+di+tingkat+jurusan+dan+termasuk+organisasi+intra+kampus%2C+serta+bagian+dari+kegiatan+ekstra+kurikuler+yang+dapat+dipilih+dan+diikuti+oleh+setiap+mahasiswa.+Hadirnya+organisasi+Himpunan+Mahasiswa+tersebut%2C+berasal+dari+prinsip+dari%2C+oleh+serta+untuk+mahasiswa.%3C%2Fp%3E%0D%0A%0D%0A%3Cp%3EHima+menjadi+media+bagi+para+anggotanya+agar+mampu+mengembangkan+pola+pikir%2C+kepribadian+serta+potensi+yang+dimiliki+oleh+setiap+mahasiswa+yang+berkaitan+dengan+disiplin+ilmu%2C+agar+setelah+lulus+dari+perguruan+tinggi+maka+mahasiswa+siap+untuk+terjun+langsung+ke+masyarakat.%3C%2Fp%3E%0D%0A%0D%0A%3Cp%3EPada+dasarnya%2C+Himpunan+Mahasiswa+ada+dua+yaitu+Himpunan+Mahasiswa+Jurusan+atau+HMJ+serta+Himpunan+Mahasiswa+Program+Studi+atau+HMPS+yang+berada+di+tingkat+fakultas+serta+berada+di+bawah+koordinasi+dari+para+Senat+Mahasiswa+atau+BEM+fakultas%2C+sehingga+seluruh+kegiatan+yang+diadakan+oleh+HMJ+atau+HMPS+haruslah+memiliki+afiliasi+dengan+program-program+yang+ada+pada+Senat+Mahasiswa.%3C%2Fp%3E%0D%0A&submit=update', NULL, '2023-09-28 12:54:01'),
(1498, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi/update/ec505fde94e6ae5c54cd27ea10b4ec0218b21f3fe557f68dc282bb1c2a6535e713109b15118c132c28e7f87f8457b9b0f0d46f59978fa0b4c5d87b0cd90c38efGk3VHyAtE8XN1Ip1x_NvwFLMSNi7FOiOF7FzXY0ilU0-', NULL, '2023-09-28 12:54:27'),
(1499, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi', NULL, '2023-09-28 12:54:29'),
(1500, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi', NULL, '2023-09-28 12:54:35'),
(1501, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi/update/2ce7ee37b2fd6b27545f6867ea22080d9e59cf02d797590c1924c9ce91513abfce842a7949dad17f6eefb71aa6203b31d641b52d353d138f7b87c882f106d37aWNHaId8FRRZWQB85YBNcHB1OaCXzL9X9lI_SJcJDhxs-', NULL, '2023-09-28 12:55:10'),
(1502, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi/update_action/2ce7ee37b2fd6b27545f6867ea22080d9e59cf02d797590c1924c9ce91513abfce842a7949dad17f6eefb71aa6203b31d641b52d353d138f7b87c882f106d37aWNHaId8FRRZWQB85YBNcHB1OaCXzL9X9lI_SJcJDhxs-?kategori=HIMA&nama=HIMA+Pendidikan+Biologi&img=&file-dir-image=&image=280923101210_hima.png&deskripsi=%3Cp%3EHimpunan+Mahasiswa+atau+Hima+merupakan+salah+satu+organisasi+mahasiswa+yang+berada+di+tingkat+jurusan+dan+termasuk+organisasi+intra+kampus%2C+serta+bagian+dari+kegiatan+ekstra+kurikuler+yang+dapat+dipilih+dan+diikuti+oleh+setiap+mahasiswa.+Hadirnya+organisasi+Himpunan+Mahasiswa+tersebut%2C+berasal+dari+prinsip+dari%2C+oleh+serta+untuk+mahasiswa.%3C%2Fp%3E%0D%0A%0D%0A%3Cp%3EHima+menjadi+media+bagi+para+anggotanya+agar+mampu+mengembangkan+pola+pikir%2C+kepribadian+serta+potensi+yang+dimiliki+oleh+setiap+mahasiswa+yang+berkaitan+dengan+disiplin+ilmu%2C+agar+setelah+lulus+dari+perguruan+tinggi+maka+mahasiswa+siap+untuk+terjun+langsung+ke+masyarakat.%3C%2Fp%3E%0D%0A%0D%0A%3Cp%3EPada+dasarnya%2C+Himpunan+Mahasiswa+ada+dua+yaitu+Himpunan+Mahasiswa+Jurusan+atau+HMJ+serta+Himpunan+Mahasiswa+Program+Studi+atau+HMPS+yang+berada+di+tingkat+fakultas+serta+berada+di+bawah+koordinasi+dari+para+Senat+Mahasiswa+atau+BEM+fakultas%2C+sehingga+seluruh+kegiatan+yang+diadakan+oleh+HMJ+atau+HMPS+haruslah+memiliki+afiliasi+dengan+program-program+yang+ada+pada+Senat+Mahasiswa.%3C%2Fp%3E%0D%0A&submit=update', NULL, '2023-09-28 12:55:20'),
(1503, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi/update/2ce7ee37b2fd6b27545f6867ea22080d9e59cf02d797590c1924c9ce91513abfce842a7949dad17f6eefb71aa6203b31d641b52d353d138f7b87c882f106d37aWNHaId8FRRZWQB85YBNcHB1OaCXzL9X9lI_SJcJDhxs-', NULL, '2023-09-28 12:56:00'),
(1504, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi/update/2ce7ee37b2fd6b27545f6867ea22080d9e59cf02d797590c1924c9ce91513abfce842a7949dad17f6eefb71aa6203b31d641b52d353d138f7b87c882f106d37aWNHaId8FRRZWQB85YBNcHB1OaCXzL9X9lI_SJcJDhxs-', NULL, '2023-09-28 12:56:04'),
(1505, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi/update_action/2ce7ee37b2fd6b27545f6867ea22080d9e59cf02d797590c1924c9ce91513abfce842a7949dad17f6eefb71aa6203b31d641b52d353d138f7b87c882f106d37aWNHaId8FRRZWQB85YBNcHB1OaCXzL9X9lI_SJcJDhxs-?kategori=HIMA&nama=HIMA+Pendidikan+Biologi&img=&file-dir-image=&image=280923101210_hima.png&deskripsi=%3Cp%3EHimpunan+Mahasiswa+atau+Hima+merupakan+salah+satu+organisasi+mahasiswa+yang+berada+di+tingkat+jurusan+dan+termasuk+organisasi+intra+kampus%2C+serta+bagian+dari+kegiatan+ekstra+kurikuler+yang+dapat+dipilih+dan+diikuti+oleh+setiap+mahasiswa.+Hadirnya+organisasi+Himpunan+Mahasiswa+tersebut%2C+berasal+dari+prinsip+dari%2C+oleh+serta+untuk+mahasiswa.%3C%2Fp%3E%0D%0A%0D%0A%3Cp%3EHima+menjadi+media+bagi+para+anggotanya+agar+mampu+mengembangkan+pola+pikir%2C+kepribadian+serta+potensi+yang+dimiliki+oleh+setiap+mahasiswa+yang+berkaitan+dengan+disiplin+ilmu%2C+agar+setelah+lulus+dari+perguruan+tinggi+maka+mahasiswa+siap+untuk+terjun+langsung+ke+masyarakat.%3C%2Fp%3E%0D%0A%0D%0A%3Cp%3EPada+dasarnya%2C+Himpunan+Mahasiswa+ada+dua+yaitu+Himpunan+Mahasiswa+Jurusan+atau+HMJ+serta+Himpunan+Mahasiswa+Program+Studi+atau+HMPS+yang+berada+di+tingkat+fakultas+serta+berada+di+bawah+koordinasi+dari+para+Senat+Mahasiswa+atau+BEM+fakultas%2C+sehingga+seluruh+kegiatan+yang+diadakan+oleh+HMJ+atau+HMPS+haruslah+memiliki+afiliasi+dengan+program-program+yang+ada+pada+Senat+Mahasiswa.%3C%2Fp%3E%0D%0A&submit=update', NULL, '2023-09-28 12:56:12'),
(1506, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi/update/2ce7ee37b2fd6b27545f6867ea22080d9e59cf02d797590c1924c9ce91513abfce842a7949dad17f6eefb71aa6203b31d641b52d353d138f7b87c882f106d37aWNHaId8FRRZWQB85YBNcHB1OaCXzL9X9lI_SJcJDhxs-', NULL, '2023-09-28 12:56:15'),
(1507, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi', NULL, '2023-09-28 12:58:12'),
(1508, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi', NULL, '2023-09-28 12:58:14'),
(1509, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi/update/f06b6669e9ff64f516d817acee161e3642010c406a4d2e41e336b74d25662126a4d5a626767b1441fc42d69b367d490cd8620a94981cc9a849031bc525a8ecd9MKZM0ugPgfwlHL4CU8dEkOK0LTbt9xV6tkI2z1j3wRs-', NULL, '2023-09-28 12:58:15'),
(1510, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi/update_action/f06b6669e9ff64f516d817acee161e3642010c406a4d2e41e336b74d25662126a4d5a626767b1441fc42d69b367d490cd8620a94981cc9a849031bc525a8ecd9MKZM0ugPgfwlHL4CU8dEkOK0LTbt9xV6tkI2z1j3wRs-?kategori=HIMA&nama=HIMA+Pendidikan+Biologi&img=&file-dir-image=&image=280923101210_hima.png&deskripsi=%3Cp%3EHimpunan+Mahasiswa+atau+Hima+merupakan+salah+satu+organisasi+mahasiswa+yang+berada+di+tingkat+jurusan+dan+termasuk+organisasi+intra+kampus%2C+serta+bagian+dari+kegiatan+ekstra+kurikuler+yang+dapat+dipilih+dan+diikuti+oleh+setiap+mahasiswa.+Hadirnya+organisasi+Himpunan+Mahasiswa+tersebut%2C+berasal+dari+prinsip+dari%2C+oleh+serta+untuk+mahasiswa.%3C%2Fp%3E%0D%0A%0D%0A%3Cp%3EHima+menjadi+media+bagi+para+anggotanya+agar+mampu+mengembangkan+pola+pikir%2C+kepribadian+serta+potensi+yang+dimiliki+oleh+setiap+mahasiswa+yang+berkaitan+dengan+disiplin+ilmu%2C+agar+setelah+lulus+dari+perguruan+tinggi+maka+mahasiswa+siap+untuk+terjun+langsung+ke+masyarakat.%3C%2Fp%3E%0D%0A%0D%0A%3Cp%3EPada+dasarnya%2C+Himpunan+Mahasiswa+ada+dua+yaitu+Himpunan+Mahasiswa+Jurusan+atau+HMJ+serta+Himpunan+Mahasiswa+Program+Studi+atau+HMPS+yang+berada+di+tingkat+fakultas+serta+berada+di+bawah+koordinasi+dari+para+Senat+Mahasiswa+atau+BEM+fakultas%2C+sehingga+seluruh+kegiatan+yang+diadakan+oleh+HMJ+atau+HMPS+haruslah+memiliki+afiliasi+dengan+program-program+yang+ada+pada+Senat+Mahasiswa.%3C%2Fp%3E%0D%0A&submit=update', NULL, '2023-09-28 12:58:26'),
(1511, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi/update_action/f06b6669e9ff64f516d817acee161e3642010c406a4d2e41e336b74d25662126a4d5a626767b1441fc42d69b367d490cd8620a94981cc9a849031bc525a8ecd9MKZM0ugPgfwlHL4CU8dEkOK0LTbt9xV6tkI2z1j3wRs-?kategori=HIMA&nama=HIMA+Pendidikan+Biologi&img=&file-dir-image=&image=280923101210_hima.png&deskripsi=%3Cp%3EHimpunan+Mahasiswa+atau+Hima+merupakan+salah+satu+organisasi+mahasiswa+yang+berada+di+tingkat+jurusan+dan+termasuk+organisasi+intra+kampus%2C+serta+bagian+dari+kegiatan+ekstra+kurikuler+yang+dapat+dipilih+dan+diikuti+oleh+setiap+mahasiswa.+Hadirnya+organisasi+Himpunan+Mahasiswa+tersebut%2C+berasal+dari+prinsip+dari%2C+oleh+serta+untuk+mahasiswa.%3C%2Fp%3E%0D%0A%0D%0A%3Cp%3EHima+menjadi+media+bagi+para+anggotanya+agar+mampu+mengembangkan+pola+pikir%2C+kepribadian+serta+potensi+yang+dimiliki+oleh+setiap+mahasiswa+yang+berkaitan+dengan+disiplin+ilmu%2C+agar+setelah+lulus+dari+perguruan+tinggi+maka+mahasiswa+siap+untuk+terjun+langsung+ke+masyarakat.%3C%2Fp%3E%0D%0A%0D%0A%3Cp%3EPada+dasarnya%2C+Himpunan+Mahasiswa+ada+dua+yaitu+Himpunan+Mahasiswa+Jurusan+atau+HMJ+serta+Himpunan+Mahasiswa+Program+Studi+atau+HMPS+yang+berada+di+tingkat+fakultas+serta+berada+di+bawah+koordinasi+dari+para+Senat+Mahasiswa+atau+BEM+fakultas%2C+sehingga+seluruh+kegiatan+yang+diadakan+oleh+HMJ+atau+HMPS+haruslah+memiliki+afiliasi+dengan+program-program+yang+ada+pada+Senat+Mahasiswa.%3C%2Fp%3E%0D%0A&submit=update', NULL, '2023-09-28 12:58:34'),
(1512, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi/update/f06b6669e9ff64f516d817acee161e3642010c406a4d2e41e336b74d25662126a4d5a626767b1441fc42d69b367d490cd8620a94981cc9a849031bc525a8ecd9MKZM0ugPgfwlHL4CU8dEkOK0LTbt9xV6tkI2z1j3wRs-', NULL, '2023-09-28 12:59:25'),
(1513, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi/update/Error', NULL, '2023-09-28 12:59:27'),
(1514, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi', NULL, '2023-09-28 12:59:35'),
(1515, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi/update/7505c96fe8869f52b00d6926c7d28f6c53e7e7d45179c5cc20b6b0a59658176ae27d07b8c7f6d66ace77f5bb2b4b1e4a68c6c471611c79a0458c7997cf9e42d6uDqQh_iYsq12cTxHXpbZwEUsdEJNq~DgxX8rLeOUPTQ-', NULL, '2023-09-28 12:59:39'),
(1516, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi/update_action/7505c96fe8869f52b00d6926c7d28f6c53e7e7d45179c5cc20b6b0a59658176ae27d07b8c7f6d66ace77f5bb2b4b1e4a68c6c471611c79a0458c7997cf9e42d6uDqQh_iYsq12cTxHXpbZwEUsdEJNq~DgxX8rLeOUPTQ-?kategori=HIMA&nama=HIMA+Pendidikan+Biologi&img=&file-dir-image=&image=280923101210_hima.png&deskripsi=%3Cp%3EHimpunan+Mahasiswa+atau+Hima+merupakan+salah+satu+organisasi+mahasiswa+yang+berada+di+tingkat+jurusan+dan+termasuk+organisasi+intra+kampus%2C+serta+bagian+dari+kegiatan+ekstra+kurikuler+yang+dapat+dipilih+dan+diikuti+oleh+setiap+mahasiswa.+Hadirnya+organisasi+Himpunan+Mahasiswa+tersebut%2C+berasal+dari+prinsip+dari%2C+oleh+serta+untuk+mahasiswa.%3C%2Fp%3E%0D%0A%0D%0A%3Cp%3EHima+menjadi+media+bagi+para+anggotanya+agar+mampu+mengembangkan+pola+pikir%2C+kepribadian+serta+potensi+yang+dimiliki+oleh+setiap+mahasiswa+yang+berkaitan+dengan+disiplin+ilmu%2C+agar+setelah+lulus+dari+perguruan+tinggi+maka+mahasiswa+siap+untuk+terjun+langsung+ke+masyarakat.%3C%2Fp%3E%0D%0A%0D%0A%3Cp%3EPada+dasarnya%2C+Himpunan+Mahasiswa+ada+dua+yaitu+Himpunan+Mahasiswa+Jurusan+atau+HMJ+serta+Himpunan+Mahasiswa+Program+Studi+atau+HMPS+yang+berada+di+tingkat+fakultas+serta+berada+di+bawah+koordinasi+dari+para+Senat+Mahasiswa+atau+BEM+fakultas%2C+sehingga+seluruh+kegiatan+yang+diadakan+oleh+HMJ+atau+HMPS+haruslah+memiliki+afiliasi+dengan+program-program+yang+ada+pada+Senat+Mahasiswa.%3C%2Fp%3E%0D%0A&submit=update', NULL, '2023-09-28 12:59:48'),
(1517, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi/update/7505c96fe8869f52b00d6926c7d28f6c53e7e7d45179c5cc20b6b0a59658176ae27d07b8c7f6d66ace77f5bb2b4b1e4a68c6c471611c79a0458c7997cf9e42d6uDqQh_iYsq12cTxHXpbZwEUsdEJNq~DgxX8rLeOUPTQ-', NULL, '2023-09-28 13:00:18'),
(1518, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi/update/Error', NULL, '2023-09-28 13:00:20'),
(1519, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi', NULL, '2023-09-28 13:00:24'),
(1520, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi/update/b254b9f4109844b63d9b0e315b03d2fd7e306a7714fe316801aa52c1b614c6d4d415a11b667abcdb7d33e4be31e2dc040a847c2bbcd186622203814e11e78bc9dYKSC223AxFsjckVu4sdZGPWkIVjjRGLk0lFynV7A8s-', NULL, '2023-09-28 13:00:27'),
(1521, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi/update_action/b254b9f4109844b63d9b0e315b03d2fd7e306a7714fe316801aa52c1b614c6d4d415a11b667abcdb7d33e4be31e2dc040a847c2bbcd186622203814e11e78bc9dYKSC223AxFsjckVu4sdZGPWkIVjjRGLk0lFynV7A8s-?kategori=HIMA&nama=HIMA+Pendidikan+Biologi&img=&file-dir-image=&image=280923101210_hima.png&deskripsi=%3Cp%3EHimpunan+Mahasiswa+atau+Hima+merupakan+salah+satu+organisasi+mahasiswa+yang+berada+di+tingkat+jurusan+dan+termasuk+organisasi+intra+kampus%2C+serta+bagian+dari+kegiatan+ekstra+kurikuler+yang+dapat+dipilih+dan+diikuti+oleh+setiap+mahasiswa.+Hadirnya+organisasi+Himpunan+Mahasiswa+tersebut%2C+berasal+dari+prinsip+dari%2C+oleh+serta+untuk+mahasiswa.%3C%2Fp%3E%0D%0A%0D%0A%3Cp%3EHima+menjadi+media+bagi+para+anggotanya+agar+mampu+mengembangkan+pola+pikir%2C+kepribadian+serta+potensi+yang+dimiliki+oleh+setiap+mahasiswa+yang+berkaitan+dengan+disiplin+ilmu%2C+agar+setelah+lulus+dari+perguruan+tinggi+maka+mahasiswa+siap+untuk+terjun+langsung+ke+masyarakat.%3C%2Fp%3E%0D%0A%0D%0A%3Cp%3EPada+dasarnya%2C+Himpunan+Mahasiswa+ada+dua+yaitu+Himpunan+Mahasiswa+Jurusan+atau+HMJ+serta+Himpunan+Mahasiswa+Program+Studi+atau+HMPS+yang+berada+di+tingkat+fakultas+serta+berada+di+bawah+koordinasi+dari+para+Senat+Mahasiswa+atau+BEM+fakultas%2C+sehingga+seluruh+kegiatan+yang+diadakan+oleh+HMJ+atau+HMPS+haruslah+memiliki+afiliasi+dengan+program-program+yang+ada+pada+Senat+Mahasiswa.%3C%2Fp%3E%0D%0A&submit=update', NULL, '2023-09-28 13:00:34'),
(1522, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi', NULL, '2023-09-28 13:00:34'),
(1523, 1, '::1', 'title', '/BEM/cpanel/Error', NULL, '2023-09-28 13:00:36'),
(1524, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi/update/e0475099fc8cab210e9c90cecebe5d2d1dced4a1376a55dc92a7295104f5e49a35af26e32302327c68457d897adb9c7675e3b9ab1a584ec082fff0b9609152b0KQ3uuw5wSzIaULI66zUwQUk~zDfQPW~G8V99a_pJlCg-', NULL, '2023-09-28 13:00:40'),
(1525, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi', NULL, '2023-09-28 13:00:57'),
(1526, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi/update/3a3a847d71f69400c506a57fc87d556e9f1da67ee9c5d938b1cbb5f46cf17b96b2736a4862082c8ea8f31a5e7b0fe136ae0c41ea88bbb638892121831b57191dK906hwnc89pxAOepJUzgg43HDyLYkNH2RLP70vWeB68-', NULL, '2023-09-28 13:01:00'),
(1527, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi/update_action/3a3a847d71f69400c506a57fc87d556e9f1da67ee9c5d938b1cbb5f46cf17b96b2736a4862082c8ea8f31a5e7b0fe136ae0c41ea88bbb638892121831b57191dK906hwnc89pxAOepJUzgg43HDyLYkNH2RLP70vWeB68-?kategori=HIMA&nama=HIMA+Pendidikan+Biologi&img=&file-dir-image=&image=280923101210_hima.png&deskripsi=%3Cp%3EHimpunan+Mahasiswa+atau+Hima+merupakan+salah+satu+organisasi+mahasiswa+yang+berada+di+tingkat+jurusan+dan+termasuk+organisasi+intra+kampus%2C+serta+bagian+dari+kegiatan+ekstra+kurikuler+yang+dapat+dipilih+dan+diikuti+oleh+setiap+mahasiswa.+Hadirnya+organisasi+Himpunan+Mahasiswa+tersebut%2C+berasal+dari+prinsip+dari%2C+oleh+serta+untuk+mahasiswa.%3C%2Fp%3E%0D%0A%0D%0A%3Cp%3EHima+menjadi+media+bagi+para+anggotanya+agar+mampu+mengembangkan+pola+pikir%2C+kepribadian+serta+potensi+yang+dimiliki+oleh+setiap+mahasiswa+yang+berkaitan+dengan+disiplin+ilmu%2C+agar+setelah+lulus+dari+perguruan+tinggi+maka+mahasiswa+siap+untuk+terjun+langsung+ke+masyarakat.%3C%2Fp%3E%0D%0A%0D%0A%3Cp%3EPada+dasarnya%2C+Himpunan+Mahasiswa+ada+dua+yaitu+Himpunan+Mahasiswa+Jurusan+atau+HMJ+serta+Himpunan+Mahasiswa+Program+Studi+atau+HMPS+yang+berada+di+tingkat+fakultas+serta+berada+di+bawah+koordinasi+dari+para+Senat+Mahasiswa+atau+BEM+fakultas%2C+sehingga+seluruh+kegiatan+yang+diadakan+oleh+HMJ+atau+HMPS+haruslah+memiliki+afiliasi+dengan+program-program+yang+ada+pada+Senat+Mahasiswa.%3C%2Fp%3E%0D%0A&submit=update', NULL, '2023-09-28 13:01:07'),
(1528, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi', NULL, '2023-09-28 13:01:07'),
(1529, 1, '::1', 'title', '/BEM/cpanel/Error', NULL, '2023-09-28 13:01:08'),
(1530, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi/update/aeead742eafef0cbb7655aad5947da26d9a87f96c112b199ddada24c4f409e31a6642e99128a7f34bbfb1a3c3ba066ddc2f99c92a19d570745eabe34ab9e3ed4GWbVPtbXKwybKPvqb_Fu4KUMX~2qRi3JKWs4ZyZvQfU-', NULL, '2023-09-28 13:01:11'),
(1531, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi/update_action/aeead742eafef0cbb7655aad5947da26d9a87f96c112b199ddada24c4f409e31a6642e99128a7f34bbfb1a3c3ba066ddc2f99c92a19d570745eabe34ab9e3ed4GWbVPtbXKwybKPvqb_Fu4KUMX~2qRi3JKWs4ZyZvQfU-?kategori=HIMA&nama=HIMA+Pend.+Biologii&img=&file-dir-image=&image=280923101210_hima.png&deskripsi=%3Cp%3EHimpunan+Mahasiswa+atau+Hima+merupakan+salah+satu+organisasi+mahasiswa+yang+berada+di+tingkat+jurusan+dan+termasuk+organisasi+intra+kampus%2C+serta+bagian+dari+kegiatan+ekstra+kurikuler+yang+dapat+dipilih+dan+diikuti+oleh+setiap+mahasiswa.+Hadirnya+organisasi+Himpunan+Mahasiswa+tersebut%2C+berasal+dari+prinsip+dari%2C+oleh+serta+untuk+mahasiswa.%3C%2Fp%3E%0D%0A%0D%0A%3Cp%3EHima+menjadi+media+bagi+para+anggotanya+agar+mampu+mengembangkan+pola+pikir%2C+kepribadian+serta+potensi+yang+dimiliki+oleh+setiap+mahasiswa+yang+berkaitan+dengan+disiplin+ilmu%2C+agar+setelah+lulus+dari+perguruan+tinggi+maka+mahasiswa+siap+untuk+terjun+langsung+ke+masyarakat.%3C%2Fp%3E%0D%0A%0D%0A%3Cp%3EPada+dasarnya%2C+Himpunan+Mahasiswa+ada+dua+yaitu+Himpunan+Mahasiswa+Jurusan+atau+HMJ+serta+Himpunan+Mahasiswa+Program+Studi+atau+HMPS+yang+berada+di+tingkat+fakultas+serta+berada+di+bawah+koordinasi+dari+para+Senat+Mahasiswa+atau+BEM+fakultas%2C+sehingga+seluruh+kegiatan+yang+diadakan+oleh+HMJ+atau+HMPS+haruslah+memiliki+afiliasi+dengan+program-program+yang+ada+pada+Senat+Mahasiswa.%3C%2Fp%3E%0D%0A&submit=update', NULL, '2023-09-28 13:01:46'),
(1532, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi', NULL, '2023-09-28 13:01:46'),
(1533, 1, '::1', 'title', '/BEM/cpanel/Error', NULL, '2023-09-28 13:01:48'),
(1534, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi/update/0755851e9b883cce7413e5344d4c63be0bd5dd458531cb944e396b03a4efe025fcf4db6f24d1dddd657489eb3c20f3fda1bd9eb97d2264b478814cea9376f3cb59Qm9gCcIAXhWrODM7ZUW1MF5lbFwdeIfOBnrHf3~zg-', NULL, '2023-09-28 13:01:51'),
(1535, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi/update/0755851e9b883cce7413e5344d4c63be0bd5dd458531cb944e396b03a4efe025fcf4db6f24d1dddd657489eb3c20f3fda1bd9eb97d2264b478814cea9376f3cb59Qm9gCcIAXhWrODM7ZUW1MF5lbFwdeIfOBnrHf3~zg-', NULL, '2023-09-28 13:02:41'),
(1536, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi/update_action/0755851e9b883cce7413e5344d4c63be0bd5dd458531cb944e396b03a4efe025fcf4db6f24d1dddd657489eb3c20f3fda1bd9eb97d2264b478814cea9376f3cb59Qm9gCcIAXhWrODM7ZUW1MF5lbFwdeIfOBnrHf3~zg-', '{\"kategori\":\"HIMA\",\"nama\":\"HIMA Pendidikan Biologi\",\"img\":\"\",\"file-dir-image\":\"\",\"image\":\"280923101210_hima.png\",\"deskripsi\":\"<p>Himpunan Mahasiswa atau Hima merupakan salah satu organisasi mahasiswa yang berada di tingkat jurusan dan termasuk organisasi intra kampus, serta bagian dari kegiatan ekstra kurikuler yang dapat dipilih dan diikuti oleh setiap mahasiswa. Hadirnya organisasi Himpunan Mahasiswa tersebut, berasal dari prinsip dari, oleh serta untuk mahasiswa.<\\/p>\\r\\n\\r\\n<p>Hima menjadi media bagi para anggotanya agar mampu mengembangkan pola pikir, kepribadian serta potensi yang dimiliki oleh setiap mahasiswa yang berkaitan dengan disiplin ilmu, agar setelah lulus dari perguruan tinggi maka mahasiswa siap untuk terjun langsung ke masyarakat.<\\/p>\\r\\n\\r\\n<p>Pada dasarnya, Himpunan Mahasiswa ada dua yaitu Himpunan Mahasiswa Jurusan atau HMJ serta Himpunan Mahasiswa Program Studi atau HMPS yang berada di tingkat fakultas serta berada di bawah koordinasi dari para Senat Mahasiswa atau BEM fakultas, sehingga seluruh kegiatan yang diadakan oleh HMJ atau HMPS haruslah memiliki afiliasi dengan program-program yang ada pada Senat Mahasiswa.<\\/p>\\r\\n\",\"submit\":\"update\"}', '2023-09-28 13:02:51'),
(1537, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi/update/0755851e9b883cce7413e5344d4c63be0bd5dd458531cb944e396b03a4efe025fcf4db6f24d1dddd657489eb3c20f3fda1bd9eb97d2264b478814cea9376f3cb59Qm9gCcIAXhWrODM7ZUW1MF5lbFwdeIfOBnrHf3~zg-', NULL, '2023-09-28 14:34:59'),
(1538, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi/update_action/0755851e9b883cce7413e5344d4c63be0bd5dd458531cb944e396b03a4efe025fcf4db6f24d1dddd657489eb3c20f3fda1bd9eb97d2264b478814cea9376f3cb59Qm9gCcIAXhWrODM7ZUW1MF5lbFwdeIfOBnrHf3~zg-', '{\"kategori\":\"HIMA\",\"nama\":\"HIMA Pendidikan Biologi\",\"img\":\"\",\"file-dir-image\":\"\",\"image\":\"280923101210_hima.png\",\"deskripsi\":\"<p>Himpunan Mahasiswa atau Hima merupakan salah satu organisasi mahasiswa yang berada di tingkat jurusan dan termasuk organisasi intra kampus, serta bagian dari kegiatan ekstra kurikuler yang dapat dipilih dan diikuti oleh setiap mahasiswa. Hadirnya organisasi Himpunan Mahasiswa tersebut, berasal dari prinsip dari, oleh serta untuk mahasiswa.<\\/p>\\r\\n\\r\\n<p>Hima menjadi media bagi para anggotanya agar mampu mengembangkan pola pikir, kepribadian serta potensi yang dimiliki oleh setiap mahasiswa yang berkaitan dengan disiplin ilmu, agar setelah lulus dari perguruan tinggi maka mahasiswa siap untuk terjun langsung ke masyarakat.<\\/p>\\r\\n\\r\\n<p>Pada dasarnya, Himpunan Mahasiswa ada dua yaitu Himpunan Mahasiswa Jurusan atau HMJ serta Himpunan Mahasiswa Program Studi atau HMPS yang berada di tingkat fakultas serta berada di bawah koordinasi dari para Senat Mahasiswa atau BEM fakultas, sehingga seluruh kegiatan yang diadakan oleh HMJ atau HMPS haruslah memiliki afiliasi dengan program-program yang ada pada Senat Mahasiswa.<\\/p>\\r\\n\",\"submit\":\"update\"}', '2023-09-28 14:35:09'),
(1539, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi', NULL, '2023-09-28 14:35:09'),
(1540, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi/update/b5fd9e5366e3320c900d0eb5eff8f4f8e27d7bc69b52aae4f44f84d8231c54f8bb0ec2dc34b0fafb16238c2c210655b55f515f1a4fb347b60d04d0ea0f5ab7a2iFjpUao3ZdhkcplBaeCRGZ_8eB4JrqAWyQz1a1bx4uo-', NULL, '2023-09-28 14:36:02'),
(1541, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi/update_action/b5fd9e5366e3320c900d0eb5eff8f4f8e27d7bc69b52aae4f44f84d8231c54f8bb0ec2dc34b0fafb16238c2c210655b55f515f1a4fb347b60d04d0ea0f5ab7a2iFjpUao3ZdhkcplBaeCRGZ_8eB4JrqAWyQz1a1bx4uo-', '{\"kategori\":\"HIMA\",\"nama\":\"HIMA Pendidikan Biologi\",\"img\":\"\",\"file-dir-image\":\"\",\"image\":\"280923101210_hima.png\",\"deskripsi\":\"<p>Himpunan Mahasiswa atau Hima merupakan salah satu organisasi mahasiswa yang berada di tingkat jurusan dan termasuk organisasi intra kampus, serta bagian dari kegiatan ekstra kurikuler yang dapat dipilih dan diikuti oleh setiap mahasiswa. Hadirnya organisasi Himpunan Mahasiswa tersebut, berasal dari prinsip dari, oleh serta untuk mahasiswa.<\\/p>\\r\\n\\r\\n<p>Hima menjadi media bagi para anggotanya agar mampu mengembangkan pola pikir, kepribadian serta potensi yang dimiliki oleh setiap mahasiswa yang berkaitan dengan disiplin ilmu, agar setelah lulus dari perguruan tinggi maka mahasiswa siap untuk terjun langsung ke masyarakat.<\\/p>\\r\\n\\r\\n<p>Pada dasarnya, Himpunan Mahasiswa ada dua yaitu Himpunan Mahasiswa Jurusan atau HMJ serta Himpunan Mahasiswa Program Studi atau HMPS yang berada di tingkat fakultas serta berada di bawah koordinasi dari para Senat Mahasiswa atau BEM fakultas, sehingga seluruh kegiatan yang diadakan oleh HMJ atau HMPS haruslah memiliki afiliasi dengan program-program yang ada pada Senat Mahasiswa.<\\/p>\\r\\n\",\"submit\":\"update\"}', '2023-09-28 14:36:07'),
(1542, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi', NULL, '2023-09-28 14:36:07'),
(1543, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi/update/360b5f1b054fd81007109d4993fa46a4163bf74bbc8fe5533eb9fd0149f7e76ef3207bea367a2f1d80ad9a26215602992ccabcf0ba799ba783ce90eed5de364c9F8n53rgjQ09vM1QDHs1yng7ryEObA_0PBf3Bl11~0A-', NULL, '2023-09-28 14:36:17'),
(1544, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi/update_action/360b5f1b054fd81007109d4993fa46a4163bf74bbc8fe5533eb9fd0149f7e76ef3207bea367a2f1d80ad9a26215602992ccabcf0ba799ba783ce90eed5de364c9F8n53rgjQ09vM1QDHs1yng7ryEObA_0PBf3Bl11~0A-', '{\"kategori\":\"UKM\",\"nama\":\"UKM Pramuka\",\"img\":\"\",\"file-dir-image\":\"\",\"image\":\"280923101405_ukm.jpg\",\"deskripsi\":\"<p>UKM Pramuka merupakan wadah untuk menunjang pengembangan potensi dan daya kreatifitas mahasiswa dalam mengamalkan Tri Dharma Perguruan Tinggi. UKM ini menggunakan metode belajar Learning by Doing, yaitu belajar dengan melakukan. Seorang pramuka mengalami proses pembelajaran yang bertahap, kesulitan dan tanggung jawab yang diembannya disesuaikan dengan tingkatan dalam usia mereka.<\\/p>\\r\\n\",\"submit\":\"update\"}', '2023-09-28 14:36:20');
INSERT INTO `ci_user_log` (`id`, `user`, `ip_address`, `controller`, `url`, `data`, `created_at`) VALUES
(1545, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi', NULL, '2023-09-28 14:36:20'),
(1546, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi/update/b028c82d1b88a0c3079b9580d2f74228792fa29cd5ad6f859813b465286e9113538e393fdf39eaf3c5a437d04f2ea740d3c55fc39a9b3baaf6f0a55781159ec443RYgrSGxcZ3M2G3TfF5YqbGLqpZ~l08fy0mNjCdxZE-', NULL, '2023-09-28 14:41:44'),
(1547, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi/update_action/b028c82d1b88a0c3079b9580d2f74228792fa29cd5ad6f859813b465286e9113538e393fdf39eaf3c5a437d04f2ea740d3c55fc39a9b3baaf6f0a55781159ec443RYgrSGxcZ3M2G3TfF5YqbGLqpZ~l08fy0mNjCdxZE-', '{\"kategori\":\"HIMA\",\"nama\":\"HIMA Pendidikan Biologi Tes\",\"img\":\"\",\"file-dir-image\":\"\",\"image\":\"280923101210_hima.png\",\"deskripsi\":\"<p>Himpunan Mahasiswa atau Hima merupakan salah satu organisasi mahasiswa yang berada di tingkat jurusan dan termasuk organisasi intra kampus, serta bagian dari kegiatan ekstra kurikuler yang dapat dipilih dan diikuti oleh setiap mahasiswa. Hadirnya organisasi Himpunan Mahasiswa tersebut, berasal dari prinsip dari, oleh serta untuk mahasiswa.<\\/p>\\r\\n\\r\\n<p>Hima menjadi media bagi para anggotanya agar mampu mengembangkan pola pikir, kepribadian serta potensi yang dimiliki oleh setiap mahasiswa yang berkaitan dengan disiplin ilmu, agar setelah lulus dari perguruan tinggi maka mahasiswa siap untuk terjun langsung ke masyarakat.<\\/p>\\r\\n\\r\\n<p>Pada dasarnya, Himpunan Mahasiswa ada dua yaitu Himpunan Mahasiswa Jurusan atau HMJ serta Himpunan Mahasiswa Program Studi atau HMPS yang berada di tingkat fakultas serta berada di bawah koordinasi dari para Senat Mahasiswa atau BEM fakultas, sehingga seluruh kegiatan yang diadakan oleh HMJ atau HMPS haruslah memiliki afiliasi dengan program-program yang ada pada Senat Mahasiswa.<\\/p>\\r\\n\",\"submit\":\"update\"}', '2023-09-28 14:42:00'),
(1548, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi', NULL, '2023-09-28 14:42:00'),
(1549, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi', NULL, '2023-09-28 14:42:28'),
(1550, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi/update/adb55d070d0aa209e4034711d934a6e4fad92054b1c160d89fd4f0f87458c4284ff8ce596868b510b9dd5d0d13326523bc4933a80af6fe27305af001a50aea5dzpQizFR~2AG_5eFkCNY48XgAhWK2m_R0k36SEACRzWo-', NULL, '2023-09-28 14:42:32'),
(1551, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi/update_action/adb55d070d0aa209e4034711d934a6e4fad92054b1c160d89fd4f0f87458c4284ff8ce596868b510b9dd5d0d13326523bc4933a80af6fe27305af001a50aea5dzpQizFR~2AG_5eFkCNY48XgAhWK2m_R0k36SEACRzWo-', '{\"kategori\":\"HIMA\",\"nama\":\"HIMA Pendidikan Biologi halo\",\"img\":\"\",\"file-dir-image\":\"\",\"image\":\"280923101210_hima.png\",\"deskripsi\":\"<p>Himpunan Mahasiswa atau Hima merupakan salah satu organisasi mahasiswa yang berada di tingkat jurusan dan termasuk organisasi intra kampus, serta bagian dari kegiatan ekstra kurikuler yang dapat dipilih dan diikuti oleh setiap mahasiswa. Hadirnya organisasi Himpunan Mahasiswa tersebut, berasal dari prinsip dari, oleh serta untuk mahasiswa.<\\/p>\\r\\n\\r\\n<p>Hima menjadi media bagi para anggotanya agar mampu mengembangkan pola pikir, kepribadian serta potensi yang dimiliki oleh setiap mahasiswa yang berkaitan dengan disiplin ilmu, agar setelah lulus dari perguruan tinggi maka mahasiswa siap untuk terjun langsung ke masyarakat.<\\/p>\\r\\n\\r\\n<p>Pada dasarnya, Himpunan Mahasiswa ada dua yaitu Himpunan Mahasiswa Jurusan atau HMJ serta Himpunan Mahasiswa Program Studi atau HMPS yang berada di tingkat fakultas serta berada di bawah koordinasi dari para Senat Mahasiswa atau BEM fakultas, sehingga seluruh kegiatan yang diadakan oleh HMJ atau HMPS haruslah memiliki afiliasi dengan program-program yang ada pada Senat Mahasiswa.<\\/p>\\r\\n\",\"submit\":\"update\"}', '2023-09-28 14:42:38'),
(1552, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi/update_action/adb55d070d0aa209e4034711d934a6e4fad92054b1c160d89fd4f0f87458c4284ff8ce596868b510b9dd5d0d13326523bc4933a80af6fe27305af001a50aea5dzpQizFR~2AG_5eFkCNY48XgAhWK2m_R0k36SEACRzWo-', NULL, '2023-09-28 14:44:41'),
(1553, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi/update/adb55d070d0aa209e4034711d934a6e4fad92054b1c160d89fd4f0f87458c4284ff8ce596868b510b9dd5d0d13326523bc4933a80af6fe27305af001a50aea5dzpQizFR~2AG_5eFkCNY48XgAhWK2m_R0k36SEACRzWo-', NULL, '2023-09-28 14:44:48'),
(1554, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi/update/Error', NULL, '2023-09-28 14:44:49'),
(1555, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi/update/adb55d070d0aa209e4034711d934a6e4fad92054b1c160d89fd4f0f87458c4284ff8ce596868b510b9dd5d0d13326523bc4933a80af6fe27305af001a50aea5dzpQizFR~2AG_5eFkCNY48XgAhWK2m_R0k36SEACRzWo-', NULL, '2023-09-28 14:44:58'),
(1556, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi/update_action/adb55d070d0aa209e4034711d934a6e4fad92054b1c160d89fd4f0f87458c4284ff8ce596868b510b9dd5d0d13326523bc4933a80af6fe27305af001a50aea5dzpQizFR~2AG_5eFkCNY48XgAhWK2m_R0k36SEACRzWo-', '{\"kategori\":\"HIMA\",\"nama\":\"HIMA Pendidikan Biologi jsksk\",\"img\":\"\",\"file-dir-image\":\"\",\"image\":\"280923101210_hima.png\",\"deskripsi\":\"<p>Himpunan Mahasiswa atau Hima merupakan salah satu organisasi mahasiswa yang berada di tingkat jurusan dan termasuk organisasi intra kampus, serta bagian dari kegiatan ekstra kurikuler yang dapat dipilih dan diikuti oleh setiap mahasiswa. Hadirnya organisasi Himpunan Mahasiswa tersebut, berasal dari prinsip dari, oleh serta untuk mahasiswa.<\\/p>\\r\\n\\r\\n<p>Hima menjadi media bagi para anggotanya agar mampu mengembangkan pola pikir, kepribadian serta potensi yang dimiliki oleh setiap mahasiswa yang berkaitan dengan disiplin ilmu, agar setelah lulus dari perguruan tinggi maka mahasiswa siap untuk terjun langsung ke masyarakat.<\\/p>\\r\\n\\r\\n<p>Pada dasarnya, Himpunan Mahasiswa ada dua yaitu Himpunan Mahasiswa Jurusan atau HMJ serta Himpunan Mahasiswa Program Studi atau HMPS yang berada di tingkat fakultas serta berada di bawah koordinasi dari para Senat Mahasiswa atau BEM fakultas, sehingga seluruh kegiatan yang diadakan oleh HMJ atau HMPS haruslah memiliki afiliasi dengan program-program yang ada pada Senat Mahasiswa.<\\/p>\\r\\n\",\"submit\":\"update\"}', '2023-09-28 14:45:11'),
(1557, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi/update_action/adb55d070d0aa209e4034711d934a6e4fad92054b1c160d89fd4f0f87458c4284ff8ce596868b510b9dd5d0d13326523bc4933a80af6fe27305af001a50aea5dzpQizFR~2AG_5eFkCNY48XgAhWK2m_R0k36SEACRzWo-', '{\"kategori\":\"HIMA\",\"nama\":\"HIMA Pendidikan Biologi jsksk\",\"img\":\"\",\"file-dir-image\":\"\",\"image\":\"280923101210_hima.png\",\"deskripsi\":\"<p>Himpunan Mahasiswa atau Hima merupakan salah satu organisasi mahasiswa yang berada di tingkat jurusan dan termasuk organisasi intra kampus, serta bagian dari kegiatan ekstra kurikuler yang dapat dipilih dan diikuti oleh setiap mahasiswa. Hadirnya organisasi Himpunan Mahasiswa tersebut, berasal dari prinsip dari, oleh serta untuk mahasiswa.<\\/p>\\r\\n\\r\\n<p>Hima menjadi media bagi para anggotanya agar mampu mengembangkan pola pikir, kepribadian serta potensi yang dimiliki oleh setiap mahasiswa yang berkaitan dengan disiplin ilmu, agar setelah lulus dari perguruan tinggi maka mahasiswa siap untuk terjun langsung ke masyarakat.<\\/p>\\r\\n\\r\\n<p>Pada dasarnya, Himpunan Mahasiswa ada dua yaitu Himpunan Mahasiswa Jurusan atau HMJ serta Himpunan Mahasiswa Program Studi atau HMPS yang berada di tingkat fakultas serta berada di bawah koordinasi dari para Senat Mahasiswa atau BEM fakultas, sehingga seluruh kegiatan yang diadakan oleh HMJ atau HMPS haruslah memiliki afiliasi dengan program-program yang ada pada Senat Mahasiswa.<\\/p>\\r\\n\",\"submit\":\"update\"}', '2023-09-28 14:47:46'),
(1558, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi/update_action/adb55d070d0aa209e4034711d934a6e4fad92054b1c160d89fd4f0f87458c4284ff8ce596868b510b9dd5d0d13326523bc4933a80af6fe27305af001a50aea5dzpQizFR~2AG_5eFkCNY48XgAhWK2m_R0k36SEACRzWo-', '{\"kategori\":\"HIMA\",\"nama\":\"HIMA Pendidikan Biologi jsksk\",\"img\":\"\",\"file-dir-image\":\"\",\"image\":\"280923101210_hima.png\",\"deskripsi\":\"<p>Himpunan Mahasiswa atau Hima merupakan salah satu organisasi mahasiswa yang berada di tingkat jurusan dan termasuk organisasi intra kampus, serta bagian dari kegiatan ekstra kurikuler yang dapat dipilih dan diikuti oleh setiap mahasiswa. Hadirnya organisasi Himpunan Mahasiswa tersebut, berasal dari prinsip dari, oleh serta untuk mahasiswa.<\\/p>\\r\\n\\r\\n<p>Hima menjadi media bagi para anggotanya agar mampu mengembangkan pola pikir, kepribadian serta potensi yang dimiliki oleh setiap mahasiswa yang berkaitan dengan disiplin ilmu, agar setelah lulus dari perguruan tinggi maka mahasiswa siap untuk terjun langsung ke masyarakat.<\\/p>\\r\\n\\r\\n<p>Pada dasarnya, Himpunan Mahasiswa ada dua yaitu Himpunan Mahasiswa Jurusan atau HMJ serta Himpunan Mahasiswa Program Studi atau HMPS yang berada di tingkat fakultas serta berada di bawah koordinasi dari para Senat Mahasiswa atau BEM fakultas, sehingga seluruh kegiatan yang diadakan oleh HMJ atau HMPS haruslah memiliki afiliasi dengan program-program yang ada pada Senat Mahasiswa.<\\/p>\\r\\n\",\"submit\":\"update\"}', '2023-09-28 14:50:06'),
(1559, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi/update_action/adb55d070d0aa209e4034711d934a6e4fad92054b1c160d89fd4f0f87458c4284ff8ce596868b510b9dd5d0d13326523bc4933a80af6fe27305af001a50aea5dzpQizFR~2AG_5eFkCNY48XgAhWK2m_R0k36SEACRzWo-', '{\"kategori\":\"HIMA\",\"nama\":\"HIMA Pendidikan Biologi jsksk\",\"img\":\"\",\"file-dir-image\":\"\",\"image\":\"280923101210_hima.png\",\"deskripsi\":\"<p>Himpunan Mahasiswa atau Hima merupakan salah satu organisasi mahasiswa yang berada di tingkat jurusan dan termasuk organisasi intra kampus, serta bagian dari kegiatan ekstra kurikuler yang dapat dipilih dan diikuti oleh setiap mahasiswa. Hadirnya organisasi Himpunan Mahasiswa tersebut, berasal dari prinsip dari, oleh serta untuk mahasiswa.<\\/p>\\r\\n\\r\\n<p>Hima menjadi media bagi para anggotanya agar mampu mengembangkan pola pikir, kepribadian serta potensi yang dimiliki oleh setiap mahasiswa yang berkaitan dengan disiplin ilmu, agar setelah lulus dari perguruan tinggi maka mahasiswa siap untuk terjun langsung ke masyarakat.<\\/p>\\r\\n\\r\\n<p>Pada dasarnya, Himpunan Mahasiswa ada dua yaitu Himpunan Mahasiswa Jurusan atau HMJ serta Himpunan Mahasiswa Program Studi atau HMPS yang berada di tingkat fakultas serta berada di bawah koordinasi dari para Senat Mahasiswa atau BEM fakultas, sehingga seluruh kegiatan yang diadakan oleh HMJ atau HMPS haruslah memiliki afiliasi dengan program-program yang ada pada Senat Mahasiswa.<\\/p>\\r\\n\",\"submit\":\"update\"}', '2023-09-28 14:50:27'),
(1560, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi/update/adb55d070d0aa209e4034711d934a6e4fad92054b1c160d89fd4f0f87458c4284ff8ce596868b510b9dd5d0d13326523bc4933a80af6fe27305af001a50aea5dzpQizFR~2AG_5eFkCNY48XgAhWK2m_R0k36SEACRzWo-', NULL, '2023-09-28 14:50:38'),
(1561, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi', NULL, '2023-09-28 14:51:57'),
(1562, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi/update/3550a3eb0db672349d0953a8c8021a6b4dca33c85cd73f322d1525f32d88e130d331906ad097f6af00c26ea20cd68cd5f9a53c3f2f9426d47fc129ad39db235bCJH3YLiIHSP~gNAXc7hCmFMGPukuxuCdQ0FtpuPE0R0-', NULL, '2023-09-28 14:52:04'),
(1563, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi/update_action/3550a3eb0db672349d0953a8c8021a6b4dca33c85cd73f322d1525f32d88e130d331906ad097f6af00c26ea20cd68cd5f9a53c3f2f9426d47fc129ad39db235bCJH3YLiIHSP~gNAXc7hCmFMGPukuxuCdQ0FtpuPE0R0-', '{\"kategori\":\"HIMA\",\"nama\":\"HIMA Pend Matematika\",\"img\":\"\",\"file-dir-image\":\"\",\"image\":\"280923101229_hima.png\",\"deskripsi\":\"<p>Himpunan Mahasiswa atau Hima merupakan salah satu organisasi mahasiswa yang berada di tingkat jurusan dan termasuk organisasi intra kampus, serta bagian dari kegiatan ekstra kurikuler yang dapat dipilih dan diikuti oleh setiap mahasiswa. Hadirnya organisasi Himpunan Mahasiswa tersebut, berasal dari prinsip dari, oleh serta untuk mahasiswa.<\\/p>\\r\\n\\r\\n<p>Hima menjadi media bagi para anggotanya agar mampu mengembangkan pola pikir, kepribadian serta potensi yang dimiliki oleh setiap mahasiswa yang berkaitan dengan disiplin ilmu, agar setelah lulus dari perguruan tinggi maka mahasiswa siap untuk terjun langsung ke masyarakat.<\\/p>\\r\\n\\r\\n<p>Pada dasarnya, Himpunan Mahasiswa ada dua yaitu Himpunan Mahasiswa Jurusan atau HMJ serta Himpunan Mahasiswa Program Studi atau HMPS yang berada di tingkat fakultas serta berada di bawah koordinasi dari para Senat Mahasiswa atau BEM fakultas, sehingga seluruh kegiatan yang diadakan oleh HMJ atau HMPS haruslah memiliki afiliasi dengan program-program yang ada pada Senat Mahasiswa.<\\/p>\\r\\n\",\"submit\":\"update\"}', '2023-09-28 14:52:11'),
(1564, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi/update_action/3550a3eb0db672349d0953a8c8021a6b4dca33c85cd73f322d1525f32d88e130d331906ad097f6af00c26ea20cd68cd5f9a53c3f2f9426d47fc129ad39db235bCJH3YLiIHSP~gNAXc7hCmFMGPukuxuCdQ0FtpuPE0R0-', '{\"kategori\":\"HIMA\",\"nama\":\"HIMA Pend Matematika\",\"img\":\"\",\"file-dir-image\":\"\",\"image\":\"280923101229_hima.png\",\"deskripsi\":\"<p>Himpunan Mahasiswa atau Hima merupakan salah satu organisasi mahasiswa yang berada di tingkat jurusan dan termasuk organisasi intra kampus, serta bagian dari kegiatan ekstra kurikuler yang dapat dipilih dan diikuti oleh setiap mahasiswa. Hadirnya organisasi Himpunan Mahasiswa tersebut, berasal dari prinsip dari, oleh serta untuk mahasiswa.<\\/p>\\r\\n\\r\\n<p>Hima menjadi media bagi para anggotanya agar mampu mengembangkan pola pikir, kepribadian serta potensi yang dimiliki oleh setiap mahasiswa yang berkaitan dengan disiplin ilmu, agar setelah lulus dari perguruan tinggi maka mahasiswa siap untuk terjun langsung ke masyarakat.<\\/p>\\r\\n\\r\\n<p>Pada dasarnya, Himpunan Mahasiswa ada dua yaitu Himpunan Mahasiswa Jurusan atau HMJ serta Himpunan Mahasiswa Program Studi atau HMPS yang berada di tingkat fakultas serta berada di bawah koordinasi dari para Senat Mahasiswa atau BEM fakultas, sehingga seluruh kegiatan yang diadakan oleh HMJ atau HMPS haruslah memiliki afiliasi dengan program-program yang ada pada Senat Mahasiswa.<\\/p>\\r\\n\",\"submit\":\"update\"}', '2023-09-28 14:53:25'),
(1565, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi/update_action/3550a3eb0db672349d0953a8c8021a6b4dca33c85cd73f322d1525f32d88e130d331906ad097f6af00c26ea20cd68cd5f9a53c3f2f9426d47fc129ad39db235bCJH3YLiIHSP~gNAXc7hCmFMGPukuxuCdQ0FtpuPE0R0-', '{\"kategori\":\"HIMA\",\"nama\":\"HIMA Pend Matematika\",\"img\":\"\",\"file-dir-image\":\"\",\"image\":\"280923101229_hima.png\",\"deskripsi\":\"<p>Himpunan Mahasiswa atau Hima merupakan salah satu organisasi mahasiswa yang berada di tingkat jurusan dan termasuk organisasi intra kampus, serta bagian dari kegiatan ekstra kurikuler yang dapat dipilih dan diikuti oleh setiap mahasiswa. Hadirnya organisasi Himpunan Mahasiswa tersebut, berasal dari prinsip dari, oleh serta untuk mahasiswa.<\\/p>\\r\\n\\r\\n<p>Hima menjadi media bagi para anggotanya agar mampu mengembangkan pola pikir, kepribadian serta potensi yang dimiliki oleh setiap mahasiswa yang berkaitan dengan disiplin ilmu, agar setelah lulus dari perguruan tinggi maka mahasiswa siap untuk terjun langsung ke masyarakat.<\\/p>\\r\\n\\r\\n<p>Pada dasarnya, Himpunan Mahasiswa ada dua yaitu Himpunan Mahasiswa Jurusan atau HMJ serta Himpunan Mahasiswa Program Studi atau HMPS yang berada di tingkat fakultas serta berada di bawah koordinasi dari para Senat Mahasiswa atau BEM fakultas, sehingga seluruh kegiatan yang diadakan oleh HMJ atau HMPS haruslah memiliki afiliasi dengan program-program yang ada pada Senat Mahasiswa.<\\/p>\\r\\n\",\"submit\":\"update\"}', '2023-09-28 14:53:51'),
(1566, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi/update_action/3550a3eb0db672349d0953a8c8021a6b4dca33c85cd73f322d1525f32d88e130d331906ad097f6af00c26ea20cd68cd5f9a53c3f2f9426d47fc129ad39db235bCJH3YLiIHSP~gNAXc7hCmFMGPukuxuCdQ0FtpuPE0R0-', '{\"kategori\":\"HIMA\",\"nama\":\"HIMA Pend Matematika\",\"img\":\"\",\"file-dir-image\":\"\",\"image\":\"280923101229_hima.png\",\"deskripsi\":\"<p>Himpunan Mahasiswa atau Hima merupakan salah satu organisasi mahasiswa yang berada di tingkat jurusan dan termasuk organisasi intra kampus, serta bagian dari kegiatan ekstra kurikuler yang dapat dipilih dan diikuti oleh setiap mahasiswa. Hadirnya organisasi Himpunan Mahasiswa tersebut, berasal dari prinsip dari, oleh serta untuk mahasiswa.<\\/p>\\r\\n\\r\\n<p>Hima menjadi media bagi para anggotanya agar mampu mengembangkan pola pikir, kepribadian serta potensi yang dimiliki oleh setiap mahasiswa yang berkaitan dengan disiplin ilmu, agar setelah lulus dari perguruan tinggi maka mahasiswa siap untuk terjun langsung ke masyarakat.<\\/p>\\r\\n\\r\\n<p>Pada dasarnya, Himpunan Mahasiswa ada dua yaitu Himpunan Mahasiswa Jurusan atau HMJ serta Himpunan Mahasiswa Program Studi atau HMPS yang berada di tingkat fakultas serta berada di bawah koordinasi dari para Senat Mahasiswa atau BEM fakultas, sehingga seluruh kegiatan yang diadakan oleh HMJ atau HMPS haruslah memiliki afiliasi dengan program-program yang ada pada Senat Mahasiswa.<\\/p>\\r\\n\",\"submit\":\"update\"}', '2023-09-28 14:55:11'),
(1567, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi/update_action/3550a3eb0db672349d0953a8c8021a6b4dca33c85cd73f322d1525f32d88e130d331906ad097f6af00c26ea20cd68cd5f9a53c3f2f9426d47fc129ad39db235bCJH3YLiIHSP~gNAXc7hCmFMGPukuxuCdQ0FtpuPE0R0-', '{\"kategori\":\"HIMA\",\"nama\":\"HIMA Pend Matematika\",\"img\":\"\",\"file-dir-image\":\"\",\"image\":\"280923101229_hima.png\",\"deskripsi\":\"<p>Himpunan Mahasiswa atau Hima merupakan salah satu organisasi mahasiswa yang berada di tingkat jurusan dan termasuk organisasi intra kampus, serta bagian dari kegiatan ekstra kurikuler yang dapat dipilih dan diikuti oleh setiap mahasiswa. Hadirnya organisasi Himpunan Mahasiswa tersebut, berasal dari prinsip dari, oleh serta untuk mahasiswa.<\\/p>\\r\\n\\r\\n<p>Hima menjadi media bagi para anggotanya agar mampu mengembangkan pola pikir, kepribadian serta potensi yang dimiliki oleh setiap mahasiswa yang berkaitan dengan disiplin ilmu, agar setelah lulus dari perguruan tinggi maka mahasiswa siap untuk terjun langsung ke masyarakat.<\\/p>\\r\\n\\r\\n<p>Pada dasarnya, Himpunan Mahasiswa ada dua yaitu Himpunan Mahasiswa Jurusan atau HMJ serta Himpunan Mahasiswa Program Studi atau HMPS yang berada di tingkat fakultas serta berada di bawah koordinasi dari para Senat Mahasiswa atau BEM fakultas, sehingga seluruh kegiatan yang diadakan oleh HMJ atau HMPS haruslah memiliki afiliasi dengan program-program yang ada pada Senat Mahasiswa.<\\/p>\\r\\n\",\"submit\":\"update\"}', '2023-09-28 14:55:29'),
(1568, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi/update_action/3550a3eb0db672349d0953a8c8021a6b4dca33c85cd73f322d1525f32d88e130d331906ad097f6af00c26ea20cd68cd5f9a53c3f2f9426d47fc129ad39db235bCJH3YLiIHSP~gNAXc7hCmFMGPukuxuCdQ0FtpuPE0R0-', '{\"kategori\":\"HIMA\",\"nama\":\"HIMA Pend Matematika\",\"img\":\"\",\"file-dir-image\":\"\",\"image\":\"280923101229_hima.png\",\"deskripsi\":\"<p>Himpunan Mahasiswa atau Hima merupakan salah satu organisasi mahasiswa yang berada di tingkat jurusan dan termasuk organisasi intra kampus, serta bagian dari kegiatan ekstra kurikuler yang dapat dipilih dan diikuti oleh setiap mahasiswa. Hadirnya organisasi Himpunan Mahasiswa tersebut, berasal dari prinsip dari, oleh serta untuk mahasiswa.<\\/p>\\r\\n\\r\\n<p>Hima menjadi media bagi para anggotanya agar mampu mengembangkan pola pikir, kepribadian serta potensi yang dimiliki oleh setiap mahasiswa yang berkaitan dengan disiplin ilmu, agar setelah lulus dari perguruan tinggi maka mahasiswa siap untuk terjun langsung ke masyarakat.<\\/p>\\r\\n\\r\\n<p>Pada dasarnya, Himpunan Mahasiswa ada dua yaitu Himpunan Mahasiswa Jurusan atau HMJ serta Himpunan Mahasiswa Program Studi atau HMPS yang berada di tingkat fakultas serta berada di bawah koordinasi dari para Senat Mahasiswa atau BEM fakultas, sehingga seluruh kegiatan yang diadakan oleh HMJ atau HMPS haruslah memiliki afiliasi dengan program-program yang ada pada Senat Mahasiswa.<\\/p>\\r\\n\",\"submit\":\"update\"}', '2023-09-28 14:55:38'),
(1569, 1, '::1', 'title', '/BEM/hima', NULL, '2023-09-28 14:56:36'),
(1570, 1, '::1', 'title', '/BEM/hima', NULL, '2023-09-28 14:57:26'),
(1571, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi/update/3550a3eb0db672349d0953a8c8021a6b4dca33c85cd73f322d1525f32d88e130d331906ad097f6af00c26ea20cd68cd5f9a53c3f2f9426d47fc129ad39db235bCJH3YLiIHSP~gNAXc7hCmFMGPukuxuCdQ0FtpuPE0R0-', NULL, '2023-09-28 14:58:20'),
(1572, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi', NULL, '2023-09-28 14:58:22'),
(1573, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi/add', NULL, '2023-09-28 14:58:26'),
(1574, 1, '::1', 'title', '/BEM/cpanel/core/imageUpload', NULL, '2023-09-28 14:58:47'),
(1575, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi/add_action', '{\"kategori\":\"HIMA\",\"nama\":\"Helm shopee\",\"img\":\"ukm.jpg\",\"file-dir-image\":\"1-3fc78d400561ae3b6c4edbeb265b2805202083ca\",\"image\":\"ukm.jpg\",\"deskripsi\":\"<p>Testog<\\/p>\\r\\n\",\"submit\":\"add\"}', '2023-09-28 14:58:55'),
(1576, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi', NULL, '2023-09-28 14:58:55'),
(1577, 1, '::1', 'title', '/BEM/', NULL, '2023-09-28 15:22:16'),
(1578, 1, '::1', 'title', '/BEM/tentang', NULL, '2023-09-28 15:22:21'),
(1579, 1, '::1', 'title', '/BEM/visi-misi', NULL, '2023-09-28 15:22:22'),
(1580, 1, '::1', 'title', '/BEM/struktur-organisasi', NULL, '2023-09-28 15:22:24'),
(1581, 1, '::1', 'title', '/BEM/kementerian', NULL, '2023-09-28 15:22:27'),
(1582, 1, '::1', 'title', '/BEM/hima', NULL, '2023-09-28 15:22:30'),
(1583, 1, '::1', 'title', '/BEM/kementerian', NULL, '2023-09-28 15:22:33'),
(1584, 1, '::1', 'title', '/BEM/ukm', NULL, '2023-09-28 15:22:34'),
(1585, 1, '::1', 'title', '/BEM/frontend/ukm/detail/3', NULL, '2023-09-28 15:22:36'),
(1586, 1, '::1', 'title', '/BEM/cpanel/dashboard', NULL, '2023-09-28 15:22:44'),
(1587, 1, '::1', 'Organisasi', '/BEM/cpanel/organisasi', NULL, '2023-09-28 15:22:48'),
(1588, 1, '::1', 'General Setting', '/BEM/cpanel/general_setting', NULL, '2023-09-28 15:22:50'),
(1589, 1, '::1', 'Struktur Organisasi', '/BEM/cpanel/struktur_organisasi', NULL, '2023-09-28 15:22:52'),
(1590, 1, '::1', 'Visi Misi', '/BEM/cpanel/visi_misi', NULL, '2023-09-28 15:22:53'),
(1591, 1, '::1', 'Tentang', '/BEM/cpanel/tentang', NULL, '2023-09-28 15:22:54');

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
(7, '250923140301_download_(1).png', 'Di upload melalui module Struktur Organisasi', '2023-09-25 14:03:00', NULL),
(8, '250923212100_download_(2).png', 'Di upload melalui module Home', '2023-09-25 21:21:00', NULL),
(9, '250923213016_download_(2).png', 'Di upload melalui module General Setting', '2023-09-25 21:30:00', NULL),
(10, '270923211220_download_(2).png', 'Di upload melalui module Home', '2023-09-27 21:12:00', NULL),
(11, '270923221230_struktur.jpg', 'Di upload melalui module Struktur Organisasi', '2023-09-27 22:12:00', NULL),
(12, '280923101210_hima.png', 'Di upload melalui module Organisasi', '2023-09-28 10:12:00', NULL),
(13, '280923101229_hima.png', 'Di upload melalui module Organisasi', '2023-09-28 10:12:00', NULL),
(14, '280923101405_ukm.jpg', 'Di upload melalui module Organisasi', '2023-09-28 10:14:00', NULL),
(15, '280923101415_ukm.jpg', 'Di upload melalui module Organisasi', '2023-09-28 10:14:00', NULL),
(16, '280923101426_ukm.jpg', 'Di upload melalui module Organisasi', '2023-09-28 10:14:00', NULL),
(17, '280923145855_ukm.jpg', 'Di upload melalui module Organisasi', '2023-09-28 14:58:00', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `general_setting`
--

CREATE TABLE `general_setting` (
  `id` int(11) NOT NULL,
  `nama_website` varchar(255) NOT NULL,
  `logo` text NOT NULL,
  `alamat` text NOT NULL,
  `telepon` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `general_setting`
--

INSERT INTO `general_setting` (`id`, `nama_website`, `logo`, `alamat`, `telepon`, `email`) VALUES
(1, 'BEM UNIVAL', '250923213016_download_(2).png', 'JL Baliwerti 119 - 121', '085667788998877', 'bem.unival@gmail.com');

-- --------------------------------------------------------

--
-- Struktur dari tabel `home`
--

CREATE TABLE `home` (
  `id` int(11) NOT NULL,
  `judul` text NOT NULL,
  `subjudul` text NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `home`
--

INSERT INTO `home` (`id`, `judul`, `subjudul`, `image`) VALUES
(1, 'BADAN EKSEKUTIF MAHASISWA UNIVERSITAS AL-KHAIRIYAH', 'Kementerian Riset Teknologi dan Informasi', '270923211220_download_(2).png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kementerian`
--

CREATE TABLE `kementerian` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kementerian`
--

INSERT INTO `kementerian` (`id`, `nama`, `deskripsi`) VALUES
(1, 'Pengembangan Sumber Daya Mahasiswa.', 'Menciptakan sistem kaderisasi yang baik, mulai dari tahap perekruitan, pengembangan, penempatan, hinggaevaluasi akhir guna mencetak sumber daya mahasiswayang matang dan unggul.'),
(2, 'Riset dan Keilmuan', 'Menjadi katalisator riset dan pengembangan atas berbagai isu populer dan strategis, serta bertanggungjawab dalam mengembangkan skill dan semangat riset mahasiswa UNAIR di kancah nasional maupun internasional.'),
(3, 'Sinergitas Mahasiswa.', '<p>Menjalin hubungan yang sinergis dan harmonis dengan seluruh organisasi, badan, lembaga, dan komunitas dalam lingkup UNAIR guna menjamin keberadaan dan keberpihakan di kalangan mahasiswa UNAIR.</p>');

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
(64, 57, 'organisasi', 'organisasi', 'controller', 'organisasi', '', '', '1', 17, '2023-09-25 19:51:07', NULL),
(65, 57, 'kementerian', 'kementerian', 'controller', 'kementerian', '', '', '1', 16, '2023-09-25 20:16:58', NULL),
(66, 57, 'general setting', 'general-setting', 'controller', 'general_setting', '', '', '1', 18, '2023-09-25 20:57:24', NULL),
(68, 57, 'sosial media', 'sosial-media', 'controller', 'sosial_media', '', '', '1', 19, '2023-09-25 21:12:34', '2023-09-25 21:18:05');

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
(8, 'Tentang', 'Tentang', 'tentang', '2023-09-25 19:47:00'),
(11, 'Kementerian', 'Kementerian', 'kementerian', '2023-09-25 20:17:00'),
(13, 'Home', 'Home', 'home', '2023-09-25 20:50:00'),
(16, 'General_setting', 'General Setting', 'general_setting', '2023-09-25 21:12:00'),
(19, 'Sosial_media', 'Sosial Media', 'sosial_media', '2023-09-28 09:15:00'),
(21, 'Organisasi', 'Organisasi', 'organisasi', '2023-09-28 12:43:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `organisasi`
--

CREATE TABLE `organisasi` (
  `id` int(11) NOT NULL,
  `kategori` enum('HIMA','UKM') NOT NULL,
  `nama` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `image` text NOT NULL,
  `seo_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `organisasi`
--

INSERT INTO `organisasi` (`id`, `kategori`, `nama`, `deskripsi`, `image`, `seo_name`) VALUES
(1, 'HIMA', 'HIMA Pend. Matematika', '<p>Himpunan Mahasiswa atau Hima merupakan salah satu organisasi mahasiswa yang berada di tingkat jurusan dan termasuk organisasi intra kampus, serta bagian dari kegiatan ekstra kurikuler yang dapat dipilih dan diikuti oleh setiap mahasiswa. Hadirnya organisasi Himpunan Mahasiswa tersebut, berasal dari prinsip dari, oleh serta untuk mahasiswa.</p>\r\n\r\n<p>Hima menjadi media bagi para anggotanya agar mampu mengembangkan pola pikir, kepribadian serta potensi yang dimiliki oleh setiap mahasiswa yang berkaitan dengan disiplin ilmu, agar setelah lulus dari perguruan tinggi maka mahasiswa siap untuk terjun langsung ke masyarakat.</p>\r\n\r\n<p>Pada dasarnya, Himpunan Mahasiswa ada dua yaitu Himpunan Mahasiswa Jurusan atau HMJ serta Himpunan Mahasiswa Program Studi atau HMPS yang berada di tingkat fakultas serta berada di bawah koordinasi dari para Senat Mahasiswa atau BEM fakultas, sehingga seluruh kegiatan yang diadakan oleh HMJ atau HMPS haruslah memiliki afiliasi dengan program-program yang ada pada Senat Mahasiswa.</p>', '280923101229_hima.png', ''),
(2, 'UKM', 'Resimen Mahasiswa', '<p>UKM Resimen Mahasiswa merupakan wadah bagi mahasiswa untuk menyalurkan potensinya. Mahasiswa dilatih untuk disiplin, berjiwa dan berfisik kuat, berpengetahuan luas dan diberikan pelatihan ilmu militer seperti bela diri militer, survival, penggunaan senjata, dll.</p>', '280923101426_ukm.jpg', ''),
(3, 'UKM', 'UKM Penalaran', '<p>Unit Kegiatan Mahasiswa (UKM) Penalaran merupakan organisasi yang mewadahi minat bakat dan aktualisasi mahasiswa dalam bidang karya tulis, penelitian, dan jurnalistik. Sekretariat UKM Penalaran Universitas Airlangga terletak di ruang 302 lantai 3 gedung Student Center Kampus C Universitas Airlangga atau yang biasa disebut oleh pengurus UKM Penalaran sebagai Astana Widya (AW) yang berarti istana pengetahuan.</p>', '280923101415_ukm.jpg', ''),
(4, 'UKM', 'UKM Pramuka', '<p>UKM Pramuka merupakan wadah untuk menunjang pengembangan potensi dan daya kreatifitas mahasiswa dalam mengamalkan Tri Dharma Perguruan Tinggi. UKM ini menggunakan metode belajar Learning by Doing, yaitu belajar dengan melakukan. Seorang pramuka mengalami proses pembelajaran yang bertahap, kesulitan dan tanggung jawab yang diembannya disesuaikan dengan tingkatan dalam usia mereka.</p>', '280923101405_ukm.jpg', 'n-a'),
(5, 'HIMA', 'HIMA Pendidikan Biologi', '<p>Himpunan Mahasiswa atau Hima merupakan salah satu organisasi mahasiswa yang berada di tingkat jurusan dan termasuk organisasi intra kampus, serta bagian dari kegiatan ekstra kurikuler yang dapat dipilih dan diikuti oleh setiap mahasiswa. Hadirnya organisasi Himpunan Mahasiswa tersebut, berasal dari prinsip dari, oleh serta untuk mahasiswa.</p>\r\n\r\n<p>Hima menjadi media bagi para anggotanya agar mampu mengembangkan pola pikir, kepribadian serta potensi yang dimiliki oleh setiap mahasiswa yang berkaitan dengan disiplin ilmu, agar setelah lulus dari perguruan tinggi maka mahasiswa siap untuk terjun langsung ke masyarakat.</p>\r\n\r\n<p>Pada dasarnya, Himpunan Mahasiswa ada dua yaitu Himpunan Mahasiswa Jurusan atau HMJ serta Himpunan Mahasiswa Program Studi atau HMPS yang berada di tingkat fakultas serta berada di bawah koordinasi dari para Senat Mahasiswa atau BEM fakultas, sehingga seluruh kegiatan yang diadakan oleh HMJ atau HMPS haruslah memiliki afiliasi dengan program-program yang ada pada Senat Mahasiswa.</p>', '280923101210_hima.png', 'n-a'),
(6, 'HIMA', 'Helm shopee', '<p>Testog</p>', '280923145855_ukm.jpg', 'n-a');

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
-- Struktur dari tabel `sosial_media`
--

CREATE TABLE `sosial_media` (
  `id` int(11) NOT NULL,
  `sosmed` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `icon` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `sosial_media`
--

INSERT INTO `sosial_media` (`id`, `sosmed`, `link`, `icon`) VALUES
(2, 'Instagram', 'https://instagram.com/', 'bi bi-instagram'),
(3, 'Twitter', 'https://twitter.com/home', 'bi bi-twitter-x'),
(4, 'YouTube', 'https://www.youtube.com/', 'bi bi-youtube');

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
(1, '270923221230_struktur.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tentang`
--

CREATE TABLE `tentang` (
  `id` int(11) NOT NULL,
  `judul` text NOT NULL,
  `isi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tentang`
--

INSERT INTO `tentang` (`id`, `judul`, `isi`) VALUES
(1, 'Tentang Kabinet Reformasi', '<p>Kabinet Reformasi lahir dari rahim semangat perjuangan mahasiswa yang terbentuk dari gerakan - gerakan perubahan. Kata reformasi yang berarti merombak, mendobrak dan menyusun Kembali semangat dan niat perubahan untuk menjunjung tinggi nilai organisasi yang berintegritas, inklusif, adaptif dan sinergis di dalamnya.</p>\r\n\r\n<p> </p>\r\n\r\n<p>Lambang tangan mengepal yang mengambarkan semangat perubahan untuk menciptakan inovasi – inovasi pembaharuan di dalam setiap Gerakan yang diciptakan. Warna yang menggambarkan isi filosofis dalam kabinet yang menggambarkan keberanian, kekeluargaan, inklusif dan juga suci yang menjadi sifat dari setiap komponen yang berada di dalam cabinet reformasi untuk membawa semangat pembaharuan.</p>');

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
(1, 'BEM Universitas Airlangga sebagai mercusuar gerakan yang berintegritas, inklusif, sinergis, dan adaptif dengan berlandaskan tri dharma perguruan tinggi', '<ol>\r\n <li><strong>ORGANIZATIONAL DEVELOPMENT</strong><br>\r\n Membangun organisasi yang sinergis dan berintegritas dengan berpedoman pada aspek kekeluargaan dan professionalitas.<br>\r\n  </li>\r\n <li><strong>PRO - ACTIVE</strong><br>\r\n Berperan aktif dalam menghadapi berbagai macam problematika lokal hingga internasional.<br>\r\n  </li>\r\n <li><strong>TANGIBLE EMPOWERMENT</strong><br>\r\n Meningkatkan iklim prestatif melalui pemberdayaan potensi dan minat bakat mahasiswa Universitas Airlangga.<br>\r\n  </li>\r\n <li><strong>INTERNATIONAL AND DIGITAL ORIENTATION</strong><br>\r\n Internasionalisasi dan digitalisasi BEM Universitas Airlangga sebagai jawaban atas tantangan zaman dan dinamika perubahan.<br>\r\n  </li>\r\n <li><strong>MAXIMUM COLLABORATION</strong><br>\r\n Meningkatkan sinergitas dengan civitas akademika Universitas Airlangga dan berbagai pihak lain.</li>\r\n</ol>');

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
-- Indeks untuk tabel `general_setting`
--
ALTER TABLE `general_setting`
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
-- Indeks untuk tabel `sosial_media`
--
ALTER TABLE `sosial_media`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=192;

--
-- AUTO_INCREMENT untuk tabel `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `ci_user_log`
--
ALTER TABLE `ci_user_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1592;

--
-- AUTO_INCREMENT untuk tabel `filemanager`
--
ALTER TABLE `filemanager`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `general_setting`
--
ALTER TABLE `general_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `home`
--
ALTER TABLE `home`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `kementerian`
--
ALTER TABLE `kementerian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `main_menu`
--
ALTER TABLE `main_menu`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT untuk tabel `modules_crud_generator`
--
ALTER TABLE `modules_crud_generator`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `organisasi`
--
ALTER TABLE `organisasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `sosial_media`
--
ALTER TABLE `sosial_media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `struktur_organisasi`
--
ALTER TABLE `struktur_organisasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tentang`
--
ALTER TABLE `tentang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `visi_misi`
--
ALTER TABLE `visi_misi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
