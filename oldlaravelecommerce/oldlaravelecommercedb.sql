-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2023 at 03:22 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `oldlaravelecommercedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'itaque blanditiis', 'itaque-blanditiis', '2023-11-09 19:05:09', '2023-11-09 19:05:09'),
(2, 'incidunt similique', 'incidunt-similique', '2023-11-09 19:05:09', '2023-11-09 19:05:09'),
(3, 'enim maiores', 'enim-maiores', '2023-11-09 19:05:09', '2023-11-09 19:05:09'),
(4, 'asperiores fugiat', 'asperiores-fugiat', '2023-11-09 19:05:09', '2023-11-09 19:05:09'),
(5, 'aspernatur labore', 'aspernatur-labore', '2023-11-09 19:05:09', '2023-11-09 19:05:09'),
(6, 'iure ut', 'iure-ut', '2023-11-09 19:05:09', '2023-11-09 19:05:09'),
(7, 'enim cupiditate', 'enim-cupiditate', '2023-11-09 19:06:13', '2023-11-09 19:06:13'),
(8, 'expedita delectus', 'expedita-delectus', '2023-11-09 19:06:13', '2023-11-09 19:06:13'),
(9, 'voluptatibus tempora', 'voluptatibus-tempora', '2023-11-09 19:06:13', '2023-11-09 19:06:13'),
(10, 'occaecati aperiam', 'occaecati-aperiam', '2023-11-09 19:06:13', '2023-11-09 19:06:13'),
(11, 'et accusamus', 'et-accusamus', '2023-11-09 19:06:13', '2023-11-09 19:06:13'),
(12, 'ab soluta', 'ab-soluta', '2023-11-09 19:06:13', '2023-11-09 19:06:13');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `type` enum('fixed','percent') NOT NULL,
  `value` decimal(8,2) NOT NULL,
  `cart_value` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expiry_date` date NOT NULL DEFAULT curdate()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `home_categories`
--

