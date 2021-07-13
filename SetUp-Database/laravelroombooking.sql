-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 13, 2021 lúc 04:37 AM
-- Phiên bản máy phục vụ: 10.4.19-MariaDB
-- Phiên bản PHP: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `laravelroombooking`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `events`
--

CREATE TABLE `events` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `room_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `events`
--

INSERT INTO `events` (`id`, `title`, `start_time`, `end_time`, `description`, `created_at`, `updated_at`, `deleted_at`, `room_id`, `user_id`) VALUES
(1, 'Building', '2021-07-12 21:30:00', '2021-07-13 21:30:00', 'dsd', '2021-07-12 07:28:05', '2021-07-12 07:36:00', '2021-07-12 07:36:00', 27, 2),
(2, 'fdsfsd', '2021-07-12 21:30:00', '2021-07-13 21:30:00', 'dsfsdfs', '2021-07-12 07:34:05', '2021-07-12 07:35:57', '2021-07-12 07:35:57', 7, 2),
(3, 'Presentation', '2021-07-13 09:30:00', '2021-07-13 10:30:00', 'Presentation workshops', '2021-07-12 07:39:02', '2021-07-12 19:05:54', NULL, 3, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(3, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(4, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(5, '2016_06_01_000004_create_oauth_clients_table', 1),
(6, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(7, '2020_03_30_000001_create_permissions_table', 1),
(8, '2020_03_30_000002_create_roles_table', 1),
(9, '2020_03_30_000003_create_users_table', 1),
(10, '2020_03_30_000004_create_rooms_table', 1),
(11, '2020_03_30_000005_create_events_table', 1),
(12, '2020_03_30_000006_create_permission_role_pivot_table', 1),
(13, '2020_03_30_000007_create_role_user_pivot_table', 1),
(14, '2020_03_30_000008_add_relationship_fields_to_events_table', 1),
(15, '2020_04_06_000001_create_customer_columns', 1),
(16, '2020_04_06_000002_create_subscriptions_table', 1),
(17, '2020_04_06_000003_create_transactions_table', 1),
(18, '2020_04_06_205934_add_hourly_rate_field_to_rooms_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('minh1999gay@gmail.com', '$2y$10$77SQ07nR9AtbOaSN7S2Vfu7lPI0DX9pTbyUJugd/XVDaskC0Pwyzm', '2021-07-12 18:30:09');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `permissions`
--

INSERT INTO `permissions` (`id`, `title`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'user_management_access', NULL, NULL, NULL),
(2, 'permission_create', NULL, NULL, NULL),
(3, 'permission_edit', NULL, NULL, NULL),
(4, 'permission_show', NULL, NULL, NULL),
(5, 'permission_delete', NULL, NULL, NULL),
(6, 'permission_access', NULL, NULL, NULL),
(7, 'role_create', NULL, NULL, NULL),
(8, 'role_edit', NULL, NULL, NULL),
(9, 'role_show', NULL, NULL, NULL),
(10, 'role_delete', NULL, NULL, NULL),
(11, 'role_access', NULL, NULL, NULL),
(12, 'user_create', NULL, NULL, NULL),
(13, 'user_edit', NULL, NULL, NULL),
(14, 'user_show', NULL, NULL, NULL),
(15, 'user_delete', NULL, NULL, NULL),
(16, 'user_access', NULL, NULL, NULL),
(17, 'room_create', NULL, NULL, NULL),
(18, 'room_edit', NULL, NULL, NULL),
(19, 'room_show', NULL, NULL, NULL),
(20, 'room_delete', NULL, NULL, NULL),
(21, 'room_access', NULL, NULL, NULL),
(22, 'event_create', NULL, NULL, NULL),
(23, 'event_edit', NULL, NULL, NULL),
(24, 'event_show', NULL, NULL, NULL),
(25, 'event_delete', NULL, NULL, NULL),
(26, 'event_access', NULL, NULL, NULL),
(27, 'transaction_access', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permission_role`
--

CREATE TABLE `permission_role` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `permission_role`
--

