-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Янв 21 2023 г., 07:24
-- Версия сервера: 10.4.27-MariaDB
-- Версия PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `blog`
--

-- --------------------------------------------------------

--
-- Структура таблицы `article`
--

CREATE TABLE `article` (
  `article_id` int(11) NOT NULL,
  `article_title` varchar(100) NOT NULL,
  `article_slug` varchar(50) NOT NULL,
  `article_text` longtext NOT NULL,
  `article_status` int(11) NOT NULL DEFAULT 1,
  `article_view` int(11) NOT NULL,
  `article_type` varchar(50) NOT NULL,
  `article_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `article_updated` timestamp NOT NULL DEFAULT current_timestamp(),
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_title` varchar(100) NOT NULL,
  `category_slug` varchar(100) NOT NULL,
  `category_text` varchar(300) NOT NULL,
  `category_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `category_updated` timestamp NOT NULL DEFAULT current_timestamp(),
  `section_id` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`category_id`, `category_title`, `category_slug`, `category_text`, `category_created`, `category_updated`, `section_id`) VALUES
(1, 'other', 'other', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse', '2023-01-21 04:40:13', '2023-01-21 04:46:31', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `guest`
--

CREATE TABLE `guest` (
  `guest_id` int(11) NOT NULL,
  `guest_ip` varchar(50) NOT NULL,
  `guest_visit` int(11) NOT NULL,
  `guest_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `section`
--

CREATE TABLE `section` (
  `section_id` int(11) NOT NULL,
  `section_title` varchar(50) NOT NULL,
  `section_slug` varchar(50) NOT NULL,
  `section_text` varchar(500) NOT NULL,
  `section_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `section_updated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `section`
--

INSERT INTO `section` (`section_id`, `section_title`, `section_slug`, `section_text`, `section_created`, `section_updated`) VALUES
(1, 'other', 'other', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2023-01-21 04:39:43', '2023-01-21 04:39:43');

-- --------------------------------------------------------

--
-- Структура таблицы `setting`
--

CREATE TABLE `setting` (
  `setting_id` int(11) NOT NULL,
  `setting_description` varchar(100) NOT NULL,
  `setting_key` varchar(100) NOT NULL,
  `setting_value` text NOT NULL,
  `setting_type` varchar(50) NOT NULL,
  `setting_updated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `setting`
--

INSERT INTO `setting` (`setting_id`, `setting_description`, `setting_key`, `setting_value`, `setting_type`, `setting_updated`) VALUES
(3, 'author', 'author', '190101101', 'text', '2022-12-15 19:57:56'),
(4, 'title', 'title', 'Blog', 'text', '2022-12-15 23:02:27'),
(5, 'description', 'description', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur, repellendus.', 'textarea', '2022-12-15 23:03:59'),
(6, 'keyword', 'keyword', '#param1, #param2, #param3, #param4, #param5', 'text', '2022-12-15 20:00:50'),
(7, 'website', 'website', 'https://190101101.github.io/developer/', 'text', '2022-12-15 20:02:28'),
(8, 'github', 'github', 'https://github.com/190101101', 'text', '2022-12-15 20:02:59'),
(15, 'email address', 'email', '190101101@blog.com', 'text', '2022-12-15 20:07:24'),
(16, 'Copyright', 'copyright', 'Copyright © 2022', 'text', '2022-12-15 20:07:24'),
(19, 'reminder title', 'reminder_title', 'reminder', 'text', '2023-01-21 05:56:10'),
(20, 'reminder', 'reminder', 'You can put anything you want inside of these side widgets. They are easy to use, and feature the new Bootstrap 4 card containers!', 'text', '2022-12-15 20:07:24');

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_login` varchar(50) NOT NULL,
  `user_password` varchar(50) NOT NULL,
  `user_status` int(11) NOT NULL DEFAULT 1,
  `user_level` int(11) NOT NULL DEFAULT 1,
  `user_gender` varchar(50) NOT NULL,
  `user_ip` varchar(100) NOT NULL,
  `last_updated` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_updated` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`user_id`, `user_email`, `user_login`, `user_password`, `user_status`, `user_level`, `user_gender`, `user_ip`, `last_updated`, `user_updated`, `user_created`) VALUES
(1, 'apsi@mail.ru', 'apsi', '111', 1, 99, 'male', '127.0.0.1', '2022-12-20 22:11:37', '2023-01-21 06:08:01', '2022-12-20 22:11:37');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`article_id`),
  ADD KEY `article_title` (`article_title`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `article_slug` (`article_slug`);

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`),
  ADD KEY `category_title` (`category_title`),
  ADD KEY `category_slug` (`category_slug`),
  ADD KEY `section_id` (`section_id`);

--
-- Индексы таблицы `guest`
--
ALTER TABLE `guest`
  ADD PRIMARY KEY (`guest_id`),
  ADD KEY `guest_ip` (`guest_ip`),
  ADD KEY `guest_visit` (`guest_visit`);

--
-- Индексы таблицы `section`
--
ALTER TABLE `section`
  ADD PRIMARY KEY (`section_id`),
  ADD KEY `section_title` (`section_title`),
  ADD KEY `section_slug` (`section_slug`);

--
-- Индексы таблицы `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`setting_id`),
  ADD KEY `setting_description` (`setting_description`),
  ADD KEY `setting_key` (`setting_key`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `user_email` (`user_email`),
  ADD KEY `user_password` (`user_password`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `article`
--
ALTER TABLE `article`
  MODIFY `article_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `guest`
--
ALTER TABLE `guest`
  MODIFY `guest_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `section`
--
ALTER TABLE `section`
  MODIFY `section_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `setting`
--
ALTER TABLE `setting`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
