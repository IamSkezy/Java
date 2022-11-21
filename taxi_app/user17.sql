-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Ноя 20 2022 г., 02:02
-- Версия сервера: 10.4.25-MariaDB
-- Версия PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `user17`
--

-- --------------------------------------------------------

--
-- Структура таблицы `clients`
--

CREATE TABLE `clients` (
  `client_id` int(11) NOT NULL,
  `fio` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `client_login` varchar(45) DEFAULT NULL,
  `client_password` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `clients`
--

INSERT INTO `clients` (`client_id`, `fio`, `address`, `birthday`, `client_login`, `client_password`) VALUES
(1, 'Ануфриев Дмитрий Олегович', 'г. Нижний Новгород, ул. Советской армии', '2002-10-22', 'anufriev_d', '123qwerty'),
(2, 'Сироткин Данил Александрович', 'г. Нижний Новгород, ул. Борисова', '2004-02-20', 'sirotkin_d', '123qwerty'),
(3, 'Волков Михаил Александрович', 'г. Нижний Новгород, ул. Батумская', '2003-01-10', 'volkov_m', '123qwerty'),
(4, 'Цветков Илья Викторович', 'г. Нижний Новгород, ул. Киселихина', '2003-08-04', 'tsvetkov_i', '123qwerty'),
(5, 'Надежин Иван Сергеевич', 'г. Нижний Новгород, ул. Студенческая', '2004-10-20', 'nadezhin_i', '123qwerty'),
(6, 'Рыбакова Наталья Сергеевна', 'г. Нижний Новгород, ул. Студенческая', '2003-12-30', 'rybakova_n', '123qwerty'),
(7, 'Ростова Диана Владимировна', 'г. Нижний Новгород, ул. Советская', '2003-07-24', 'rostova_d', '123qwerty'),
(8, 'Сычева Татьяна Демьяновна', 'г. Нижний Новгород, ул. Сормовская', '2003-05-23', 'sycheva_t', '123qwerty'),
(9, 'Варакса Андрей Дмитриевич', 'г. Нижний Новгород, ул. Депутатская', '2003-11-21', 'varaxa_a', '123qwerty'),
(10, 'Ибраев Михаил Романович', 'г. Нижний Новгород, ул. Дзержинская', '2003-10-01', 'ibraev_m', '123qwerty'),
(11, 'Прусаков Михаил Алексеевич', 'г. Нижний Новгород, ул. Сырохватовская', '2003-09-10', 'prusakov', 'qwerty123');

-- --------------------------------------------------------

--
-- Структура таблицы `employee`
--

CREATE TABLE `employee` (
  `employee_id` int(11) NOT NULL,
  `FIO` varchar(45) DEFAULT NULL,
  `post` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `login` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `last_enter` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `employee`
--

INSERT INTO `employee` (`employee_id`, `FIO`, `post`, `address`, `birthday`, `login`, `password`, `last_enter`) VALUES
(1, 'Лерихонов Искандер Курседович', 'Администратор', 'г. Нижний Новгород, ул. Алматовская', '1999-10-10', 'lerihonzxc', 'iskander123', '2022-10-30 00:00:00'),
(2, 'Нестеров Костя Романович', 'Оператор', 'г. Нижний Новгород, ул. Абаканская', '2000-01-02', 'kostya_barmen', 'kostik228', '2022-11-02 00:00:00'),
(3, 'Вантеев Роман Александрович', 'Таксист', 'г. Нижний Новгород, ул. Кантауровская', '2000-01-07', 'vanteev_r', 'romasuper111', '2022-11-01 00:00:00'),
(4, 'Инбосиков Евгений Александрович', 'Таксист', 'г. Нижний Новгород, ул. Кантауровская', '2002-07-09', 'kyk', 'kyk123123', '2022-10-31 00:00:00'),
(5, 'Белоглазов Илья Алексеевич', 'Таксист', 'г. Нижний Новгород, ул. Армейская', '1999-08-17', 'oldin', 'ilyabely12345', '2022-11-03 00:00:00'),
(6, 'Поснов Максим Андреевич', 'Оператор', 'г. Нижний Новгород, ул. Кантауровская', '2003-04-18', 'targtaliya', 'maxposn', '2022-11-19 00:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `date_order` date DEFAULT NULL,
  `time_date` time DEFAULT NULL,
  `client_id` int(11) DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL,
  `state_order` varchar(45) DEFAULT NULL,
  `time_order` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`order_id`, `date_order`, `time_date`, `client_id`, `service_id`, `state_order`, `time_order`) VALUES
(1, '2022-10-31', '20:10:45', 6, 1, 'Завершено', 20),
(2, '2022-11-01', '13:37:46', 8, 1, 'Завершено', 14),
(3, '2022-11-01', '14:30:03', 1, 5, 'Завершено', 32),
(4, '2022-11-01', '17:02:50', 10, 4, 'Завершено', 124),
(5, '2022-11-02', '10:13:49', 2, 2, 'Отменено', 0),
(6, '2022-11-02', '12:10:14', 4, 2, 'Завершено', 34),
(7, '2022-11-02', '15:31:21', 7, 3, 'Завершено', 70),
(8, '2022-11-03', '11:13:55', 5, 1, 'Отменено', 0),
(9, '2022-11-03', '14:37:58', 2, 1, 'Завершено', 26),
(10, '2022-11-03', '19:12:38', 3, 3, 'Завершено', 19),
(11, '2022-11-19', '18:09:43', 2, 3, 'Завершено', 30),
(12, '2022-11-19', '18:13:45', 6, 3, 'Завершено', 20),
(13, '2022-11-19', '18:20:23', 8, 2, 'Отменено', 0),
(14, '2022-11-19', '20:20:20', 1, 2, 'Завершено', 29),
(15, '2022-11-19', '20:27:10', 7, 4, 'Завершено', 27),
(16, '2022-11-19', '23:49:20', 9, 1, 'Завершено', 47),
(17, '2022-11-20', '12:12:12', 4, 4, 'Завершено', 11),
(18, '2022-11-20', '03:46:46', 2, 5, NULL, NULL),
(19, '2022-11-20', '03:59:40', 2, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `service`
--

CREATE TABLE `service` (
  `service_id` int(11) NOT NULL,
  `title` varchar(45) DEFAULT NULL,
  `price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `service`
--

INSERT INTO `service` (`service_id`, `title`, `price`) VALUES
(1, 'Поездка внутри города', 30),
(2, 'Поездка за город', 35),
(3, 'Поездка с включением нескольких точек внутри ', 35),
(4, 'Поездка с включением нескольких точек за горо', 40),
(5, 'Доставка малого груза (< 10 кг.)', 25);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`client_id`);

--
-- Индексы таблицы `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employee_id`);

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Индексы таблицы `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`service_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