INSERT INTO `permission_role` (`role_id`, `permission_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(1, 15),
(1, 16),
(1, 17),
(1, 18),
(1, 19),
(1, 20),
(1, 21),
(1, 22),
(1, 23),
(1, 24),
(1, 25),
(1, 26),
(1, 27),
(2, 22),
(2, 24),
(2, 25),
(2, 23),
(2, 26);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `title`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Admin', NULL, NULL, NULL),
(2, 'User', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role_user`
--

CREATE TABLE `role_user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`) VALUES
(1, 1),
(2, 2),
(3, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rooms`
--

CREATE TABLE `rooms` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `capacity` int(11) DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `hourly_rate` double(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `rooms`
--

INSERT INTO `rooms` (`id`, `name`, `capacity`, `description`, `created_at`, `updated_at`, `deleted_at`, `hourly_rate`) VALUES
(1, 'Room 101', 37, 'Dolores et et architecto nulla id assumenda eius. Eveniet eos esse odio voluptates sit eius. Nihil quae debitis et ipsam quam quibusdam. Sit eius praesentium ea explicabo.', NULL, NULL, NULL, NULL),
(2, 'Room 102', 75, 'Aut nisi vel et. Consequatur reprehenderit quae minima velit repellendus consequatur. Ad alias laudantium occaecati unde. Nesciunt aut accusamus nihil quia unde repellendus molestias.', NULL, NULL, NULL, NULL),
(3, 'Room 103', 16, 'Minima eveniet qui quia numquam excepturi pariatur. Debitis quia ipsum ipsum nulla magni culpa minus ut. Velit omnis accusamus veniam molestias quia et iure.', NULL, NULL, NULL, NULL),
(4, 'Room 104', 33, 'Libero molestiae aliquid fugit dolorem. Perspiciatis quibusdam eum omnis aspernatur et. Vel nihil rem eaque quod aut.', NULL, NULL, NULL, NULL),
(5, 'Room 105', 53, 'Consequatur perspiciatis dolores ab. Praesentium omnis eius voluptas et. Fuga voluptas ducimus voluptatem natus vero sapiente voluptatem. Nobis et maxime harum facilis non harum.', NULL, NULL, NULL, NULL),
(6, 'Room 106', 33, 'Et tempora qui ut praesentium corporis sunt voluptas. Modi illo a odit molestias quia adipisci quod. Ducimus facere totam sint non nemo delectus repellendus.', NULL, NULL, NULL, NULL),
(7, 'Room 107', 92, 'Consequatur et optio sapiente aspernatur adipisci. Porro itaque laboriosam eligendi inventore culpa fugiat ut. Accusamus veritatis delectus totam quas dolor quisquam.', NULL, NULL, NULL, NULL),
(8, 'Room 108', 68, 'Asperiores aut laboriosam quia qui iusto harum dolores. Et non atque exercitationem accusantium quidem amet doloremque et. Sit delectus exercitationem ad libero id. Aspernatur occaecati consequatur eum qui.', NULL, NULL, NULL, NULL),
(9, 'Room 109', 12, 'Totam at ab reprehenderit voluptatem similique molestiae quae. Reprehenderit ipsum rerum dolores quibusdam non ut aut. Aliquid sunt aut occaecati dolores rerum quos quia.', NULL, NULL, NULL, NULL),
(10, 'Room 110', 44, 'Dignissimos dolores consequuntur itaque quasi neque ratione voluptas qui. Necessitatibus delectus reiciendis architecto est. Omnis adipisci eius quo.', NULL, NULL, NULL, NULL),
(11, 'Room 111', 38, 'Illo molestiae sed repudiandae at. Rerum aut sed soluta. Optio incidunt deleniti quia qui cumque pariatur minus.', NULL, NULL, NULL, NULL),
(12, 'Room 112', 42, 'Voluptatem omnis ut sequi cupiditate sequi minus. Sit molestiae quo quia neque sed quas amet. Veniam tenetur qui culpa est veritatis deleniti reiciendis. Rerum doloremque corrupti amet vitae et distinctio.', NULL, NULL, NULL, NULL),
(13, 'Room 113', 81, 'Architecto aut quasi repudiandae. Delectus dolor maxime est aut veniam in incidunt. Est tempore at adipisci omnis eligendi ex. Laboriosam repellendus harum rerum et a officia et. Ea ut vel alias voluptates tenetur iure rerum.', NULL, NULL, NULL, NULL),
(14, 'Room 114', 42, 'Repudiandae quis consequatur distinctio ut sed. Non aliquid aspernatur vel iste aliquid tenetur ullam. Dolor provident veritatis iusto a voluptas sed fugit qui.', NULL, NULL, NULL, NULL),
(15, 'Room 115', 94, 'Velit ut saepe esse sit ipsa qui ratione debitis. Quo fugit et inventore nisi quia reprehenderit. Mollitia et at suscipit nemo tempora at nulla sint.', NULL, NULL, NULL, NULL),
(16, 'Room 116', 63, 'Laboriosam pariatur molestiae nesciunt dignissimos error. Animi suscipit sed natus unde. Repellendus deserunt est fugit enim amet voluptatem fugiat.', NULL, NULL, NULL, NULL),
(17, 'Room 117', 76, 'Laborum ducimus vitae facere maxime asperiores molestias. Et dolorum iste aut quod vel.', NULL, NULL, NULL, NULL),
(18, 'Room 118', 37, 'Ut alias quos ducimus consequatur deleniti est perspiciatis id. Adipisci et id eaque. Fuga aut rerum et sunt quod dolore distinctio. Debitis quia accusamus ullam vel.', NULL, NULL, NULL, NULL),
(19, 'Room 119', 45, 'Provident quo voluptatibus et et voluptatem quis qui nemo. Aut nihil iste velit praesentium quo occaecati quia. Et quis ut nobis quaerat omnis. Accusantium ex ut vero perferendis dignissimos numquam.', NULL, NULL, NULL, NULL),
(20, 'Room 120', 94, 'Quia non nisi quae ad ut. Quisquam eveniet voluptas excepturi et voluptatibus qui vero.', NULL, NULL, NULL, NULL),
(21, 'Room 121', 54, 'Maxime recusandae aliquam nostrum laborum. Reiciendis maiores commodi doloremque quasi beatae. Distinctio earum sapiente ut neque. Voluptas id in sed impedit.', NULL, NULL, NULL, NULL),
(22, 'Room 122', 38, 'Suscipit ipsa alias molestiae vitae iste. Ipsam id possimus eum aut. Qui quis quisquam debitis quaerat.', NULL, NULL, NULL, NULL),
(23, 'Room 123', 100, 'Rerum doloremque velit iure aut voluptas illum dolorem. Doloremque accusamus cupiditate sint repellendus porro. Ullam est inventore suscipit atque eum consectetur vel.', NULL, NULL, NULL, NULL),
(24, 'Room 124', 55, 'Similique ut aut ipsum fugit illo ut minus. Qui tempora alias distinctio est eius adipisci. Et et voluptas vero sit dolorum aut est. Voluptatem aspernatur explicabo accusamus illo optio omnis eveniet.', NULL, NULL, NULL, NULL),
(25, 'Room 125', 56, 'Velit ad est ut itaque itaque suscipit. Nisi dolor quas enim voluptas. Nesciunt iure ex vel delectus distinctio totam. Repellendus non nobis ut aliquam voluptatem nostrum. Praesentium necessitatibus mollitia sit quia sed quidem exercitationem.', NULL, NULL, NULL, NULL),
(26, 'Room 126', 28, 'Vero et accusamus earum tenetur omnis. Qui sit unde error inventore est minus consequuntur. Facilis porro earum et labore possimus facilis.', NULL, NULL, NULL, NULL),
(27, 'Room 127', 62, 'Esse sequi beatae ullam provident aspernatur id doloribus. Ut aut architecto quisquam libero qui et ullam. Doloribus voluptate eveniet error aut.', NULL, NULL, NULL, NULL),
(28, 'Room 128', 60, 'Sint nostrum odio quia magnam hic. Ut rerum inventore ad id. Quo eum ex non fugit praesentium.', NULL, NULL, NULL, NULL),
(29, 'Room 129', 13, 'Commodi facere explicabo est sapiente. Totam ut in itaque quia. Consequatur et sint vel rerum.', NULL, NULL, NULL, NULL),
(30, 'Room 130', 52, 'Suscipit vitae et beatae iusto a. Sed cumque et sit et vel.', NULL, NULL, NULL, NULL),
(31, 'Room 131', 55, 'Autem debitis aliquam molestias eum quas. Consectetur omnis aliquam neque omnis. Repudiandae tempore voluptatem neque veritatis omnis numquam.', NULL, NULL, NULL, NULL),
(32, 'Room 132', 48, 'Laboriosam vero praesentium itaque natus velit vel omnis dignissimos. Modi assumenda non quia sequi autem libero. Molestiae saepe ut qui debitis.', NULL, NULL, NULL, NULL),
(33, 'Room 133', 80, 'Non sint in laudantium et. Saepe beatae officiis fugiat quos. Ad voluptatem mollitia eum ipsam qui quos.', NULL, NULL, NULL, NULL),
(34, 'Room 134', 32, 'Totam iure impedit et optio autem. Cupiditate voluptatibus illo repudiandae rerum rerum. Amet vitae aut praesentium sequi quia at. Expedita est in numquam in quam eum. Quo ullam odit est corporis voluptas similique voluptatum enim.', NULL, NULL, NULL, NULL),
(35, 'Room 135', 14, 'Aspernatur et labore aut id ea et et soluta. Facilis voluptas praesentium consequatur temporibus itaque quaerat. Eius corporis enim dolor laborum autem. Id sapiente tempore repudiandae est fugit.', NULL, NULL, NULL, NULL),
(36, 'Room 136', 87, 'Consequatur ullam et labore et sed laboriosam. Sequi qui non reprehenderit a rerum et. Ut explicabo blanditiis esse non. Harum repellendus pariatur nemo facilis architecto cumque iste.', NULL, NULL, NULL, NULL),
(37, 'Room 137', 100, 'Aut aut aut harum. Possimus facilis aut ut voluptatem voluptas. Neque beatae illo dolor. Eaque officia minus explicabo velit.', NULL, NULL, NULL, NULL),
(38, 'Room 138', 68, 'Ut delectus id quo reprehenderit voluptatem perspiciatis. Expedita necessitatibus distinctio totam eos. Sint dolor eligendi nostrum eos cumque vel. Necessitatibus corrupti aut deserunt velit fugiat id nemo.', NULL, NULL, NULL, NULL),
(39, 'Room 139', 49, 'In sed voluptates et architecto quaerat voluptas. Non voluptatum voluptatem voluptas aut. Libero libero aspernatur vero deserunt aut. Sit perspiciatis laborum ex magnam repudiandae suscipit consequuntur.', NULL, NULL, NULL, NULL),
(40, 'Room 140', 36, 'Error consequuntur nesciunt voluptatem sunt. Eum dicta quo sed voluptatum non minima dolorem. Veniam excepturi facilis cum suscipit recusandae aperiam rerum.', NULL, NULL, NULL, NULL),
(41, 'Room 141', 92, 'Ut sit natus nostrum dolorem sit modi iste. Libero voluptatem delectus esse.', NULL, NULL, NULL, NULL),
(42, 'Room 142', 39, 'Deserunt dolore vel voluptas rerum explicabo officia explicabo ad. Velit dicta odio voluptas possimus qui. Aut sit non debitis commodi porro nihil voluptate est. Facere nobis et nulla veniam ut minima dolorem.', NULL, NULL, NULL, NULL),
(43, 'Room 143', 28, 'Nostrum voluptatem eos sapiente. Eaque et quia cum veniam qui delectus. Beatae alias modi consequatur autem atque officiis. Enim non et similique ipsum.', NULL, NULL, NULL, NULL),
(44, 'Room 144', 72, 'Nemo minus et exercitationem aperiam. Vero voluptatem et nulla ratione eaque. Enim ut maiores repudiandae nulla error voluptas.', NULL, NULL, NULL, NULL),
(45, 'Room 145', 86, 'Consequatur excepturi tempore consequatur incidunt ut consequatur. Ut dicta id vitae rerum consequatur iure ipsam. Doloribus aut cum accusamus magni. Omnis itaque accusamus ullam occaecati sunt.', NULL, NULL, NULL, NULL),
(46, 'Room 146', 20, 'Ea libero delectus ut pariatur eveniet. Voluptatum consequatur ut totam non ad laboriosam. Unde tenetur placeat aspernatur corrupti non.', NULL, NULL, NULL, NULL),
(47, 'Room 147', 78, 'Nihil libero velit ut soluta dolor non libero. A aut non ipsum corporis tempore autem. Perspiciatis mollitia qui quos eveniet est impedit in quia.', NULL, NULL, NULL, NULL),
(48, 'Room 148', 53, 'Quidem laboriosam beatae voluptatem sit labore nesciunt. Rerum officiis explicabo dolore doloremque quam qui autem. Omnis commodi aut voluptatem excepturi ratione. Aut sit eaque officia cum.', NULL, NULL, NULL, NULL),
(49, 'Room 149', 77, 'Inventore voluptas hic eum mollitia. Fuga laudantium eos rem. Incidunt ut molestiae vero et.', NULL, NULL, NULL, NULL),
(50, 'Room 150', 80, 'Sequi vel est officiis illum doloribus. Fuga molestiae vero delectus et similique non corporis. Sed doloremque et ut possimus repellat expedita soluta.', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_plan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `ends_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `room_id` int(10) UNSIGNED DEFAULT NULL,
  `paid_amount` int(11) NOT NULL,
  `booking_time` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` datetime DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `credits` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `stripe_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_brand` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_last_four` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `credits`, `created_at`, `updated_at`, `deleted_at`, `stripe_id`, `card_brand`, `card_last_four`, `trial_ends_at`) VALUES
