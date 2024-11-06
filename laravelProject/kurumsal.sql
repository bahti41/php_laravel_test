-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 06 Kas 2024, 21:29:48
-- Sunucu sürümü: 10.4.32-MariaDB
-- PHP Sürümü: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `kurumsal`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `altkategorilers`
--

CREATE TABLE `altkategorilers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `altkategori_adi` varchar(255) DEFAULT NULL,
  `altkategori_url` varchar(255) DEFAULT NULL,
  `anahtar` varchar(255) DEFAULT NULL,
  `aciklama` varchar(255) DEFAULT NULL,
  `resim` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `altkategorilers`
--

INSERT INTO `altkategorilers` (`id`, `kategori_id`, `altkategori_adi`, `altkategori_url`, `anahtar`, `aciklama`, `resim`, `created_at`, `updated_at`) VALUES
(1, 3, 'Montalama', 'montalama', 'deneme,montaj', 'Montaj işlemlerimiz sizin icin en iyisi', 'upload/altkategoriler/1812142237158538.jpeg', '2024-10-06 02:45:09', NULL),
(2, 3, 'Güvenlik', 'guvenlik', 'deneme,güvenlik', 'Güvenliginiz icin şeffaf iletişim ve işlemler', 'upload/altkategoriler/1812142301603760.jpeg', '2024-10-06 02:46:10', NULL),
(3, 3, 'Taşıma Ortamı', 'tasima-ortami', 'denem,taşıma', 'Taşımacıklıkta en hizlı ve güvenilir', 'upload/altkategoriler/1812142532842193.jpeg', '2024-10-06 02:49:51', NULL),
(4, 5, 'Araba Parcaları', 'araba-parcalari', 'deneme,araba', 'Araba Adına her şey burada', 'upload/altkategoriler/1812142630977648.jpeg', '2024-10-06 02:51:24', NULL),
(5, 5, 'Bilgisayar', 'bilgisayar', 'deneme,bilgisayar', 'Bilgisayar ile alakalı neye ihtiyacınız', 'upload/altkategoriler/1812142725945683.jpeg', '2024-10-06 02:52:55', NULL),
(6, 2, 'IT Cözümleri', 'it-cozumleri', 'deneme,development', 'Bilişim ile tanışın', 'upload/altkategoriler/1812144791944411.jpeg', '2024-10-06 02:56:09', '2024-10-06 03:25:45'),
(7, 5, 'Klima', 'klima', 'deneme,klima', 'Klima sıcakta hayat kurtarır', 'upload/altkategoriler/1812143106348629.png', '2024-10-06 02:58:58', NULL),
(8, 2, 'Taşımacılık', 'tasimacilik', 'deneme,taşıma', 'Taşıma işiniz olsun', 'upload/altkategoriler/1812143191912703.jpeg', '2024-10-06 03:00:19', NULL),
(9, 6, 'Siber Güvenlik', 'siber-guvenlik', 'deneme,anahtar', 'Siber güvnlik icin herşey', 'upload/altkategoriler/1812144683740869.jpeg', '2024-10-06 03:24:02', NULL),
(10, 6, 'Bilişim Development', 'bilisim-development', 'deneme,anahtar', 'deneme acıklama', 'upload/altkategoriler/1812144742124620.jpeg', '2024-10-06 03:24:58', NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `baslik` varchar(255) DEFAULT NULL,
  `alt_baslik` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `video_url` varchar(255) DEFAULT NULL,
  `resim` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `banners`
--

INSERT INTO `banners` (`id`, `baslik`, `alt_baslik`, `url`, `video_url`, `resim`, `created_at`, `updated_at`) VALUES
(1, 'Başlık Alanaı', 'Alt Başlık Alanı', NULL, 'http://localhost:8000/', 'upload/banner/1812808057432091.png', NULL, '2024-11-06 14:36:17');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `blogiceriks`
--

CREATE TABLE `blogiceriks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `baslik` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  `anahtar` varchar(255) DEFAULT NULL,
  `aciklama` varchar(255) DEFAULT NULL,
  `metin` text DEFAULT NULL,
  `resim` varchar(255) DEFAULT NULL,
  `sirano` int(11) DEFAULT 1,
  `durum` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `blogiceriks`
--