CREATE TABLE `home_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sel_categories` varchar(255) NOT NULL,
  `no_of_products` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_categories`
--

INSERT INTO `home_categories` (`id`, `sel_categories`, `no_of_products`, `created_at`, `updated_at`) VALUES
(1, '1,2,3', 6, '2023-11-27 03:25:50', '2023-11-27 05:13:54');

-- --------------------------------------------------------

--
-- Table structure for table `home_sliders`
--

CREATE TABLE `home_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `subtitle` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_sliders`
--

INSERT INTO `home_sliders` (`id`, `title`, `subtitle`, `price`, `link`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'First Slide Title', 'First Slide SubTitle', '200', 'http://127.0.0.1:8000', '1701061158.jpg', 1, '2023-11-26 21:54:01', '2023-11-27 05:08:12'),
(2, '2nd Slide Title', '2nd Slide subtitle', '300', 'http://127.0.0.1:8000', '1701086783.jpg', 1, '2023-11-27 05:06:23', '2023-11-27 05:06:23');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_11_03_200530_create_sessions_table', 1),
(7, '2023_11_07_100205_create_categories_table', 2),
(8, '2023_11_07_100301_create_products_table', 2),
(9, '2023_11_24_041643_create_home_sliders_table', 3),
(10, '2023_11_24_204238_create_home_categories_table', 3),
(11, '2023_11_27_143049_create_sales_table', 4),
(12, '2023_12_01_043903_create_coupons_table', 5),
(13, '2023_12_05_050414_add_expiry_date_to_coupons_table', 6),
(14, '2023_12_05_085538_create_orders_table', 6),
(15, '2023_12_05_085725_create_order_items_table', 6),
(16, '2023_12_05_085806_create_shippings_table', 6),
(17, '2023_12_05_085850_create_transactions_table', 6),
(18, '2023_12_10_075359_add_delivered_canceled_date_to_orders_table', 7),
(19, '2023_12_10_081352_create_reviews_table', 7),
(20, '2023_12_10_081738_add_rstatus_to_order_items_table', 7),
(21, '2023_12_10_094947_create_contacts_table', 7),
(22, '2023_12_10_144518_create_settings_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `subtotal` decimal(8,2) NOT NULL,
  `discount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `tax` decimal(8,2) NOT NULL,
  `total` decimal(8,2) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `line1` varchar(255) NOT NULL,
  `line2` varchar(255) DEFAULT NULL,
  `city` varchar(255) NOT NULL,
  `province` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `zipcode` varchar(255) NOT NULL,
  `status` enum('ordered','delivered','canceled') NOT NULL DEFAULT 'ordered',
  `is_shipping_different` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `delivered_date` date DEFAULT NULL,
  `canceled_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `rstatus` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `short_description` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `regular_price` decimal(8,2) NOT NULL,
  `sale_price` decimal(8,2) DEFAULT NULL,
  `SKU` varchar(255) NOT NULL,
  `stock_status` enum('instock','outofstock') NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT 10,
  `image` varchar(255) DEFAULT NULL,
  `images` text DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `short_description`, `description`, `regular_price`, `sale_price`, `SKU`, `stock_status`, `featured`, `quantity`, `image`, `images`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'et repellat expedita ipsam', 'et-repellat-expedita-ipsam', 'Dolores nulla voluptates sed reiciendis eligendi pariatur consequatur sunt. Nobis placeat voluptatem neque ipsa sequi explicabo blanditiis. Sunt ullam et sunt eos ut nemo suscipit.', 'Ut et deleniti omnis qui. Sequi voluptatibus cumque qui ut ullam velit quidem dolore. Quia tenetur iste sunt voluptatem architecto odit. Laboriosam pariatur ut aliquid inventore consequuntur aspernatur est. Officiis velit iure quos et velit modi quaerat deserunt. Maxime aperiam quasi rerum necessitatibus non esse excepturi. Sunt veritatis voluptas ullam eos dolores vel. Beatae praesentium nostrum voluptatum vel non.', 406.00, NULL, 'DIGI241', 'instock', 0, 107, 'digital_15.jpg', NULL, 1, '2023-11-09 19:06:13', '2023-11-09 19:06:13'),
(2, 'ea quaerat omnis vitae', 'ea-quaerat-omnis-vitae', 'Suscipit saepe quia vel et qui alias facilis. Amet maiores in eveniet commodi et est. Nemo facilis sed libero quae at minus.', 'Voluptates eligendi omnis aut temporibus non. Debitis saepe temporibus velit animi ut. Vel qui saepe voluptatem fugit voluptate. Voluptatum qui in iure debitis quis. Ut quas temporibus libero quas. Optio quod dolores assumenda velit minima voluptas. Nesciunt quod velit doloremque dicta facere nihil. Natus quasi ea optio blanditiis. Eos quas hic quia tempora perspiciatis reiciendis dicta.', 497.00, NULL, 'DIGI381', 'instock', 0, 130, 'digital_9.jpg', NULL, 4, '2023-11-09 19:06:13', '2023-11-09 19:06:13'),
(3, 'quasi asperiores quae ullam', 'quasi-asperiores-quae-ullam', 'Sunt veniam ipsam occaecati dolor quidem. Voluptatem cum perferendis ea quas ex.', 'Reprehenderit molestiae animi rerum qui fugit eius. Officiis ea officia et et. Non sed et quo corporis sit laboriosam quisquam accusamus. Corporis et ut architecto nemo. Accusantium et et laborum corrupti nemo. Atque nostrum atque autem omnis soluta aperiam autem. Aperiam ipsam et velit dolorem neque. Illo eveniet est adipisci iure. Voluptate quos aut placeat deserunt ipsa nihil. Rerum laudantium aut consequatur nihil aut voluptas.', 172.00, NULL, 'DIGI133', 'instock', 0, 113, 'digital_11.jpg', NULL, 5, '2023-11-09 19:06:13', '2023-11-09 19:06:13'),
(4, 'veritatis iste praesentium provident', 'veritatis-iste-praesentium-provident', 'Nihil quaerat et dolores molestiae. Sint eos quos et cupiditate in. Cumque qui esse distinctio qui. Esse voluptas ea recusandae officia.', 'Dolores ut quo quo fugit. Ab quaerat quia qui asperiores velit dolor. Enim omnis adipisci pariatur hic. Sapiente iure ut ducimus cupiditate. Omnis atque impedit qui rem molestiae aperiam. Sint cum provident reprehenderit officiis aut. Et voluptate inventore sunt facilis quibusdam vel. Odio ex quibusdam omnis quisquam. Temporibus ea consequuntur vero asperiores voluptatum animi. Minus repudiandae error libero hic nulla. Non tempora similique sequi distinctio saepe.', 482.00, NULL, 'DIGI453', 'instock', 0, 168, 'digital_20.jpg', NULL, 2, '2023-11-09 19:06:13', '2023-11-09 19:06:13'),
(5, 'ex explicabo ratione dicta', 'ex-explicabo-ratione-dicta', 'Expedita et error recusandae voluptas aut alias voluptatum. Illo repudiandae placeat eos et ipsa. Perferendis fugit quae ut veniam.', 'Autem fuga ratione ut numquam et fugiat quibusdam. Maxime vitae culpa assumenda. Dolores sequi ea voluptatem provident consequatur voluptatum. Error quos rerum nobis temporibus deserunt maiores occaecati. Culpa et deserunt eaque ipsum quasi iure soluta. Expedita eum ut occaecati dolore perspiciatis quos reiciendis. Quaerat sapiente est alias quisquam minus. Et quibusdam qui libero qui. Vitae suscipit nesciunt nesciunt ut aspernatur quam officia.', 436.00, NULL, 'DIGI213', 'instock', 0, 138, 'digital_3.jpg', NULL, 5, '2023-11-09 19:06:13', '2023-11-09 19:06:13'),
(6, 'enim dolorem totam dignissimos', 'enim-dolorem-totam-dignissimos', 'Dolores officia molestiae maiores et laborum sit. Est incidunt eos consequatur voluptas sit. Unde porro unde soluta a nulla ut.', 'Cumque voluptatibus nihil cumque provident assumenda quia quaerat. Magnam nihil enim porro velit sed rerum in totam. Debitis assumenda dignissimos occaecati reprehenderit. Esse facilis nobis quia dolorem rerum esse enim. In aspernatur sit fuga tempora fugiat. Quidem quas magnam sint officiis saepe est optio. Consequatur enim explicabo laudantium in iste debitis voluptate.', 147.00, NULL, 'DIGI207', 'instock', 0, 158, 'digital_13.jpg', NULL, 2, '2023-11-09 19:06:13', '2023-11-09 19:06:13'),
(7, 'illo quo totam est', 'illo-quo-totam-est', 'Voluptas rerum laboriosam sunt magnam tempora quia itaque qui. Ipsam consequatur qui accusamus eos delectus atque quo. Voluptatum non illum itaque commodi impedit. Deserunt aut non nulla.', 'Et sapiente atque qui quae dolore atque assumenda itaque. Molestiae sed eius eligendi omnis. Aperiam sunt excepturi sint qui reprehenderit enim porro. Consequuntur doloremque similique labore nostrum aut eos et. Sint officiis minima blanditiis occaecati. Pariatur et iure iste et magni ipsa ad. Minus unde in consequuntur doloribus. Voluptate nesciunt accusantium iure deserunt. Ipsa quia quo autem nemo in debitis. Aliquam non dolorem aut id reiciendis quam.', 393.00, NULL, 'DIGI439', 'instock', 0, 141, 'digital_1.jpg', NULL, 5, '2023-11-09 19:06:13', '2023-11-09 19:06:13'),
(8, 'voluptas consectetur ex sint', 'voluptas-consectetur-ex-sint', 'Natus sit fugiat suscipit cupiditate ut amet. Et sed molestiae impedit eligendi asperiores temporibus libero. Ut rerum odio nobis tempora sint at autem. Dignissimos laboriosam adipisci facilis amet.', 'Sit culpa et ut placeat fugit omnis qui. Molestiae nisi debitis ducimus dolorum quos et hic. Modi voluptates perferendis cumque dolore sunt. Itaque nisi libero animi nihil sed. Non ex ut et dolorum odit cupiditate odio amet. Minima ipsum iure nobis non dicta ipsa facere. Omnis harum fugiat excepturi vel voluptas rerum. In numquam molestias impedit autem dolorem consequuntur dolorum illo.', 226.00, NULL, 'DIGI173', 'instock', 0, 143, 'digital_2.jpg', NULL, 5, '2023-11-09 19:06:13', '2023-11-09 19:06:13'),
(9, 'quia dolores perferendis sed', 'quia-dolores-perferendis-sed', 'Asperiores rem maxime similique velit aut. Odit unde explicabo consectetur quis. Ut qui debitis rem unde.', 'Possimus nisi voluptas aliquid et quaerat quis vel. Fuga aliquid ipsum suscipit sequi omnis molestiae esse dolor. Et magni necessitatibus debitis sequi numquam et ducimus autem. Magni excepturi eligendi error recusandae aut aut. Assumenda ea fugiat dolore rerum deleniti consequuntur. Nihil aut corrupti qui. Molestiae minus odit distinctio nihil aperiam. Quo quo tempore est fuga quasi soluta.', 164.00, NULL, 'DIGI177', 'instock', 0, 173, 'digital_6.jpg', NULL, 5, '2023-11-09 19:06:13', '2023-11-09 19:06:13'),
(10, 'mollitia quia eum et', 'mollitia-quia-eum-et', 'Et eaque cumque aspernatur unde. Placeat eveniet inventore et consectetur corporis. Inventore sunt nesciunt deserunt recusandae facilis magnam.', 'Eos et est esse commodi. Est commodi quas magnam atque. Veritatis et non quia maxime. Quod nesciunt laborum fuga reprehenderit. Et deserunt voluptatum rem voluptas. Dignissimos consequatur quae commodi officia. Veritatis facilis minima quidem. Nostrum eos quia ut quas. Voluptates omnis ut exercitationem non voluptates.', 319.00, NULL, 'DIGI252', 'instock', 0, 183, 'digital_14.jpg', NULL, 4, '2023-11-09 19:06:13', '2023-11-09 19:06:13'),
(11, 'ut recusandae omnis quasi', 'ut-recusandae-omnis-quasi', 'Ut perspiciatis omnis ut necessitatibus. Dolore architecto sunt est suscipit. Quos a fugit maiores facilis ut officia qui. Sapiente ut amet repudiandae numquam.', 'Tempore quidem beatae libero. Illum expedita blanditiis numquam officiis et similique. Est quia sint voluptates architecto id optio eveniet est. Eos quidem recusandae voluptatibus quisquam ut voluptatum. Aliquid earum sed enim quia natus voluptatem. Et ut minus maxime dolores. Harum fugiat maxime qui ullam explicabo consequatur. Commodi amet accusantium dolores quos rerum provident incidunt neque.', 278.00, NULL, 'DIGI262', 'instock', 0, 191, 'digital_5.jpg', NULL, 2, '2023-11-09 19:06:13', '2023-11-09 19:06:13'),
(12, 'corrupti velit commodi qui', 'corrupti-velit-commodi-qui', 'Consequuntur porro rem officia qui est non. Voluptatem dolorem a officiis sequi consequatur vel animi. Repellendus cum et eum maiores neque minus mollitia.', 'Officiis veniam aperiam molestias officia deserunt vel. Vel et aliquam delectus velit. Voluptas alias totam accusantium ducimus qui id similique. Voluptate blanditiis aperiam aliquid. Maxime nam officiis est. Illo ipsam vel enim autem eum repellat. Voluptas ea ipsam excepturi ab non sed expedita. Recusandae rerum incidunt aut enim veniam eum dolor. Deleniti aut qui sapiente est minus aut. Facilis laborum saepe officiis dolorem. Sint tempora rerum dolorum consequatur.', 372.00, NULL, 'DIGI480', 'instock', 0, 108, 'digital_17.jpg', NULL, 5, '2023-11-09 19:06:13', '2023-11-09 19:06:13'),
(13, 'eos aut aut ducimus', 'eos-aut-aut-ducimus', 'Ea voluptatem neque est est ex quod consequatur. Et quas aut at magnam expedita officia. Enim nemo molestiae facilis at nisi. Neque ut doloremque et iure consequuntur dolor provident nemo.', 'Recusandae quod incidunt aut molestias. Ut atque nulla facilis rem occaecati blanditiis fugit. Vero eum praesentium sapiente rem aut sint autem soluta. Cum tempore culpa voluptatibus at tempore. Voluptate accusantium iusto quis ratione. Autem soluta porro praesentium eius nobis iste reiciendis. Rerum sunt itaque aut. Optio dignissimos aut ex itaque. Et optio sit delectus et neque. Eum dolores et quae sed quasi.', 146.00, NULL, 'DIGI471', 'instock', 0, 177, 'digital_19.jpg', NULL, 3, '2023-11-09 19:06:13', '2023-11-09 19:06:13'),
(14, 'numquam ratione qui eveniet', 'numquam-ratione-qui-eveniet', 'Aut maxime blanditiis vitae vel iste distinctio. Sed vero illo omnis magnam non aliquam. Aut quidem ipsam aperiam reprehenderit sit voluptas.', 'Eos quisquam exercitationem id quidem. Perferendis alias explicabo exercitationem et molestiae non. Unde voluptas ullam optio harum eligendi nobis quia quibusdam. Eius dicta cupiditate quas maxime facilis eos. Amet et facilis est ut cupiditate maxime voluptatem dicta. Enim minima ea suscipit quibusdam. Dicta accusamus nam veritatis fugit rerum consectetur.', 225.00, NULL, 'DIGI309', 'instock', 0, 107, 'digital_8.jpg', NULL, 5, '2023-11-09 19:06:13', '2023-11-09 19:06:13'),
(15, 'repellendus ut reprehenderit nam', 'repellendus-ut-reprehenderit-nam', 'Dolor dolores quia facilis consequatur a eaque. Corrupti recusandae quasi doloribus labore aliquam est. Laboriosam fuga sed asperiores totam neque dolore.', 'Ex consequuntur aut sit rerum. Aut numquam eum ab laudantium id. Voluptatem molestias sit incidunt. Maiores est tenetur voluptas ipsam ut saepe. Corporis quas qui at saepe consectetur vitae blanditiis incidunt. Ipsum enim impedit id temporibus nostrum assumenda repellat. Voluptatem distinctio nobis sapiente impedit possimus. Quia eos fugit numquam quis aut deserunt non. In debitis in quo earum quis et.', 227.00, NULL, 'DIGI104', 'instock', 0, 197, 'digital_21.jpg', NULL, 4, '2023-11-09 19:06:13', '2023-11-09 19:06:13'),
(16, 'qui sunt illo aut', 'qui-sunt-illo-aut', 'Cumque quam nam veritatis aliquam accusantium. Veritatis voluptatem voluptate consequatur officiis deserunt qui nihil. Accusantium alias molestiae perspiciatis sit.', 'Architecto laudantium tempora culpa id iusto. Et temporibus rerum voluptas repellat velit neque non. Velit possimus voluptas quia est vel eligendi. Provident et quia sit ut corrupti. Et voluptas quibusdam incidunt eum. Ut ut atque numquam quo voluptas cum aut nisi. Ut ad qui rem necessitatibus non optio occaecati et. Rerum ducimus recusandae assumenda voluptate delectus. Accusantium voluptas vero non accusantium tenetur.', 302.00, NULL, 'DIGI395', 'instock', 0, 136, 'digital_16.jpg', NULL, 1, '2023-11-09 19:06:13', '2023-11-09 19:06:13'),
(17, 'natus saepe non voluptatem', 'natus-saepe-non-voluptatem', 'Natus aspernatur sed sit. Dolorem eaque earum fugiat. Pariatur consequuntur et quia.', 'Quo repudiandae exercitationem unde. Incidunt aut autem doloribus eius voluptates. Dolor nihil in quis voluptates labore. Error possimus dolorum accusantium magni consequatur quisquam est. Molestias voluptatibus ipsum minus quia molestiae. Molestias illo dolor dolorem iure aspernatur quae dolorem delectus. Nihil et veritatis delectus minima eum non omnis. Dolore perferendis et corporis similique. Voluptatem modi eos harum ipsam.', 386.00, NULL, 'DIGI158', 'instock', 0, 155, 'digital_7.jpg', NULL, 5, '2023-11-09 19:06:13', '2023-11-09 19:06:13'),
(18, 'et magni dolorem aut', 'et-magni-dolorem-aut', 'Ea natus ea aut. Autem quas iste itaque aut aliquam aut. Ut autem expedita exercitationem voluptatem quis officiis. Sit et doloremque quaerat.', 'Nostrum nostrum aperiam doloribus molestiae. Eius expedita suscipit minus aut beatae. Ut veniam rem saepe rerum vitae ea velit. Cupiditate eum consectetur laboriosam ut. Consequuntur id quos expedita. Et in porro temporibus laboriosam quaerat eum ipsum quod. Vel id dicta deleniti impedit exercitationem optio architecto. Tempora maiores architecto cum soluta quia voluptatem. Voluptatem ratione magni culpa dolorem facilis molestiae rerum. Suscipit repellat amet illo.', 47.00, NULL, 'DIGI461', 'instock', 0, 122, 'digital_12.jpg', NULL, 4, '2023-11-09 19:06:13', '2023-11-09 19:06:13'),
(19, 'qui iste architecto est', 'qui-iste-architecto-est', 'Impedit enim ea amet maxime est. Minima ratione quis expedita soluta exercitationem in cum et. Molestias quaerat laudantium enim omnis maiores excepturi.', 'Quis voluptatem expedita quam corrupti at nobis. Vel quia illo eum labore doloremque. Ipsa rerum sint dolor laboriosam praesentium in. Accusantium molestiae unde sed consequatur saepe quia sit. Laudantium commodi est iure laborum totam. A sint nesciunt temporibus eos sunt. Hic voluptas pariatur consectetur ipsa excepturi. Quos porro aut accusamus soluta error earum itaque. Totam magnam sed mollitia vitae tempora ullam.', 41.00, NULL, 'DIGI114', 'instock', 0, 131, 'digital_18.jpg', NULL, 3, '2023-11-09 19:06:13', '2023-11-09 19:06:13'),
(20, 'iure tempora quisquam quisquam', 'iure-tempora-quisquam-quisquam', 'Deleniti quo et eveniet iusto sequi repellat. Ipsum aut soluta iste dolore sunt quis ut fugiat. Eius nulla vitae amet molestias ex minus. Et aut ipsa minima suscipit.', 'Dignissimos exercitationem quo dignissimos voluptas quidem dolores qui. Voluptas nihil ut quia et at quae. Velit natus ex debitis. Similique commodi sint autem. Nulla sapiente ut saepe et. Ipsum consequatur qui quidem incidunt pariatur dolor. Iusto blanditiis qui quia perspiciatis iure placeat consequatur. Enim incidunt voluptatem dolorem quo. Commodi ullam vel sit repudiandae natus. Laborum consequatur quod ab aut explicabo non molestias. Totam maxime id quo quod.', 186.00, NULL, 'DIGI165', 'instock', 0, 116, 'digital_4.jpg', NULL, 5, '2023-11-09 19:06:13', '2023-11-09 19:06:13'),
(21, 'cum voluptate nisi aspernatur', 'cum-voluptate-nisi-aspernatur', 'Provident magni veritatis libero unde eveniet rerum porro incidunt. Temporibus nisi eos quia eos non. Id ullam numquam est. Iure cumque ea facilis voluptatem et. Dolorem voluptates autem est ut.', 'Qui eos enim officiis rerum laboriosam ut et. Optio qui quod iure qui odio. Quas autem consequatur et ipsum rerum et consequatur. Saepe facilis repellendus quia repellat quia eum doloribus. Quas unde optio necessitatibus autem. Commodi dolor placeat expedita eos veniam harum perferendis. Architecto perferendis ut id at atque culpa. Saepe rerum dolore quam praesentium ut. Sed ea similique voluptatibus molestiae et atque. Ratione et atque aut sit nisi.', 422.00, NULL, 'DIGI482', 'instock', 0, 108, 'digital_22.jpg', NULL, 1, '2023-11-09 19:06:13', '2023-11-09 19:06:13'),
(22, 'quia fugit consequatur impedit', 'quia-fugit-consequatur-impedit', 'Et dolorem omnis aliquid sed in exercitationem similique. Facere quia amet omnis voluptas rem deserunt. Et ut ipsam in quia est laudantium. Odio sapiente laboriosam et voluptatem.', 'Repudiandae ea provident nihil ratione. Ea amet quia eos animi est ab. Et harum quis et alias et laudantium possimus. Aut eaque repudiandae unde autem enim saepe inventore. Natus aut aspernatur id aut et. Quaerat nihil recusandae id ipsa modi. Numquam pariatur sed ut consequatur vitae voluptatem fugiat. Quis dolore ipsa asperiores cum voluptatem. Nulla placeat velit quia illo corporis eos. Et aut occaecati reprehenderit adipisci. Consequatur enim inventore sit et officia eum ut.', 157.00, NULL, 'DIGI306', 'instock', 0, 184, 'digital_10.jpg', NULL, 3, '2023-11-09 19:06:13', '2023-11-09 19:06:13');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rating` int(11) NOT NULL,
  `comment` text NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sale_date` datetime NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `sale_date`, `status`, `created_at`, `updated_at`) VALUES
(1, '2023-11-27 21:55:20', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('GjIHm53GFeNQHlxYwzd72eeAaAeMPRJ0f2Y5MaZm', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieGVTVzhWdndqOUMxWENUbjduWlNKU3NDZkgzd2hmRVkyU0RzZnlMaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1702461966),
('KobjSHeY7UggvO9QMlQxTO7wFtSgl2H0T2jjZM2K', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiblNJYlRyVVMya3EzRXNtOXRxS0tYRHd1YjFFWWFzNE9GN2FJc2lGWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1702291348);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `phone2` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `map` varchar(500) NOT NULL,
  `twiter` varchar(255) NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `pinterest` varchar(255) NOT NULL,
  `instagram` varchar(255) NOT NULL,
  `youtube` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `line1` varchar(255) NOT NULL,
  `line2` varchar(255) DEFAULT NULL,
  `city` varchar(255) NOT NULL,
  `province` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `zipcode` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `mode` enum('cod','card','paypal') NOT NULL,
  `status` enum('pending','approved','declined','refunded') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` text DEFAULT NULL,
  `utype` varchar(255) NOT NULL DEFAULT 'USR' COMMENT 'ADM for Admin and USR for User or Customer',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `utype`, `created_at`, `updated_at`) VALUES
