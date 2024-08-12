-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 12, 2024 at 04:07 PM
-- Server version: 8.0.39-0ubuntu0.22.04.1
-- PHP Version: 8.1.2-1ubuntu2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `BadmintonBooker`
--

-- --------------------------------------------------------

--
-- Table structure for table `courts`
--

CREATE TABLE `courts` (
  `courtID` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nameShort` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `startTime` time NOT NULL,
  `endTime` time NOT NULL,
  `maxLimits` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courts`
--

INSERT INTO `courts` (`courtID`, `name`, `nameShort`, `price`, `location`, `image`, `startTime`, `endTime`, `maxLimits`, `created_at`, `updated_at`) VALUES
(1, 'Green-Thiel', 'ied', '363.52', '364 Olson Fords\nLeuschkeborough, CA 58562-6055', 'https://via.placeholder.com/640x480.png/007788?text=sports+nisi', '06:00:00', '11:00:00', 5, '2024-08-12 04:41:25', '2024-08-12 04:41:25'),
(2, 'Jenkins, Lynch and Heaney', 'fzv', '268.4', '83164 Fannie Bypass Apt. 210\nSouth Patsymouth, AZ 70189-9657', 'https://via.placeholder.com/640x480.png/0044ff?text=sports+laudantium', '07:00:00', '09:00:00', 46, '2024-08-12 04:41:25', '2024-08-12 04:41:25'),
(3, 'Reichel Ltd', 'pai', '257.87', '10268 Bridie Isle Suite 279\nMayerburgh, ND 65434-0951', 'https://via.placeholder.com/640x480.png/0044dd?text=sports+laudantium', '07:00:00', '19:00:00', 55, '2024-08-12 04:41:25', '2024-08-12 04:41:25'),
(4, 'Waelchi PLC', 'bfk', '149.53', '7819 Dorian Mountains Suite 220\nWest Erlingside, RI 28370', 'https://via.placeholder.com/640x480.png/005500?text=sports+qui', '07:00:00', '07:00:00', 45, '2024-08-12 04:41:25', '2024-08-12 04:41:25'),
(5, 'Willms, Abernathy and Williamson', 'ycr', '350.37', '884 Terry Brook Suite 359\nLake Kevin, IN 59584', 'https://via.placeholder.com/640x480.png/007766?text=sports+incidunt', '08:00:00', '14:00:00', 56, '2024-08-12 04:41:25', '2024-08-12 04:41:25'),
(6, 'Lakin LLC', 'tos', '393', '96040 Cayla Lake Suite 681\nRennermouth, PA 71816', 'https://via.placeholder.com/640x480.png/00aa66?text=sports+nam', '06:00:00', '01:00:00', 60, '2024-08-12 04:41:25', '2024-08-12 04:41:25'),
(7, 'Schaden-Wolff', 'dbk', '428.12', '145 Kacey Flat Apt. 784\nWest Amparobury, TX 69492-4025', 'https://via.placeholder.com/640x480.png/008844?text=sports+earum', '07:00:00', '05:00:00', 56, '2024-08-12 04:41:25', '2024-08-12 04:41:25'),
(8, 'Brekke, Lubowitz and Ortiz', 'zcj', '434.34', '518 Kshlerin Course\nNew Kelton, WY 55016-1154', 'https://via.placeholder.com/640x480.png/00aa00?text=sports+eveniet', '08:00:00', '01:00:00', 53, '2024-08-12 04:41:25', '2024-08-12 04:41:25'),
(9, 'Johnston Group', 'sxl', '96.48', '94242 Florencio Manor\nNew Scotty, NV 98411', 'https://via.placeholder.com/640x480.png/000033?text=sports+sed', '06:00:00', '08:00:00', 45, '2024-08-12 04:41:25', '2024-08-12 04:41:25'),
(10, 'Rohan-Schroeder', 'aaj', '216.36', '834 Johnston Heights Apt. 768\nHahnberg, CO 71958', 'https://via.placeholder.com/640x480.png/00dd88?text=sports+ad', '08:00:00', '11:00:00', 43, '2024-08-12 04:41:26', '2024-08-12 04:41:26'),
(11, 'Kihn Group', 'yyq', '420.68', '97525 Shayna Mall\nWest Lillianaborough, WY 44497-0473', 'https://via.placeholder.com/640x480.png/003311?text=sports+adipisci', '08:00:00', '09:00:00', 56, '2024-08-12 04:41:26', '2024-08-12 04:41:26'),
(12, 'O\'Hara, Zieme and Lueilwitz', 'kgm', '409.78', '19757 Anais Overpass\nBergnaummouth, VT 02249-0000', 'https://via.placeholder.com/640x480.png/00bb22?text=sports+voluptas', '07:00:00', '22:00:00', 53, '2024-08-12 04:41:26', '2024-08-12 04:41:26'),
(13, 'Mueller-Pagac', 'gca', '262.41', '326 Johnston Valleys Suite 067\nRusselbury, IL 43207', 'https://via.placeholder.com/640x480.png/003344?text=sports+aperiam', '08:00:00', '19:00:00', 44, '2024-08-12 04:41:26', '2024-08-12 04:41:26'),
(14, 'Runolfsson Ltd', 'eli', '414', '4311 Leonard Alley Apt. 976\nShanahanside, OR 50981-1271', 'https://via.placeholder.com/640x480.png/00cc88?text=sports+blanditiis', '07:00:00', '16:00:00', 48, '2024-08-12 04:41:26', '2024-08-12 04:41:26'),
(15, 'Treutel and Sons', 'bse', '284.84', '774 Fahey Junction Suite 035\nBreitenbergport, FL 13220-8237', 'https://via.placeholder.com/640x480.png/00bb22?text=sports+nesciunt', '07:00:00', '07:00:00', 59, '2024-08-12 04:41:26', '2024-08-12 04:41:26'),
(16, 'Ward and Sons', 'gmd', '248.41', '91847 Kiel Crossroad\nPort Rosetta, WI 95395-7906', 'https://via.placeholder.com/640x480.png/00ccaa?text=sports+dolores', '07:00:00', '02:00:00', 54, '2024-08-12 04:41:26', '2024-08-12 04:41:26'),
(17, 'Reynolds, DuBuque and Olson', 'ftd', '143.94', '8571 Christiansen Summit Apt. 047\nTialand, OR 98761', 'https://via.placeholder.com/640x480.png/0088aa?text=sports+delectus', '07:00:00', '16:00:00', 55, '2024-08-12 04:41:26', '2024-08-12 04:41:26'),
(18, 'Davis and Sons', 'rdl', '59.8', '63676 Lynch Highway\nNorth Luna, AK 13770-6507', 'https://via.placeholder.com/640x480.png/007799?text=sports+magni', '08:00:00', '02:00:00', 55, '2024-08-12 04:41:26', '2024-08-12 04:41:26'),
(19, 'Considine-Bartoletti', 'bnd', '90.28', '1561 Spinka Groves\nEllisport, CT 16704', 'https://via.placeholder.com/640x480.png/00bbaa?text=sports+et', '06:00:00', '13:00:00', 51, '2024-08-12 04:41:26', '2024-08-12 04:41:26'),
(20, 'Kreiger, Kozey and Gulgowski', 'kuz', '234.87', '215 Christ Passage Apt. 530\nEbertland, AL 26389', 'https://via.placeholder.com/640x480.png/007733?text=sports+debitis', '06:00:00', '07:00:00', 49, '2024-08-12 04:41:26', '2024-08-12 04:41:26'),
(21, 'Swift-Wolff', 'xjd', '367.05', '632 Mara Glens Suite 534\nEast Lorenzo, MT 61947-6181', 'https://via.placeholder.com/640x480.png/0000ff?text=sports+minus', '07:00:00', '07:00:00', 43, '2024-08-12 04:41:26', '2024-08-12 04:41:26'),
(22, 'Will-Schamberger', 'zpk', '222.4', '7409 Herman Burgs Apt. 159\nMcGlynntown, ME 02308', 'https://via.placeholder.com/640x480.png/0055ff?text=sports+occaecati', '08:00:00', '18:00:00', 48, '2024-08-12 04:41:26', '2024-08-12 04:41:26'),
(23, 'Jacobson PLC', 'cen', '74.56', '10615 Elenora Lock Apt. 347\nKiannahaven, ND 55247-6355', 'https://via.placeholder.com/640x480.png/00dd11?text=sports+harum', '08:00:00', '07:00:00', 56, '2024-08-12 04:41:26', '2024-08-12 04:41:26'),
(24, 'Denesik, Huels and Kertzmann', 'nzt', '336.33', '6393 Cremin Knolls Suite 069\nWest Magnolia, WA 63640', 'https://via.placeholder.com/640x480.png/004444?text=sports+cumque', '07:00:00', '04:00:00', 42, '2024-08-12 04:41:26', '2024-08-12 04:41:26'),
(25, 'Dickinson, Okuneva and Shields', 'zub', '259.16', '91526 Adrian Estate\nJonatanland, CA 88282-7111', 'https://via.placeholder.com/640x480.png/005566?text=sports+voluptate', '08:00:00', '03:00:00', 55, '2024-08-12 04:41:26', '2024-08-12 04:41:26'),
(26, 'Streich Ltd', 'dqw', '110.65', '1486 Ratke Route Apt. 758\nPredovicberg, MS 89081', 'https://via.placeholder.com/640x480.png/0022dd?text=sports+maiores', '08:00:00', '15:00:00', 41, '2024-08-12 04:41:26', '2024-08-12 04:41:26'),
(27, 'Brekke-Heidenreich', 'vkt', '63.11', '7620 Hilpert Ville Suite 039\nEmanuelville, FL 26651', 'https://via.placeholder.com/640x480.png/00ffdd?text=sports+adipisci', '07:00:00', '20:00:00', 42, '2024-08-12 04:41:26', '2024-08-12 04:41:26'),
(28, 'Funk, Ryan and Cremin', 'dmc', '81.49', '92163 Elwyn Junction Apt. 198\nLake Roryport, NV 07563', 'https://via.placeholder.com/640x480.png/00eebb?text=sports+itaque', '08:00:00', '12:00:00', 58, '2024-08-12 04:41:26', '2024-08-12 04:41:26'),
(29, 'Skiles PLC', 'syj', '194.08', '9865 Misty Drive\nPort Luciano, CT 61861-0998', 'https://via.placeholder.com/640x480.png/0099ff?text=sports+dolorem', '08:00:00', '14:00:00', 40, '2024-08-12 04:41:26', '2024-08-12 04:41:26'),
(30, 'Purdy LLC', 'nik', '257.45', '783 Deion Pines Apt. 275\nEast Wilberview, ID 14589-8095', 'https://via.placeholder.com/640x480.png/00dddd?text=sports+voluptas', '08:00:00', '14:00:00', 59, '2024-08-12 04:41:26', '2024-08-12 04:41:26'),
(31, 'Haag Group', 'ufp', '266.59', '278 Peter Views Suite 181\nKelliemouth, ND 87092-2387', 'https://via.placeholder.com/640x480.png/005522?text=sports+magni', '06:00:00', '05:00:00', 56, '2024-08-12 04:41:26', '2024-08-12 04:41:26'),
(32, 'Cole-Boyer', 'qhv', '148.69', '943 Adrain Hollow Suite 100\nNorth Darrinville, AR 01227-1808', 'https://via.placeholder.com/640x480.png/002288?text=sports+amet', '07:00:00', '11:00:00', 49, '2024-08-12 04:41:26', '2024-08-12 04:41:26'),
(33, 'Boyer, Lehner and Hickle', 'kgw', '79.98', '75485 Shanna Greens Apt. 183\nTayaburgh, SC 87457-9399', 'https://via.placeholder.com/640x480.png/002200?text=sports+sunt', '06:00:00', '17:00:00', 44, '2024-08-12 04:41:26', '2024-08-12 04:41:26'),
(34, 'Altenwerth and Sons', 'exj', '499.28', '51379 Grant Via\nNew Rebamouth, NJ 20255-9385', 'https://via.placeholder.com/640x480.png/0000dd?text=sports+nemo', '06:00:00', '11:00:00', 41, '2024-08-12 04:41:26', '2024-08-12 04:41:26'),
(35, 'Schultz, Boehm and Kutch', 'pxf', '140.91', '640 Baumbach Glen\nGradyfurt, AR 23696-3276', 'https://via.placeholder.com/640x480.png/006688?text=sports+earum', '06:00:00', '15:00:00', 49, '2024-08-12 04:41:26', '2024-08-12 04:41:26'),
(36, 'Kling, Gleason and Waelchi', 'syv', '394.81', '9156 Gleichner Street\nLake Mozelle, NM 00352', 'https://via.placeholder.com/640x480.png/005544?text=sports+culpa', '07:00:00', '10:00:00', 50, '2024-08-12 04:41:26', '2024-08-12 04:41:26'),
(37, 'Schneider, Eichmann and Schaden', 'mfa', '72.01', '399 Leuschke Mission Suite 456\nWest Domenicburgh, AZ 76498-5539', 'https://via.placeholder.com/640x480.png/00cc66?text=sports+qui', '08:00:00', '05:00:00', 59, '2024-08-12 04:41:26', '2024-08-12 04:41:26'),
(38, 'Kunze, Lind and Schultz', 'ffi', '169.05', '9451 Brekke Fall\nSipesberg, MO 30805-7127', 'https://via.placeholder.com/640x480.png/003344?text=sports+culpa', '08:00:00', '00:00:00', 50, '2024-08-12 04:41:26', '2024-08-12 04:41:26'),
(39, 'Ortiz, Anderson and Pfannerstill', 'opz', '368.99', '174 Eden Fall\nHelgafort, AK 20021', 'https://via.placeholder.com/640x480.png/0000dd?text=sports+qui', '07:00:00', '15:00:00', 53, '2024-08-12 04:41:26', '2024-08-12 04:41:26'),
(40, 'Doyle PLC', 'oqs', '116.07', '525 Wunsch Spurs Suite 542\nSouth Edward, DE 23275', 'https://via.placeholder.com/640x480.png/00bbbb?text=sports+quaerat', '08:00:00', '11:00:00', 40, '2024-08-12 04:41:26', '2024-08-12 04:41:26'),
(41, 'Runte Inc', 'nef', '445.1', '1608 Verona Hollow Suite 748\nNew Shermanburgh, SD 10363', 'https://via.placeholder.com/640x480.png/00ff44?text=sports+eaque', '08:00:00', '04:00:00', 42, '2024-08-12 04:41:26', '2024-08-12 04:41:26'),
(42, 'Rodriguez-Bartoletti', 'eoz', '249.66', '953 Edd Wall Apt. 260\nDantemouth, VT 76249-6185', 'https://via.placeholder.com/640x480.png/001166?text=sports+veritatis', '06:00:00', '20:00:00', 55, '2024-08-12 04:41:26', '2024-08-12 04:41:26'),
(43, 'Christiansen, Hirthe and Kuphal', 'sju', '245.17', '6985 Hills Tunnel\nGenevieveside, WI 93149', 'https://via.placeholder.com/640x480.png/00bb66?text=sports+quia', '07:00:00', '21:00:00', 40, '2024-08-12 04:41:26', '2024-08-12 04:41:26'),
(44, 'Kulas Ltd', 'fnp', '392.66', '3537 Michale Hill\nPort Kendallburgh, NJ 13392-7631', 'https://via.placeholder.com/640x480.png/00ff55?text=sports+vel', '06:00:00', '16:00:00', 40, '2024-08-12 04:41:26', '2024-08-12 04:41:26'),
(45, 'Langosh, Maggio and Wilderman', 'iww', '372.57', '7624 Keanu Stream\nNew Eudorabury, MD 27249', 'https://via.placeholder.com/640x480.png/00ff88?text=sports+ea', '06:00:00', '04:00:00', 44, '2024-08-12 04:41:26', '2024-08-12 04:41:26'),
(46, 'Okuneva-Renner', 'mny', '463.82', '54678 Lucienne Mount Apt. 619\nSouth Ressieberg, HI 66559-1174', 'https://via.placeholder.com/640x480.png/004444?text=sports+sed', '06:00:00', '22:00:00', 57, '2024-08-12 04:41:26', '2024-08-12 04:41:26'),
(47, 'Luettgen, Vandervort and Gottlieb', 'tss', '101.15', '478 Rodriguez Cove Suite 030\nNorth Ikeside, NH 30233', 'https://via.placeholder.com/640x480.png/00ee88?text=sports+quo', '08:00:00', '02:00:00', 52, '2024-08-12 04:41:26', '2024-08-12 04:41:26'),
(48, 'Blanda Group', 'bhv', '495.59', '99973 Elvera Causeway Apt. 221\nMelodystad, ID 81902', 'https://via.placeholder.com/640x480.png/008877?text=sports+est', '07:00:00', '00:00:00', 54, '2024-08-12 04:41:26', '2024-08-12 04:41:26'),
(49, 'Kris Ltd', 'pnc', '250.71', '83430 Ratke Stravenue Suite 332\nWest Eliza, WA 01801-0657', 'https://via.placeholder.com/640x480.png/0088ff?text=sports+labore', '07:00:00', '11:00:00', 42, '2024-08-12 04:41:26', '2024-08-12 04:41:26'),
(50, 'Schuppe, Pacocha and Mosciski', 'uaj', '149.66', '66577 Annetta Road\nAnsleyland, DE 98572-8439', 'https://via.placeholder.com/640x480.png/0077cc?text=sports+magni', '08:00:00', '10:00:00', 44, '2024-08-12 04:41:26', '2024-08-12 04:41:26');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(7, '2024_08_10_175047_add_image_and_available_time_to_courts_table', 3),
(32, '2024_08_10_171336_create_courts_table', 4),
(33, '2024_08_10_192403_create_slot_books_table', 4),
(34, '2024_08_11_135115_add_fields__to_users_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `slot_books`
--

CREATE TABLE `slot_books` (
  `SlotBookID` bigint UNSIGNED NOT NULL,
  `userID` bigint UNSIGNED NOT NULL,
  `courtID` bigint UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slot_books`
--

INSERT INTO `slot_books` (`SlotBookID`, `userID`, `courtID`, `date`, `time`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2024-08-12', '06:00:00', '2024-08-12 04:46:40', '2024-08-12 04:46:40'),
(2, 1, 1, '2024-08-12', '08:00:00', '2024-08-12 04:46:50', '2024-08-12 04:46:50'),
(3, 1, 1, '2024-08-12', '10:00:00', '2024-08-12 04:46:57', '2024-08-12 04:46:57'),
(4, 1, 2, '2024-08-12', '07:00:00', '2024-08-12 04:47:11', '2024-08-12 04:47:11'),
(5, 1, 1, '2024-08-10', '06:00:00', '2024-08-12 04:47:25', '2024-08-12 04:47:25'),
(6, 1, 1, '2024-08-10', '08:00:00', '2024-08-12 04:47:42', '2024-08-12 04:47:42'),
(7, 1, 1, '2024-08-10', '10:00:00', '2024-08-12 04:48:04', '2024-08-12 04:48:04'),
(8, 1, 2, '2024-08-12', '09:00:00', '2024-08-12 04:48:45', '2024-08-12 04:48:45');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone_number`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'user1', 'user1@gmail.com', NULL, NULL, '$2y$12$821H.ft25EjrXv58r9XevexVRNSnT0FHDyklMDyy7VrOmCfPnZVra', NULL, '2024-08-10 11:21:00', '2024-08-10 11:21:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courts`
--
ALTER TABLE `courts`
  ADD PRIMARY KEY (`courtID`),
  ADD UNIQUE KEY `courts_name_unique` (`name`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `slot_books`
--
ALTER TABLE `slot_books`
  ADD PRIMARY KEY (`SlotBookID`),
  ADD KEY `slot_books_userid_foreign` (`userID`),
  ADD KEY `slot_books_date_index` (`date`),
  ADD KEY `slot_books_time_index` (`time`),
  ADD KEY `slot_books_courtid_index` (`courtID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `courts`
--
ALTER TABLE `courts`
  MODIFY `courtID` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `slot_books`
--
ALTER TABLE `slot_books`
  MODIFY `SlotBookID` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `slot_books`
--
ALTER TABLE `slot_books`
  ADD CONSTRAINT `slot_books_courtid_foreign` FOREIGN KEY (`courtID`) REFERENCES `courts` (`courtID`) ON DELETE CASCADE,
  ADD CONSTRAINT `slot_books_userid_foreign` FOREIGN KEY (`userID`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