INSERT INTO `blogiceriks` (`id`, `kategori_id`, `baslik`, `url`, `tag`, `anahtar`, `aciklama`, `metin`, `resim`, `sirano`, `durum`, `created_at`, `updated_at`) VALUES
(1, 3, 'Dotnet Core Kütüphanesi', 'dotnet-core-kutuphanesi', 'Etikete, denme', 'deneme,anahtar', 'deneme acıklama', '<h3>1914 tarihli H. Rackham &Ccedil;evirisi</h3>\r\n<p>\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p>\r\n<h3>M.&Ouml;. 45 tarihinde &Ccedil;i&ccedil;ero tarafından yazılan \"de Finibus Bonorum et Malorum\"un 1.10.33 sayılı b&ouml;l&uuml;m&uuml;</h3>\r\n<p>\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\"</p>\r\n<h3>1914 tarihli H. Rackham &Ccedil;evirisi</h3>\r\n<p>\"On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.\"</p>', 'upload/blogicerik/1812145863641803.jpeg', 1, 1, '2024-10-06 03:35:32', '2024-10-06 04:08:28'),
(2, 3, 'Csharp Kütüphanesi', 'csharp-kutuphanesi', 'Etikete, denme', 'deneme,anahtar', 'deneme acıklama', '<h3>1914 tarihli H. Rackham &Ccedil;evirisi</h3>\r\n<p>\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p>\r\n<h3>M.&Ouml;. 45 tarihinde &Ccedil;i&ccedil;ero tarafından yazılan \"de Finibus Bonorum et Malorum\"un 1.10.33 sayılı b&ouml;l&uuml;m&uuml;</h3>\r\n<p>\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\"</p>\r\n<h3>1914 tarihli H. Rackham &Ccedil;evirisi</h3>\r\n<p>\"On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.\"</p>', 'upload/blogicerik/1812145848320185.jpeg', 2, 1, '2024-10-06 03:36:16', '2024-10-06 03:42:33'),
(3, 2, 'JavaScrip Kütüphanesi', 'javascrip-kutuphanesi', 'Etikete, denme', 'deneme,anahtar', 'deneme acıklama', '<h3>1914 tarihli H. Rackham &Ccedil;evirisi</h3>\r\n<p>\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p>\r\n<h3>M.&Ouml;. 45 tarihinde &Ccedil;i&ccedil;ero tarafından yazılan \"de Finibus Bonorum et Malorum\"un 1.10.33 sayılı b&ouml;l&uuml;m&uuml;</h3>\r\n<p>\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\"</p>\r\n<h3>1914 tarihli H. Rackham &Ccedil;evirisi</h3>\r\n<p>\"On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.\"</p>', 'upload/blogicerik/1812145833447673.png', 3, 1, '2024-10-06 03:36:48', '2024-10-06 03:42:19'),
(4, 1, 'Laravel Kütüphanesi', 'laravel-kutuphanesi', 'Etikete, denme', 'deneme,anahtar', 'deneme acıklama', '<h3>1914 tarihli H. Rackham &Ccedil;evirisi</h3>\r\n<p>\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p>\r\n<h3>M.&Ouml;. 45 tarihinde &Ccedil;i&ccedil;ero tarafından yazılan \"de Finibus Bonorum et Malorum\"un 1.10.33 sayılı b&ouml;l&uuml;m&uuml;</h3>\r\n<p>\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\"</p>\r\n<h3>1914 tarihli H. Rackham &Ccedil;evirisi</h3>\r\n<p>\"On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.\"</p>', 'upload/blogicerik/1812145823925206.jpeg', 4, 1, '2024-10-06 03:37:39', '2024-10-06 03:42:10'),
(5, 2, 'NodeJs Kütüphanesi', 'nodejs-kutuphanesi', 'Etikete, denme', 'deneme,anahtar', 'deneme acıklama', '<h3>1914 tarihli H. Rackham &Ccedil;evirisi</h3>\r\n<p>\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p>\r\n<h3>M.&Ouml;. 45 tarihinde &Ccedil;i&ccedil;ero tarafından yazılan \"de Finibus Bonorum et Malorum\"un 1.10.33 sayılı b&ouml;l&uuml;m&uuml;</h3>\r\n<p>\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\"</p>\r\n<h3>1914 tarihli H. Rackham &Ccedil;evirisi</h3>\r\n<p>\"On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.\"</p>', 'upload/blogicerik/1812145809342404.jpeg', 5, 1, '2024-10-06 03:38:15', '2024-10-06 03:41:56'),
(6, 1, 'Php Kütüphanesi', 'php-kutuphanesi', 'Etikete, denme', 'deneme,anahtar', 'deneme acıklama', '<h3>1914 tarihli H. Rackham &Ccedil;evirisi</h3>\r\n<p>\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p>\r\n<h3>M.&Ouml;. 45 tarihinde &Ccedil;i&ccedil;ero tarafından yazılan \"de Finibus Bonorum et Malorum\"un 1.10.33 sayılı b&ouml;l&uuml;m&uuml;</h3>\r\n<p>\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\"</p>\r\n<h3>1914 tarihli H. Rackham &Ccedil;evirisi</h3>\r\n<p>\"On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.\"</p>', 'upload/blogicerik/1812145798313914.jpeg', 6, 1, '2024-10-06 03:39:10', '2024-10-06 03:41:45'),
(7, 2, 'React.js kütüphanesi', 'reactjs-kutuphanesi', 'Etikete, denme', 'deneme,anahtar', 'deneme acıklama', '<h3>1914 tarihli H. Rackham &Ccedil;evirisi</h3>\r\n<p>\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p>\r\n<h3>M.&Ouml;. 45 tarihinde &Ccedil;i&ccedil;ero tarafından yazılan \"de Finibus Bonorum et Malorum\"un 1.10.33 sayılı b&ouml;l&uuml;m&uuml;</h3>\r\n<p>\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\"</p>\r\n<h3>1914 tarihli H. Rackham &Ccedil;evirisi</h3>\r\n<p>\"On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.\"</p>', 'upload/blogicerik/1812145907689720.png', 7, 1, '2024-10-06 03:43:29', NULL),
(8, 3, 'Python Kütüphanesi', 'python-kutuphanesi', 'Etikete, denme', 'deneme,anahtar', 'deneme acıklama', '<h3>1914 tarihli H. Rackham &Ccedil;evirisi</h3>\r\n<p>\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p>\r\n<h3>M.&Ouml;. 45 tarihinde &Ccedil;i&ccedil;ero tarafından yazılan \"de Finibus Bonorum et Malorum\"un 1.10.33 sayılı b&ouml;l&uuml;m&uuml;</h3>\r\n<p>\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\"</p>\r\n<h3>1914 tarihli H. Rackham &Ccedil;evirisi</h3>\r\n<p>\"On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.\"</p>', 'upload/blogicerik/1812145948769874.png', 8, 1, '2024-10-06 03:44:09', NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `blogkategorilers`
--

CREATE TABLE `blogkategorilers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kategori_adi` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `sirano` int(11) DEFAULT 1,
  `durum` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `blogkategorilers`
--

INSERT INTO `blogkategorilers` (`id`, `kategori_adi`, `url`, `sirano`, `durum`, `created_at`, `updated_at`) VALUES
(1, 'PHP', 'php', 1, 1, '2024-10-06 03:30:34', NULL),
(2, 'JavaScrip', 'javascrip', 2, 1, '2024-10-06 03:30:51', NULL),
(3, 'Csharp', 'csharp', 3, 1, '2024-10-06 03:31:04', NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `cokluresims`
--

CREATE TABLE `cokluresims` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `resim` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `cokluresims`
--

INSERT INTO `cokluresims` (`id`, `resim`, `created_at`, `updated_at`) VALUES
(14, 'upload/coklu/1812378090064151.jpeg', '2024-10-08 17:13:56', NULL),
(17, 'upload/coklu/1812713311875425.jpeg', '2024-10-12 10:02:08', NULL),
(18, 'upload/coklu/1813192633655500.png', '2024-10-12 10:02:08', '2024-10-17 17:00:45'),
(19, 'upload/coklu/1812808139863030.jpg', '2024-10-12 10:02:08', '2024-10-13 11:09:23'),
(26, 'upload/coklu/1812808113375612.jpg', '2024-10-13 11:08:58', NULL),
(27, 'upload/coklu/1812808113464822.png', '2024-10-13 11:08:58', NULL),
(28, 'upload/coklu/1813192624200611.jpg', '2024-10-13 11:08:58', '2024-10-17 17:00:36');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `failed_jobs`
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
-- Tablo için tablo yapısı `footers`
--

CREATE TABLE `footers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `baslikbir` varchar(255) DEFAULT NULL,
  `baslikiki` varchar(255) DEFAULT NULL,
  `baslikuc` varchar(255) DEFAULT NULL,
  `telefon` varchar(255) DEFAULT NULL,
  `metin` text DEFAULT NULL,
  `sehir` varchar(255) DEFAULT NULL,
  `adres` varchar(255) DEFAULT NULL,
  `mail` varchar(255) DEFAULT NULL,
  `sosyal_baslik` varchar(255) DEFAULT NULL,
  `aciklama` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `tiwitter` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `copy_right` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `footers`
--

INSERT INTO `footers` (`id`, `baslikbir`, `baslikiki`, `baslikuc`, `telefon`, `metin`, `sehir`, `adres`, `mail`, `sosyal_baslik`, `aciklama`, `facebook`, `tiwitter`, `linkedin`, `instagram`, `copy_right`, `created_at`, `updated_at`) VALUES
(1, 'Sol Başlık', 'Orta Başlık', 'Sağ Başlık', '0535291283', 'Buraya Metin Yazısı Gelecek', 'Kocaeli', 'Kocaeli Karamürsel 4 temmuz 206.cad aydın evler c blok', 'ottoyazılım@gmail.com', 'Sosyal Başlık', 'https://www.facebook.com/', 'https://www.facebook.com/', 'https://x.com/i/flow/login', 'https://www.linkedin.com/', 'https://www.instagram.com/', 'Copyright @Bu Projenin Tamamı Bahtiyar Sönnez Tarafından Yapılıp Seo Yönetimi Yapılmaktadır...', NULL, '2024-10-19 20:02:27'),
(2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `hakkimizdas`
--

CREATE TABLE `hakkimizdas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `baslik` varchar(255) DEFAULT NULL,
  `kisa_baslik` varchar(255) DEFAULT NULL,
  `kisa_aciklama` text DEFAULT NULL,
  `aciklama` text DEFAULT NULL,
  `resim` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `hakkimizdas`
--

INSERT INTO `hakkimizdas` (`id`, `baslik`, `kisa_baslik`, `kisa_aciklama`, `aciklama`, `resim`, `created_at`, `updated_at`) VALUES
(1, 'Hakkımızda 1', 'Hakkımızda Kısa Başlık Alanı 1', 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\"', '<h3>M.&Ouml;. 45 tarihinde &Ccedil;i&ccedil;ero tarafından yazılan \"de Finibus Bonorum et Malorum\"un 1.10.32 sayılı b&ouml;l&uuml;m&uuml;</h3>\r\n<p>\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"</p>\r\n<h3>1914 tarihli H. Rackham &Ccedil;evirisi</h3>\r\n<p>\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p>\r\n<h3>M.&Ouml;. 45 tarihinde &Ccedil;i&ccedil;ero tarafından yazılan \"de Finibus Bonorum et Malorum\"un 1.10.33 sayılı b&ouml;l&uuml;m&uuml;</h3>\r\n<p>\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\"</p>', 'upload/hakkimizda/1812160074313143.jpeg', NULL, '2024-10-06 14:14:20');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kategorilers`
--

CREATE TABLE `kategorilers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kategori_adi` varchar(255) DEFAULT NULL,
  `kategori_url` varchar(255) DEFAULT NULL,
  `anahtar` varchar(255) DEFAULT NULL,
  `aciklama` varchar(255) DEFAULT NULL,
  `resim` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `kategorilers`
--

INSERT INTO `kategorilers` (`id`, `kategori_adi`, `kategori_url`, `anahtar`, `aciklama`, `resim`, `created_at`, `updated_at`) VALUES
(2, 'Cözümlerimiz', 'cozumlerimiz', 'deneme,cözüm', 'Cözümlerimiz ile hizmetinizdeyiz', 'upload/kategoriler/1812141867933955.jpeg', '2024-10-06 02:39:17', NULL),
(3, 'Calışmalarımız', 'calismalarimiz', 'deneme,calışma', 'Calışmalarımız ile hizmetinizdeyiz', 'upload/kategoriler/1812141910898785.jpeg', '2024-10-06 02:39:58', NULL),
(5, 'Ürünlerimiz', 'urunlerimiz', 'deneme,ürün', 'Ürünlerimiz ile tanışın', 'upload/kategoriler/1812142116414175.jpeg', '2024-10-06 02:43:14', NULL),
(6, 'Teklonoji', 'teklonoji', 'deneme,teklonoji', 'Teklonoji hizmetinizde', 'upload/kategoriler/1812143678712413.jpeg', '2024-10-06 03:08:04', NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `mesajs`
--

CREATE TABLE `mesajs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `adi` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `telefon` varchar(255) DEFAULT NULL,
  `konu` varchar(255) DEFAULT NULL,
  `mesaj` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `mesajs`
--

INSERT INTO `mesajs` (`id`, `adi`, `email`, `telefon`, `konu`, `mesaj`, `created_at`, `updated_at`) VALUES
(5, 'denme', NULL, '12345678910', 'test footer', 'deneme 123', '2024-10-14 15:22:23', '2024-10-14 15:22:23'),
(6, 'denme', NULL, '12345678910', 'deneme konusu', 'scascas', '2024-10-14 15:23:09', '2024-10-14 15:23:09'),
(7, 'Gamze gulcicek', NULL, '12345678910', 'deneme konusu', 'Bu site ici deneme', '2024-11-01 14:49:22', '2024-11-01 14:49:22');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_09_15_112456_create_banners_table', 1),
(6, '2024_09_15_193036_create_kategorilers_table', 1),
(7, '2024_09_17_183723_create_altkategorilers_table', 1),
(8, '2024_09_19_194256_create_urunlers_table', 1),
(9, '2024_09_29_113111_create_blogkategorilers_table', 1),
(10, '2024_09_29_145823_create_blogiceriks_table', 1),
(11, '2024_10_06_092946_create_hakkimizdas_table', 2),
(12, '2024_10_08_191316_create_cokluresims_table', 3),
(13, '2024_10_12_132807_create_mesajs_table', 4),
(14, '2024_10_14_182531_create_surecs_table', 5),
(15, '2024_10_17_181325_create_yorumlars_table', 6),
(16, '2024_10_19_142553_create_footers_table', 7),
(17, '2024_10_22_185125_create_seos_table', 8),
(18, '2024_10_27_115819_create_permission_tables', 9);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(3, 'App\\Models\\User', 1),
(4, 'App\\Models\\User', 4),
(6, 'App\\Models\\User', 7);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `grup_adi` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `grup_adi`, `created_at`, `updated_at`) VALUES
(1, 'Banner.menu', 'web', 'banner', '2024-10-27 11:35:37', '2024-10-27 11:35:37'),
(3, 'Banner.düzenle', 'web', 'banner', '2024-10-27 11:38:42', '2024-10-28 09:15:38'),
(4, 'Hakkımızda.menu', 'web', 'hakkimizda', '2024-10-27 11:39:03', '2024-10-27 11:39:03'),
(5, 'Hakkımızda.duzenle', 'web', 'hakkimizda', '2024-10-27 11:39:38', '2024-10-27 11:39:38'),
(6, 'Hakkımızda.Coklu.liste', 'web', 'hakkimizda', '2024-10-27 11:44:32', '2024-10-27 11:44:32'),
(7, 'Hakkımızda.Coklu.Ekle', 'web', 'hakkimizda', '2024-10-27 11:44:54', '2024-10-27 11:44:54'),
(8, 'Hakkımızda.Coklu.Düzenle', 'web', 'hakkimizda', '2024-10-27 11:46:09', '2024-10-27 11:46:09'),
(9, 'Hakkımızda.Coklu.Sil', 'web', 'hakkimizda', '2024-10-27 11:47:13', '2024-10-27 11:47:13'),
(10, 'Kategori.menu', 'web', 'kategoriler', '2024-10-27 11:47:37', '2024-10-27 11:47:37'),
(11, 'Kategori.Liste', 'web', 'kategoriler', '2024-10-27 11:47:51', '2024-10-27 11:47:51'),
(12, 'Kategori.Düzenle', 'web', 'kategoriler', '2024-10-27 11:48:19', '2024-10-27 11:48:19'),
(17, 'Kategori.Sil', 'web', 'kategoriler', '2024-10-28 09:26:24', '2024-10-28 09:26:24'),
(19, 'Altkategoriler.Menü', 'web', 'altkategoriler', '2024-10-29 05:48:03', '2024-10-29 08:48:02'),
(20, 'Altkategoriler.Ekle', 'web', 'altkategoriler', '2024-10-29 05:48:16', '2024-10-29 08:48:16'),
(21, 'Altkategoriler.Duzunle', 'web', 'altkategoriler', '2024-10-29 05:48:39', '2024-10-29 08:48:39'),
(22, 'Altkategoriler.Sil', 'web', 'altkategoriler', '2024-10-29 05:48:53', '2024-10-29 08:48:53'),
(23, 'Blog.Menü', 'web', 'bloglar', '2024-10-29 05:49:06', '2024-10-29 08:49:06'),
(25, 'Blog.Duzenle', 'web', 'bloglar', '2024-10-29 05:49:35', '2024-10-29 08:49:35'),
(26, 'Footer.Menü', 'web', 'footer', '2024-10-29 05:50:17', '2024-10-29 08:50:17'),
(27, 'Footer.Düzenle', 'web', 'footer', '2024-10-29 05:50:31', '2024-10-29 08:50:31'),
(28, 'Seo.Menü', 'web', 'seo', '2024-10-29 05:50:59', '2024-10-29 08:50:59'),
(29, 'Seo.Düzenle', 'web', 'seo', '2024-10-29 05:51:09', '2024-10-29 08:51:09'),
(30, 'Sürec.Menü', 'web', 'surecler', '2024-10-29 05:51:28', '2024-10-29 08:51:28'),
(31, 'Sürec.Ekle', 'web', 'surecler', '2024-10-29 05:51:58', '2024-10-29 08:51:58'),
(32, 'Sürec.Düzenle', 'web', 'surecler', '2024-10-29 05:52:11', '2024-10-29 08:52:11'),
(33, 'Sürec.Sil', 'web', 'surecler', '2024-10-29 05:52:24', '2024-10-29 08:52:24'),
(34, 'Ürünler.Menü', 'web', 'urunler', '2024-10-29 05:52:46', '2024-10-29 08:52:46'),
(35, 'Ürünler.Ekle', 'web', 'urunler', '2024-10-29 05:53:01', '2024-10-29 08:53:01'),
(36, 'Ürünler.Düzenle', 'web', 'urunler', '2024-10-29 05:53:21', '2024-10-29 08:53:21'),
(37, 'Ürünler.Sil', 'web', 'urunler', '2024-10-29 05:53:41', '2024-10-29 08:53:41'),
(38, 'Blogicerik.Menü', 'web', 'yazilar', '2024-10-29 05:54:43', '2024-10-29 08:54:43'),
(39, 'Blogicerik.Ekle', 'web', 'yazilar', '2024-10-29 05:54:55', '2024-10-29 08:54:55'),
(40, 'Blogicerik.Düzenle', 'web', 'yazilar', '2024-10-29 05:55:09', '2024-10-29 08:55:09'),
(41, 'Blogicerik.Sil', 'web', 'yazilar', '2024-10-29 05:55:23', '2024-10-29 08:55:23'),
(42, 'Yorum.Menü', 'web', 'yorumlar', '2024-10-29 05:55:39', '2024-10-29 08:55:39'),
(43, 'Yorum.Ekle', 'web', 'yorumlar', '2024-10-29 05:55:51', '2024-10-29 08:55:51'),
(44, 'Yorum.Düzenle', 'web', 'yorumlar', '2024-10-29 05:56:07', '2024-10-29 08:56:07'),
(45, 'Yorum.Sil', 'web', 'yorumlar', '2024-10-29 05:56:22', '2024-10-29 08:56:21'),
(46, 'Blog.Ekle', 'web', 'bloglar', '2024-10-29 06:26:03', '2024-10-29 09:26:03'),
(47, 'Blog.Sil', 'web', 'bloglar', '2024-10-29 06:26:15', '2024-10-29 09:26:15'),
(48, 'Kategori.ekle', 'web', 'kategoriler', '2024-11-03 13:31:26', '2024-11-03 16:31:25'),
(49, 'Altkategoriler.Liste', 'web', 'altkategoriler', '2024-11-03 13:32:07', '2024-11-03 16:32:07'),
(50, 'Ürün.Liste', 'web', 'urunler', '2024-11-03 13:32:37', '2024-11-03 16:32:37'),
(51, 'Blog.Liste', 'web', 'bloglar', '2024-11-03 13:33:17', '2024-11-03 16:33:17'),
(52, 'Blogicerik.Liste', 'web', 'yazilar', '2024-11-03 13:34:11', '2024-11-03 16:34:11'),
(53, 'Sürec.Liste', 'web', 'surecler', '2024-11-03 13:35:45', '2024-11-03 16:35:45'),
(54, 'Yorum.Liste', 'web', 'yorumlar', '2024-11-03 13:36:23', '2024-11-03 16:36:23'),
(62, 'Kullanici.Menü', 'web', 'kullanicilar', '2024-11-03 14:21:05', '2024-11-03 17:21:05'),
(63, 'Kullanici.Liste', 'web', 'kullanicilar', '2024-11-03 14:21:22', '2024-11-03 17:21:22'),
(64, 'RolIzin.Menü', 'web', 'rolizin', '2024-11-03 14:22:16', '2024-11-03 17:22:16'),
(65, 'RolIzin.izin', 'web', 'rolizin', '2024-11-03 14:22:34', '2024-11-03 17:22:34'),
(66, 'RolIzin.rol', 'web', 'rolizin', '2024-11-03 14:22:48', '2024-11-03 17:22:47'),
(67, 'RolYetki.Ver', 'web', 'yetkiler', '2024-11-03 14:23:09', '2024-11-03 17:23:09'),
(68, 'RolYetki.Liste', 'web', 'yetkiler', '2024-11-03 14:23:24', '2024-11-03 17:23:24'),
(69, 'Kullanici.ekle', 'web', 'kullanicilar', '2024-11-03 14:29:24', '2024-11-03 17:29:24'),
(70, 'Kullanici.düzenle', 'web', 'kullanicilar', '2024-11-03 14:29:39', '2024-11-03 17:29:39'),
(71, 'Kullanici.sil', 'web', 'kullanicilar', '2024-11-03 14:29:53', '2024-11-03 17:29:53'),
(72, 'RolYetki.Düzenle', 'web', 'yetkiler', '2024-11-06 15:38:04', '2024-11-06 18:38:04'),
(73, 'RolIzin.rol.Ekle', 'web', 'rolizin', '2024-11-06 15:42:45', '2024-11-06 18:42:45'),
(74, 'RolIzin.rol.Düzenle', 'web', 'rolizin', '2024-11-06 15:42:59', '2024-11-06 18:42:59'),
(75, 'RolIzin.izin.Ekle', 'web', 'rolizin', '2024-11-06 15:44:02', '2024-11-06 18:44:02'),
(76, 'RolIzin.izin.Düzenle', 'web', 'rolizin', '2024-11-06 15:44:14', '2024-11-06 18:44:14'),
(77, 'RolYetki.Sil', 'web', 'yetkiler', '2024-11-06 16:43:29', '2024-11-06 19:43:29'),
(78, 'RolIzin.rol.Sil', 'web', 'rolizin', '2024-11-06 16:44:35', '2024-11-06 19:44:35'),
(79, 'RolIzin.izin.Sil', 'web', 'rolizin', '2024-11-06 16:45:01', '2024-11-06 19:45:01');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `personal_access_tokens`
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
-- Tablo için tablo yapısı `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(3, 'Admin', 'web', '2024-10-28 10:14:28', '2024-10-28 13:14:28'),
(4, 'SuperAdmin', 'web', '2024-10-28 10:51:44', '2024-10-28 13:51:44'),
(5, 'CEO', 'web', '2024-10-28 10:51:52', '2024-10-28 13:51:52'),
(6, 'Editör', 'web', '2024-10-28 10:51:59', '2024-10-28 13:51:59');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(3, 3),
(3, 4),
(3, 5),
(4, 3),
(4, 4),
(4, 5),
(4, 6),
(5, 3),
(5, 4),
(5, 5),
(5, 6),
(6, 3),
(6, 4),
(6, 5),
(6, 6),
(7, 3),
(7, 4),
(7, 5),
(7, 6),
(8, 3),
(8, 4),
(8, 5),
(8, 6),
(9, 3),
(9, 4),
(9, 5),
(9, 6),
(10, 3),
(10, 4),
(10, 5),
(11, 3),
(11, 4),
(11, 5),
(12, 3),
(12, 4),
(12, 5),
(17, 3),
(17, 4),
(17, 5),
(19, 3),
(19, 4),
(19, 5),
(20, 3),
(20, 4),
(20, 5),
(21, 3),
(21, 4),
(21, 5),
(22, 3),
(22, 4),
(22, 5),
(23, 3),
(23, 4),
(23, 5),
(25, 3),
(25, 4),
(25, 5),
(26, 3),
(26, 4),
(26, 5),
(26, 6),
(27, 3),
(27, 4),
(27, 5),
(27, 6),
(28, 3),
(28, 4),
(28, 5),
(28, 6),
(29, 3),
(29, 4),
(29, 5),
(30, 3),
(30, 4),
(30, 5),
(31, 3),
(31, 4),
(31, 5),
(32, 3),
(32, 4),
(32, 5),
(33, 3),
(33, 4),
(33, 5),
(34, 3),
(34, 4),
(34, 5),
(35, 3),
(35, 4),
(35, 5),
(36, 3),
(36, 4),
(36, 5),
(37, 3),
(37, 4),
(37, 5),
(38, 3),
(38, 4),
(38, 5),
(39, 3),
(39, 4),
(39, 5),
(40, 3),
(40, 4),
(40, 5),
(41, 3),
(41, 4),
(41, 5),
(42, 3),
(42, 4),
(43, 3),
(43, 4),
(44, 3),
(44, 4),
(45, 3),
(45, 4),
(46, 3),
(46, 4),
(46, 5),
(47, 3),
(47, 4),
(47, 5),
(48, 3),
(48, 4),
(48, 5),
(49, 3),
(49, 4),
(49, 5),
(50, 3),
(50, 4),
(50, 5),
(51, 3),
(51, 4),
(51, 5),
(52, 3),
(52, 4),
(52, 5),
(53, 3),
(53, 4),
(53, 5),
(54, 3),
(54, 4),
(62, 4),
(63, 4),
(64, 4),
(65, 4),
(66, 4),
(67, 4),
(68, 4),
(69, 4),
(70, 4),
(71, 4),
(72, 4),
(73, 4),
(74, 4),
(75, 4),
(76, 4);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `seos`
--

CREATE TABLE `seos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `site_adi` varchar(255) DEFAULT NULL,
  `aciklama` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `harita` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `seos`
--

INSERT INTO `seos` (`id`, `title`, `site_adi`, `aciklama`, `keywords`, `author`, `logo`, `harita`, `created_at`, `updated_at`) VALUES
(1, 'Web Geliştirici Yazılım Egitimi', 'Otto Yazılım', 'Php, Laravel , C#, DotNet Core, React Js, CSS, Bootstrap  Artık hizmetinizde', 'Php, Laravel , C#, DotNet Core, React Js, CSS, Bootstrap', 'Bahtiyar Sönmez', 'upload/seo/1814996177273359.jpg', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d24203.877003430705!2d29.57131344876323!3d40.68532321247881!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14cb1826765283a1%3A0xe3dafa5220f1ea52!2sKaram%C3%BCrsel%2C%20Kocaeli!5e0!3m2!1str!2str!4v1729956850424!5m2!1str!2str\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade', '2024-11-06 17:47:19', '2024-11-06 14:47:19');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `surecs`
--

CREATE TABLE `surecs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `surec` varchar(255) DEFAULT NULL,
  `baslik` varchar(255) DEFAULT NULL,
  `aciklama` varchar(255) DEFAULT NULL,
  `durum` tinyint(1) NOT NULL DEFAULT 0,
  `sirano` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `surecs`
--

INSERT INTO `surecs` (`id`, `surec`, `baslik`, `aciklama`, `durum`, `sirano`, `created_at`, `updated_at`) VALUES
(2, 'Adım 1', 'Keşfetmek', '<p>Buraya isteye baglı bilgi aktarımı gelecek...</p>', 1, 3, '2024-10-16 15:29:37', '2024-10-17 17:48:10'),
(3, 'Adım 2', 'Tanımlamak', '<p>Buraya isteye baglı bilgi aktarımı gelecek...</p>', 1, 4, '2024-10-17 17:48:44', NULL),
(4, 'Adım 3', 'Gelişmek', '<p>Buraya isteye baglı bilgi aktarımı gelecek...</p>', 1, 2, '2024-10-17 17:49:13', NULL),
(5, 'Adım 4', 'Teslim Etmek', '<p>Buraya isteye baglı bilgi aktarımı gelecek...</p>', 1, 1, '2024-10-17 17:49:41', '2024-10-17 15:09:14');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `urunlers`
--

CREATE TABLE `urunlers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `altkategori_id` int(11) NOT NULL,
  `baslik` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  `anahtar` varchar(255) DEFAULT NULL,
  `aciklama` varchar(255) DEFAULT NULL,
  `metin` text DEFAULT NULL,
  `resim` varchar(255) DEFAULT NULL,
  `sirano` int(11) NOT NULL DEFAULT 1,
  `durum` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `urunlers`
--

INSERT INTO `urunlers` (`id`, `kategori_id`, `altkategori_id`, `baslik`, `url`, `tag`, `anahtar`, `aciklama`, `metin`, `resim`, `sirano`, `durum`, `created_at`, `updated_at`) VALUES
(1, 5, 5, 'Ürün 1', 'urun-1', 'Etikete, denme', 'deneme,anahtar', 'deneme acıklama', '<h3>1914 tarihli H. Rackham &Ccedil;evirisi</h3>\r\n<p>\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p>\r\n<h3>M.&Ouml;. 45 tarihinde &Ccedil;i&ccedil;ero tarafından yazılan \"de Finibus Bonorum et Malorum\"un 1.10.33 sayılı b&ouml;l&uuml;m&uuml;</h3>\r\n<p>\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\"</p>\r\n<h3>1914 tarihli H. Rackham &Ccedil;evirisi</h3>\r\n<p>\"On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.\"</p>', 'upload/urunler/1812144278835690.png', 1, 1, '2024-10-06 03:17:36', NULL),
(2, 5, 7, 'Ürün 2', 'urun-2', 'Etikete, denme', 'deneme,anahtar', 'deneme acıklama', '<h3>1914 tarihli H. Rackham &Ccedil;evirisi</h3>\r\n<p>\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p>\r\n<h3>M.&Ouml;. 45 tarihinde &Ccedil;i&ccedil;ero tarafından yazılan \"de Finibus Bonorum et Malorum\"un 1.10.33 sayılı b&ouml;l&uuml;m&uuml;</h3>\r\n<p>\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\"</p>\r\n<h3>1914 tarihli H. Rackham &Ccedil;evirisi</h3>\r\n<p>\"On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.\"</p>', 'upload/urunler/1812144311131474.png', 2, 1, '2024-10-06 03:18:07', NULL),
(3, 5, 7, 'Ürün 3', 'urun-3', 'Etikete, denme', 'deneme,anahtar', 'deneme acıklama', '<h3>1914 tarihli H. Rackham &Ccedil;evirisi</h3>\r\n<p>\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p>\r\n<h3>M.&Ouml;. 45 tarihinde &Ccedil;i&ccedil;ero tarafından yazılan \"de Finibus Bonorum et Malorum\"un 1.10.33 sayılı b&ouml;l&uuml;m&uuml;</h3>\r\n<p>\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\"</p>\r\n<h3>1914 tarihli H. Rackham &Ccedil;evirisi</h3>\r\n<p>\"On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.\"</p>', 'upload/urunler/1812144348152155.jpeg', 3, 1, '2024-10-06 03:18:42', NULL),
(4, 3, 2, 'Ürün 4', 'urun-4', 'Etikete, denme', 'deneme,anahtar', 'deneme acıklama', '<h3>1914 tarihli H. Rackham &Ccedil;evirisi</h3>\r\n<p>\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p>\r\n<h3>M.&Ouml;. 45 tarihinde &Ccedil;i&ccedil;ero tarafından yazılan \"de Finibus Bonorum et Malorum\"un 1.10.33 sayılı b&ouml;l&uuml;m&uuml;</h3>\r\n<p>\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\"</p>\r\n<h3>1914 tarihli H. Rackham &Ccedil;evirisi</h3>\r\n<p>\"On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.\"</p>', 'upload/urunler/1812144391267638.jpeg', 4, 1, '2024-10-06 03:19:23', NULL),
(5, 3, 1, 'Ürün 5', 'urun-5', 'Etikete, denme', 'deneme,anahtar', 'deneme acıklama', '<h3>1914 tarihli H. Rackham &Ccedil;evirisi</h3>\r\n<p>\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p>\r\n<h3>M.&Ouml;. 45 tarihinde &Ccedil;i&ccedil;ero tarafından yazılan \"de Finibus Bonorum et Malorum\"un 1.10.33 sayılı b&ouml;l&uuml;m&uuml;</h3>\r\n<p>\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\"</p>\r\n<h3>1914 tarihli H. Rackham &Ccedil;evirisi</h3>\r\n<p>\"On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.\"</p>', 'upload/urunler/1812144419733901.jpeg', 5, 1, '2024-10-06 03:19:50', NULL),
(6, 3, 3, 'Ürün 6', 'urun-6', 'Etikete, denme', 'deneme,anahtar', 'deneme acıklama', '<h3>1914 tarihli H. Rackham &Ccedil;evirisi</h3>\r\n<p>\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p>\r\n<h3>M.&Ouml;. 45 tarihinde &Ccedil;i&ccedil;ero tarafından yazılan \"de Finibus Bonorum et Malorum\"un 1.10.33 sayılı b&ouml;l&uuml;m&uuml;</h3>\r\n<p>\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\"</p>\r\n<h3>1914 tarihli H. Rackham &Ccedil;evirisi</h3>\r\n<p>\"On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.\"</p>', 'upload/urunler/1812144475986228.jpeg', 6, 1, '2024-10-06 03:20:44', NULL),
(7, 2, 6, 'ürün 7', 'urun-7', 'Etikete, denme', 'deneme,anahtar', 'deneme acıklama', '<h3>1914 tarihli H. Rackham &Ccedil;evirisi</h3>\r\n<p>\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p>\r\n<h3>M.&Ouml;. 45 tarihinde &Ccedil;i&ccedil;ero tarafından yazılan \"de Finibus Bonorum et Malorum\"un 1.10.33 sayılı b&ouml;l&uuml;m&uuml;</h3>\r\n<p>\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\"</p>\r\n<h3>1914 tarihli H. Rackham &Ccedil;evirisi</h3>\r\n<p>\"On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.\"</p>', 'upload/urunler/1812144514993499.jpeg', 7, 1, '2024-10-06 03:21:21', '2024-10-06 03:21:42'),
(8, 2, 8, 'Ürün 8', 'urun-8', 'Etikete, denme', 'deneme,anahtar', 'deneme acıklama', '<h3>1914 tarihli H. Rackham &Ccedil;evirisi</h3>\r\n<p>\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p>\r\n<h3>M.&Ouml;. 45 tarihinde &Ccedil;i&ccedil;ero tarafından yazılan \"de Finibus Bonorum et Malorum\"un 1.10.33 sayılı b&ouml;l&uuml;m&uuml;</h3>\r\n<p>\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\"</p>\r\n<h3>1914 tarihli H. Rackham &Ccedil;evirisi</h3>\r\n<p>\"On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.\"</p>', 'upload/urunler/1812144601451782.jpeg', 8, 1, '2024-10-06 03:22:44', NULL),
(9, 6, 10, 'Ürün 9', 'urun-9', 'Etikete, denme', 'deneme,anahtar', 'deneme acıklama', '<h3>1914 tarihli H. Rackham &Ccedil;evirisi</h3>\r\n<p>\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p>\r\n<h3>M.&Ouml;. 45 tarihinde &Ccedil;i&ccedil;ero tarafından yazılan \"de Finibus Bonorum et Malorum\"un 1.10.33 sayılı b&ouml;l&uuml;m&uuml;</h3>\r\n<p>\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\"</p>\r\n<h3>1914 tarihli H. Rackham &Ccedil;evirisi</h3>\r\n<p>\"On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.\"</p>', 'upload/urunler/1812144831542927.jpeg', 9, 1, '2024-10-06 03:26:23', NULL),
(10, 6, 9, 'Ürün 10', 'urun-10', 'Etikete, denme', 'deneme,anahtar', 'deneme acıklama', '<h3>1914 tarihli H. Rackham &Ccedil;evirisi</h3>\r\n<p>\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p>\r\n<h3>M.&Ouml;. 45 tarihinde &Ccedil;i&ccedil;ero tarafından yazılan \"de Finibus Bonorum et Malorum\"un 1.10.33 sayılı b&ouml;l&uuml;m&uuml;</h3>\r\n<p>\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\"</p>\r\n<h3>1914 tarihli H. Rackham &Ccedil;evirisi</h3>\r\n<p>\"On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.\"</p>', 'upload/urunler/1812144872789959.jpeg', 10, 1, '2024-10-06 03:27:02', NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `resim` varchar(255) DEFAULT NULL,
  `rol` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `telefon` varchar(25) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `resim`, `rol`, `email_verified_at`, `password`, `username`, `telefon`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Bahtiyar', 'bahtiyarsonmez41@gmail.com', '202410060644bahti.jpg', 'admin', '2024-10-05 15:43:36', '$2y$10$x2WyB9WSft1kfWWz7xfbLe80oBJkZnusbzb9LEYAzANuOsH5FKXfu', 'Bahtiyar Sönmez', '1234567890', NULL, '2024-10-05 15:40:49', '2024-10-06 03:44:58'),
(4, 'Gamze', 'gamzegulcicek@gmail.com', '202411030953gamze.jpg', 'admin', '2024-11-03 06:51:44', '$2y$10$gnP3mx0JicBB/jkmsr3Jb.rSzqM/NzqUvY7D9T/CTNahONQhEJ8cK', 'Gamze Gülciçek', '12345678900', NULL, '2024-11-03 06:06:54', '2024-11-03 07:35:53'),
(7, 'Bilal', 'bilaltunca@gmail.com', '202411061924bilal-tunca.png', 'admin', '2024-11-06 15:56:05', '$2y$10$IJPP.zSIhUFErwVK3JW1VOPf45rbIc/qyHejX/ueEeNoQ40GGyM1u', 'Bilal Tunca', NULL, NULL, '2024-11-06 15:55:20', '2024-11-06 16:24:37'),
(8, 'test adım', 'test@gmail.com', NULL, NULL, '2024-11-06 17:02:57', '$2y$10$g6PsynlEwZfGLL/WziCi3.wR5J/EIkE5d2KFPaitPSuzUnXBLIvgG', 'test name', '123456789100', NULL, '2024-11-06 17:02:00', '2024-11-06 17:02:57');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yorumlars`
--

CREATE TABLE `yorumlars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `adi` varchar(255) DEFAULT NULL,
  `metin` text DEFAULT NULL,
  `sirano` int(11) DEFAULT 1,
  `durum` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `yorumlars`
--

INSERT INTO `yorumlars` (`id`, `adi`, `metin`, `sirano`, `durum`, `created_at`, `updated_at`) VALUES
(1, 'Gamze Gülciçek', 'Bu firmayla çalışmak gerçekten harika bir deneyimdi. SEO ve web sitesi hizmetlerinde oldukça profesyonel ve kaliteli bir yaklaşım sergiliyorlar. İşe başladıkları andan itibaren her adımı titizlikle yürüttüler ve sonuçlar gerçekten etkileyici. Web sitemin görünürlüğü hızla arttı ve aldığım geri dönüşler gözle görülür şekilde yükseldi. Eğer SEO ve web tasarım alanında güvenilir bir ortak arıyorsanız, kesinlikle tavsiye ederim.', 2, 1, '2024-10-17 19:06:24', '2024-10-19 11:09:11'),
(4, 'Bahtiyar Sönmez', 'Bu firmayla çalışmak gerçekten harika bir deneyimdi. SEO ve web sitesi hizmetlerinde oldukça profesyonel ve kaliteli bir yaklaşım sergiliyorlar. İşe başladıkları andan itibaren her adımı titizlikle yürüttüler ve sonuçlar gerçekten etkileyici. Web sitemin görünürlüğü hızla arttı ve aldığım geri dönüşler gözle görülür şekilde yükseldi. Eğer SEO ve web tasarım alanında güvenilir bir ortak arıyorsanız, kesinlikle tavsiye ederim.', 1, 1, '2024-10-17 19:32:19', '2024-10-17 20:08:13'),
(5, 'Talut Sönmez', 'Bu firmayla çalışmak gerçekten harika bir deneyimdi. SEO ve web sitesi hizmetlerinde oldukça profesyonel ve kaliteli bir yaklaşım sergiliyorlar. İşe başladıkları andan itibaren her adımı titizlikle yürüttüler ve sonuçlar gerçekten etkileyici. Web sitemin görünürlüğü hızla arttı ve aldığım geri dönüşler gözle görülür şekilde yükseldi. Eğer SEO ve web tasarım alanında güvenilir bir ortak arıyorsanız, kesinlikle tavsiye ederim.', 3, 1, '2024-10-19 14:07:52', NULL);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `altkategorilers`
--
ALTER TABLE `altkategorilers`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `blogiceriks`
--
ALTER TABLE `blogiceriks`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `blogkategorilers`
--
ALTER TABLE `blogkategorilers`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `cokluresims`
--
ALTER TABLE `cokluresims`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Tablo için indeksler `footers`
--
ALTER TABLE `footers`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `hakkimizdas`
--
ALTER TABLE `hakkimizdas`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `kategorilers`
--
ALTER TABLE `kategorilers`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `mesajs`
--
ALTER TABLE `mesajs`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Tablo için indeksler `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Tablo için indeksler `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Tablo için indeksler `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Tablo için indeksler `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Tablo için indeksler `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Tablo için indeksler `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Tablo için indeksler `seos`
--
ALTER TABLE `seos`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `surecs`
--
ALTER TABLE `surecs`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `urunlers`
--
ALTER TABLE `urunlers`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `telefon` (`telefon`);

--
-- Tablo için indeksler `yorumlars`
--
ALTER TABLE `yorumlars`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `altkategorilers`
--
ALTER TABLE `altkategorilers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Tablo için AUTO_INCREMENT değeri `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `blogiceriks`
--
ALTER TABLE `blogiceriks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Tablo için AUTO_INCREMENT değeri `blogkategorilers`
--
ALTER TABLE `blogkategorilers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `cokluresims`
--
ALTER TABLE `cokluresims`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Tablo için AUTO_INCREMENT değeri `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `footers`
--
ALTER TABLE `footers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `hakkimizdas`
--
ALTER TABLE `hakkimizdas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `kategorilers`
--
ALTER TABLE `kategorilers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tablo için AUTO_INCREMENT değeri `mesajs`
--
ALTER TABLE `mesajs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Tablo için AUTO_INCREMENT değeri `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Tablo için AUTO_INCREMENT değeri `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- Tablo için AUTO_INCREMENT değeri `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Tablo için AUTO_INCREMENT değeri `seos`
--
ALTER TABLE `seos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `surecs`
--
ALTER TABLE `surecs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `urunlers`
--
ALTER TABLE `urunlers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Tablo için AUTO_INCREMENT değeri `yorumlars`
--
ALTER TABLE `yorumlars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
