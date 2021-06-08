-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost
-- 生成日時: 2021 年 6 月 08 日 02:05
-- サーバのバージョン： 10.4.19-MariaDB
-- PHP のバージョン: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `gsacf_l05_05`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `item_table`
--

CREATE TABLE `item_table` (
  `id` int(12) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `material` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `production_date` date NOT NULL,
  `production_age` int(12) NOT NULL,
  `value` int(12) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `item_table`
--

INSERT INTO `item_table` (`id`, `image`, `title`, `description`, `material`, `production_date`, `production_age`, `value`, `created_at`, `updated_at`) VALUES
(3, 'マグネット.png', 'いちご', 'シール貼りがとくいになってきたのでいちごをつくった。先生ときょうさく', 'シール', '2020-05-11', 1, 50000, '2021-06-04 08:17:35', '2021-06-06 09:20:33'),
(4, 'あ.png', 'おとうさん', 'はじめての父の日につくったおとうさんのかお\r\nよろこんでいた', '絵の具', '2020-06-19', 1, 50000, '2021-06-04 08:19:05', '2021-06-08 00:07:27'),
(5, 'てんとうむし.png', 'てんとうむし', 'はじめて作った本格的図工。おりがみとシールでてんとう虫', '折り紙・紙皿', '2021-04-15', 1, 8000, '2021-06-04 08:20:45', '2021-06-04 08:20:45'),
(6, 'つみき.png', 'でんしゃ', 'でんしゃがすき', 'つみき', '2021-06-01', 2, 10000, '2021-06-04 08:22:11', '2021-06-04 08:22:11'),
(7, 'ぐるぐる.png', 'ぐるぐる', 'ぐるぐるかいた', 'クレヨン', '2020-05-29', 1, 300, '2021-06-04 08:23:01', '2021-06-04 08:23:01'),
(8, 'ようふく.png', 'ようふく', 'シール貼りたのしい', '四角シール', '2020-08-10', 1, 500, '2021-06-04 08:24:12', '2021-06-04 08:24:12'),
(9, 'かえる.png', 'かえる', '笑ってるかえる', 'ビニール', '2020-06-22', 1, 450, '2021-06-04 08:25:33', '2021-06-04 08:25:33'),
(10, 'きょうさく.JPG', 'パパときょうさく', '一緒にかいたはじめての大作', 'クレヨン', '2020-05-04', 1, 3500, '2021-06-04 08:32:37', '2021-06-04 08:32:37'),
(11, 'くりすます.png', 'くりすます', '手形と足形のくりすます', '絵の具', '2020-12-24', 1, 12000, '2021-06-04 08:34:29', '2021-06-04 08:34:29'),
(12, 'あ.png', 'あ', '丸の中にシールで「あ」', 'シール', '2021-04-27', 2, 350, '2021-06-04 08:35:50', '2021-06-04 08:35:50'),
(13, 'おばけ.png', 'おばけ', 'こわいこわいおばけ', 'クレヨン・絵の具', '2021-02-22', 1, 3650, '2021-06-04 08:39:15', '2021-06-04 08:39:15'),
(15, 'マグネット.png', 'マグネット', 'ビーズでつくった', '紙粘土・ビーズ', '2021-06-06', 2, 5000, '2021-06-06 08:57:30', '2021-06-06 08:57:30');

-- --------------------------------------------------------

--
-- テーブルの構造 `todo_table`
--

CREATE TABLE `todo_table` (
  `id` int(12) NOT NULL,
  `todo` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deadline` date NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `todo_table`
--

INSERT INTO `todo_table` (`id`, `todo`, `deadline`, `created_at`, `updated_at`) VALUES
(1, 'SQL練習した', '2021-06-01', '2021-06-01 12:01:09', '2021-06-05 22:25:06'),
(4, 'メールする', '2021-06-08', '2021-06-01 12:06:29', '2021-06-01 12:06:29'),
(5, '牛乳買う', '2021-06-05', '2021-06-01 12:06:48', '2021-06-01 12:06:48'),
(6, '絵本よむ', '2021-06-03', '2021-06-01 12:07:01', '2021-06-01 12:07:01'),
(8, '卒制企画の壁打ちする', '2021-06-07', '2021-06-01 12:07:41', '2021-06-01 12:07:41'),
(9, '手帳かく', '2021-06-02', '2021-06-01 12:08:06', '2021-06-01 12:08:06'),
(10, '課題する', '2021-06-05', '2021-06-01 12:08:23', '2021-06-01 12:08:23'),
(11, 'あいうえお', '2021-06-01', '2021-06-01 16:20:03', '2021-06-01 16:20:03'),
(12, 'たちつてと', '2021-06-02', '2021-06-01 16:21:55', '2021-06-05 22:25:18'),
(13, 'あいうえお', '2021-06-02', '2021-06-01 16:24:42', '2021-06-01 16:24:42'),
(14, 'あいうえお', '2021-06-02', '2021-06-02 22:19:37', '2021-06-02 22:19:37'),
(15, 'あいうえお', '2021-06-04', '2021-06-04 11:15:48', '2021-06-04 11:15:48');

-- --------------------------------------------------------

--
-- テーブルの構造 `users_table`
--

CREATE TABLE `users_table` (
  `id` int(12) NOT NULL,
  `username` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `passward` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_admin` int(1) NOT NULL,
  `is_deleted` int(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `item_table`
--
ALTER TABLE `item_table`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `todo_table`
--
ALTER TABLE `todo_table`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `users_table`
--
ALTER TABLE `users_table`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `item_table`
--
ALTER TABLE `item_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- テーブルの AUTO_INCREMENT `todo_table`
--
ALTER TABLE `todo_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- テーブルの AUTO_INCREMENT `users_table`
--
ALTER TABLE `users_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
