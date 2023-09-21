-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:8889
-- Время создания: Июл 02 2023 г., 06:57
-- Версия сервера: 5.7.39
-- Версия PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `WeddingGood`
--

-- --------------------------------------------------------

--
-- Структура таблицы `accessories`
--

CREATE TABLE `accessories` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text,
  `price` decimal(10,2) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `accessories`
--

INSERT INTO `accessories` (`id`, `name`, `description`, `price`, `quantity`) VALUES
(1, 'Сумка', 'Женская сумка из натуральной кожи', '10000.00', 5),
(2, 'Брелок', 'Брелок из кожи в форме сердца', '500.00', 10),
(3, 'Шарф', 'Шарф из шерсти в клетку', '1500.00', 15);

-- --------------------------------------------------------

--
-- Структура таблицы `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `phone`, `email`) VALUES
(1, 'Администратор', '8(800)555-35-35', 'admin@example.com'),
(2, 'Менеджер', '8(495)123-45-67', 'manager@example.com'),
(3, 'Консультант', '8(800)999-99-99', 'consultant@example.com');

-- --------------------------------------------------------

--
-- Структура таблицы `dresses`
--

CREATE TABLE `dresses` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text,
  `price` decimal(10,2) NOT NULL,
  `size` varchar(10) NOT NULL,
  `color` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `dresses`
--

INSERT INTO `dresses` (`id`, `name`, `description`, `price`, `size`, `color`) VALUES
(1, 'Платье', 'Платье вечернее из шелка', '5000.00', 'M', 'Черный'),
(2, 'Юбка', 'Юбка до колен из хлопка', '2000.00', 'S', 'Синий'),
(3, 'Брюки', 'Брюки классические из шерсти', '3000.00', 'L', 'Серый');

-- --------------------------------------------------------

--
-- Структура таблицы `fittings`
--

CREATE TABLE `fittings` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `fitting_date` date NOT NULL,
  `fitting_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `fittings`
--

INSERT INTO `fittings` (`id`, `order_id`, `fitting_date`, `fitting_time`) VALUES
(1, 1, '2021-09-28', '15:00:00'),
(2, 2, '2021-09-29', '16:00:00'),
(3, 3, '2021-09-30', '17:00:00');

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `five`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `five` (
`client_name` varchar(50)
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `four`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `four` (
`fitting_date` date
,`fitting_time` time
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `one`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `one` (
`id` int(11)
,`name` varchar(50)
,`description` text
,`price` decimal(10,2)
,`size` varchar(10)
,`color` varchar(20)
);

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `client_name` varchar(50) NOT NULL,
  `client_phone` varchar(30) NOT NULL,
  `order_date` date NOT NULL,
  `order_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`id`, `client_name`, `client_phone`, `order_date`, `order_time`) VALUES
(1, 'Иванов Иван', '8(999)123-45-67', '2021-10-01', '10:00:00'),
(2, 'Петров Петр', '8(911)987-65-43', '2021-10-02', '11:00:00'),
(3, 'Сидоров Сидор', '8(901)123-45-67', '2021-10-03', '12:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text,
  `price` decimal(10,2) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `quantity`) VALUES
(1, 'Шампунь', 'Шампунь для нормальных волос', '150.00', 50),
(2, 'Кондиционер', 'Кондиционер для сухих волос', '200.00', 30),
(3, 'Лак для ногтей', 'Лак для ногтей красного цвета', '100.00', 20);

-- --------------------------------------------------------

--
-- Структура таблицы `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `services`
--

INSERT INTO `services` (`id`, `name`, `description`, `price`) VALUES
(1, 'Стрижка', 'Стрижка волос с помощью ножниц', '200.00'),
(2, 'Окрашивание', 'Окрашивание волос в темный цвет', '500.00'),
(3, 'Маникюр', 'Классический маникюр без покрытия', '300.00');

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `six`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `six` (
`fitting_date` date
,`fitting_time` time
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `three`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `three` (
`client_name` varchar(50)
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `two`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `two` (
`id` int(11)
,`name` varchar(50)
,`description` text
,`price` decimal(10,2)
);

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `admin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id_user`, `username`, `email`, `password`, `admin`) VALUES
(1, 'dffff', 'da@da.ru', '4297f44b13955235245b2497399d7a93', 1);

-- --------------------------------------------------------

--
-- Структура для представления `five`
--
DROP TABLE IF EXISTS `five`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `five`  AS SELECT `orders`.`client_name` AS `client_name` FROM `orders` WHERE `orders`.`id` in (select `fittings`.`order_id` from `fittings` where (`fittings`.`fitting_date` > curdate()))  ;

-- --------------------------------------------------------

--
-- Структура для представления `four`
--
DROP TABLE IF EXISTS `four`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `four`  AS SELECT `fittings`.`fitting_date` AS `fitting_date`, `fittings`.`fitting_time` AS `fitting_time` FROM `fittings` WHERE (`fittings`.`order_id` = 1)  ;

-- --------------------------------------------------------

--
-- Структура для представления `one`
--
DROP TABLE IF EXISTS `one`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `one`  AS SELECT `dresses`.`id` AS `id`, `dresses`.`name` AS `name`, `dresses`.`description` AS `description`, `dresses`.`price` AS `price`, `dresses`.`size` AS `size`, `dresses`.`color` AS `color` FROM `dresses` WHERE (`dresses`.`name` like '%платье%')  ;

-- --------------------------------------------------------

--
-- Структура для представления `six`
--
DROP TABLE IF EXISTS `six`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `six`  AS SELECT `fittings`.`fitting_date` AS `fitting_date`, `fittings`.`fitting_time` AS `fitting_time` FROM `fittings` WHERE (`fittings`.`order_id` = 1)  ;

-- --------------------------------------------------------

--
-- Структура для представления `three`
--
DROP TABLE IF EXISTS `three`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `three`  AS SELECT `orders`.`client_name` AS `client_name` FROM ((`orders` join `fittings` on((`orders`.`id` = `fittings`.`order_id`))) join `dresses` on((`dresses`.`id` = `fittings`.`id`)))  ;

-- --------------------------------------------------------

--
-- Структура для представления `two`
--
DROP TABLE IF EXISTS `two`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `two`  AS SELECT `services`.`id` AS `id`, `services`.`name` AS `name`, `services`.`description` AS `description`, `services`.`price` AS `price` FROM `services``services`  ;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `accessories`
--
ALTER TABLE `accessories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `dresses`
--
ALTER TABLE `dresses`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `fittings`
--
ALTER TABLE `fittings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`);

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `fittings`
--
ALTER TABLE `fittings`
  ADD CONSTRAINT `fittings_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