(1, 'Nguyen Duc Tuan', 'nguyenductuan05102002@gmail.com', NULL, '$2y$10$OzyrXwyepKAjZyOrt0hMpOhimVkhzPDTJMsnUdAQyUg26T9cXUrK6', NULL, NULL, NULL, 'MPrPMS22qatx5azmsu9qqcEtMn8bPVrxhzA1dsitbmm8wgpvPsbvc0MijIHd', NULL, NULL, 'USR', '2023-11-06 22:02:48', '2023-11-06 22:02:48'),
(2, 'Ductuanadmin', 'tuanndph16237@fpt.edu.vn', NULL, '$2y$10$WreSLwV6uRPVM8LrBPk2X.ioif5UMuR2SjYcy1rmRJJiwUTAxKSiW', NULL, NULL, NULL, 'UkCvb5Tt7PsP5pefHgv0OpkPNCDX4KstLD2Ya1dtgFm5qoaBnNnSX5Z9E8cV', NULL, NULL, 'ADM', '2023-11-06 22:08:43', '2023-11-06 22:08:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupons_code_unique` (`code`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `home_categories`
--
ALTER TABLE `home_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_sliders`
--
ALTER TABLE `home_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_product_id_foreign` (`product_id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`);

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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_order_item_id_foreign` (`order_item_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shippings_order_id_foreign` (`order_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_user_id_foreign` (`user_id`),
  ADD KEY `transactions_order_id_foreign` (`order_id`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_categories`
--
ALTER TABLE `home_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `home_sliders`
--
ALTER TABLE `home_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_order_item_id_foreign` FOREIGN KEY (`order_item_id`) REFERENCES `order_items` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `shippings`
--
ALTER TABLE `shippings`
  ADD CONSTRAINT `shippings_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