(1, 'Admin', 'mrbright4078@gmail.com', NULL, '$2y$10$CB25SyoBYxlQaTMdluFfieApXrT1wfUoB/02ivR2fm4muaUE2HqQ.', 'B35ch9orWguBGcGF3Q1k2L3Anlyyzdntv04OOkq5cjGs9gXcRAlP3fW1Mlj7', 0, NULL, '2021-07-12 19:26:58', NULL, NULL, NULL, NULL, NULL),
(2, 'User', 'user@user.com', NULL, '$2y$10$iCL0f9pemIV6nyQ1180CvOYWeqKIbuGTHMKsY.Ni3B9wUfpDcyHEG', NULL, 0, NULL, '2021-07-12 18:25:40', '2021-07-12 18:25:40', NULL, NULL, NULL, NULL),
(3, 'Trainer', 'minh1999gay@gmail.com', NULL, '$2y$10$.D9pB41OLUeTX/BQKW8ALe1Vclxyp5kkKA4zL6N934AUOpdzWb5Pq', NULL, 0, '2021-07-12 07:45:37', '2021-07-12 07:45:37', NULL, NULL, NULL, NULL, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `room_fk_1226838` (`room_id`),
  ADD KEY `user_fk_1226839` (`user_id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `permission_role`
--
ALTER TABLE `permission_role`
  ADD KEY `role_id_fk_1226795` (`role_id`),
  ADD KEY `permission_id_fk_1226795` (`permission_id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `role_user`
--
ALTER TABLE `role_user`
  ADD KEY `user_id_fk_1226804` (`user_id`),
  ADD KEY `role_id_fk_1226804` (`role_id`);

--
-- Chỉ mục cho bảng `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subscriptions_user_id_stripe_status_index` (`user_id`,`stripe_status`);

--
-- Chỉ mục cho bảng `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_user_id_foreign` (`user_id`),
  ADD KEY `transactions_room_id_foreign` (`room_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_stripe_id_index` (`stripe_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `events`
--
ALTER TABLE `events`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT cho bảng `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `events`
--
ALTER TABLE `events`
  ADD CONSTRAINT `room_fk_1226838` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`),
  ADD CONSTRAINT `user_fk_1226839` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_id_fk_1226795` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_id_fk_1226795` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_id_fk_1226804` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_id_fk_1226804` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_room_id_foreign` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`),
  ADD CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
