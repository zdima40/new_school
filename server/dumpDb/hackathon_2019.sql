-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3307
-- Время создания: Июн 23 2019 г., 14:05
-- Версия сервера: 8.0.15
-- Версия PHP: 7.1.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `hackathon_2019`
--

-- --------------------------------------------------------

--
-- Структура таблицы `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `text` text,
  `universities_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `rating`
--

CREATE TABLE `rating` (
  `id` int(11) NOT NULL,
  `score` varchar(255) DEFAULT NULL,
  `universities_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `rating`
--

INSERT INTO `rating` (`id`, `score`, `universities_id`) VALUES
(1, '1', 5),
(2, '1', 4),
(3, '1', 5),
(4, '2', 5),
(5, '2', 4),
(6, '2', 5),
(7, '3', 3),
(8, '3', 4),
(9, '4', 3),
(10, '4', 4),
(11, '4', 5),
(12, '5', 4),
(13, '5', 4),
(14, '5', 4),
(15, '6', 4),
(16, '7', 3),
(17, '7', 4),
(18, '7', 4),
(19, '8', 2),
(20, '8', 5),
(21, '8', 5),
(22, '9', 4),
(23, '9', 4),
(24, '9', 4),
(25, '10', 3),
(26, '10', 4),
(27, '10', 4),
(28, '11', 3),
(29, '11', 4),
(30, '11', 3),
(31, '12', 5),
(32, '12', 3),
(33, '13', 5),
(34, '14', 4),
(35, '14', 4),
(36, '14', 4),
(37, '15', 3),
(38, '15', 5),
(39, '16', 3),
(40, '16', 3),
(41, '16', 4),
(42, '17', 5),
(43, '17', 4);

-- --------------------------------------------------------

--
-- Структура таблицы `specialty`
--

CREATE TABLE `specialty` (
  `id` int(11) NOT NULL,
  `directions` varchar(100) DEFAULT NULL,
  `faculty` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `tags` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `specialty`
--

INSERT INTO `specialty` (`id`, `directions`, `faculty`, `name`, `tags`) VALUES
(1, 'Гуманитарные', 'Факульет психологии ', 'Клиническая психология', 'психология психиатрия медицина тесты'),
(2, 'Гуманитарные', 'Философский факультет', 'Религиоведение', 'Бог религия храм церковный хор'),
(3, 'Гуманитарные', 'Исторический факультет', 'История международных отношений', 'Заграница европа политика история'),
(4, 'Гуманитарные', 'Факультет педагогического образования', 'Преподаватель английского языка', 'иностранный язык школа обучение '),
(5, 'Гуманитарные', 'Факультет журналистики', 'Журналистика', 'интервью звёзды писатель тексты'),
(6, 'Естественные', 'Географический факультет', 'Гидрометеорология', 'погода природа '),
(7, 'Естественные', 'Биологическийфакультет', 'Биология', 'животные биология насекомые котики'),
(8, 'Естественные', 'Геологический факультет', 'Нефтегазовое дело', 'деньги нефть природные ресурсы '),
(9, 'Естественные', 'Факульет почвоведения', 'Почвоведение', 'Земледелие Почва Земля'),
(10, 'Точные', 'Факультет информатики', 'Фундаментальная информатика и информационные технологии', 'Информатика будущее технологии интернет'),
(11, 'Точные', 'Факультет математики', 'Фундаментальные математика и механика', 'Математика Числа '),
(12, 'Точные', 'Физический факультет', 'Физика', 'физика науки'),
(13, 'Точные', 'Химический факультет', 'Фундаментальная и прикладная химия', 'Химия интересно химикаты опыты'),
(14, 'Технические', 'Биотехнологический факультет', 'Промышленная микробиология и биотехнология', 'Микробы технологии биология'),
(15, 'Технические', 'Факультет электротехники', 'Робототехники', 'Роботы будущее технологии'),
(16, 'Технические', 'Факультет архитектуры', 'Архитектура', 'Проектирование Архитектор Здания Город'),
(17, 'Технические', 'Факультет информатики', 'Программная инженерия', 'программы инженерия информатика'),
(18, 'Технические', 'Факультет машиностроения', 'Машиностроительные технологии', 'Машины Конструирование технологии'),
(19, 'Творческие', 'Культуры и искусства', 'Вокальное искусство', 'Пение Эстрада Концерты'),
(20, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `study_form`
--

CREATE TABLE `study_form` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `specialty_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `study_form`
--

INSERT INTO `study_form` (`id`, `name`, `specialty_id`) VALUES
(1, 'очная', 1),
(2, 'очная', 2),
(3, 'очно-заочная', 2),
(4, 'очная', 3),
(5, 'очная', 4),
(6, 'очная', 5),
(7, 'очно-заочная', 5),
(8, 'очная', 6),
(9, 'заочная', 6),
(10, 'очная', 7),
(11, 'очная', 8),
(12, 'заочная', 9),
(13, 'очная', 10),
(14, 'очная', 11),
(15, 'очно-заочная', 11),
(16, 'очная', 12),
(17, 'очная', 13),
(18, 'очная', 14),
(19, 'очная', 15),
(20, 'очная', 16),
(21, 'очно-заочная', 16),
(22, 'заочная', 16),
(23, 'очная', 17),
(24, 'очная', 18),
(25, 'очно-заочная', 19);

-- --------------------------------------------------------

--
-- Структура таблицы `universities`
--

CREATE TABLE `universities` (
  `id` int(11) NOT NULL,
  `short_name` varchar(255) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `description` text,
  `city` varchar(100) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `contacts` varchar(255) DEFAULT NULL,
  `license` tinyint(1) DEFAULT NULL,
  `hostels` tinyint(1) DEFAULT NULL,
  `military` tinyint(1) DEFAULT NULL,
  `site` varchar(100) DEFAULT NULL,
  `score` bigint(19) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `universities`
--

INSERT INTO `universities` (`id`, `short_name`, `full_name`, `description`, `city`, `address`, `contacts`, `license`, `hostels`, `military`, `site`, `score`) VALUES
(1, 'МГУ им.Ломоносова', ' Московский государственный университет имени М.В. Ломоносова', 'Один из старейших и крупнейших классических университетов России, один из центров отечественной науки и культуры, расположенный в Москве.\n\nC 1940 года носит имя Михаила Васильевича Ломоносова. Университет включает в себя 15 научно-исследовательских инстит', 'Москва', '119991, Москва, ГСП-1, Ленинские горы, д. 1, стр. 51, 1-й учебный корпус, 4 этаж, ауд. 434, приемная комиссия.', '8 (495) 939-01-75, (495) 939-23-75, (495) 939-48-0', 0, 0, 0, 'https://www.msu.ru/', 0),
(2, 'СПбГУ', 'Санкт-Петербургский государственный университет', 'Один из старейших, крупнейших и ведущих классических университетов и один из важнейших центров науки, образования и культуры в России.', 'Санкт-Петербург', 'Санкт-Петербург, Университетская набережная 7–9', '\n+7 (812) 36–36–636', 0, 0, 0, 'https://spbu.ru/', 0),
(3, 'ТПУ', 'Национальный исследовательский Томский политехнический университет', 'Старейшее техническое высшее учебное заведение в зауральской части России.', 'Томск', 'Томск, проспект Ленина, 30', '8-800-550-48-23', 0, 0, 0, 'http://tpu.ru/', 0),
(4, 'НИЯУ МИФИ', 'Национальный исследовательский ядерный университет \"МИФИ\"', 'Один из первых двух национальных исследовательских университетов России (наряду с МИСиС), образован 8 апреля 2009 года на базе Московского инженерно-физического института (государственного университета)', 'Москва', 'Москва, Каширское шоссе, 31', '8 (495) 788-56-99\n8 (499) 324-77-77', 0, 0, 0, 'https://mephi.ru/', 0),
(5, 'НГУ', 'Новосибирский национальный исследовательский государственный университет', 'Университет входит в число участников Проекта 5-100 — программы повышения международной конкурентоспособности российских вузов среди ведущих мировых научно-образовательных центров.', 'Новосибирск', 'Новосибирск, микрорайон Академгородок, улица Пирогова, 2', '8 (383) 330-85-90, 363-40-37, ', 0, 0, 0, 'nsu.ru', 1),
(6, '\nКФУ', 'Казанский (Приволжский) федеральный университет', 'Высшее учебное заведение Казани, один из десяти российских федеральных университетов, один из старейших и второй (после Московского) университет России.', 'Казань', 'Республика Татарстан, Казань, Кремлёвская улица, 18', '(843) 233-71-09 ', 0, 0, 0, 'kpfu.ru', 2),
(7, 'ЮФУ ', 'Южный федеральный университет ', 'Федеральный университет России, расположенный в Ростове-на-Дону. Является крупным научно-образовательным центром России', 'Ростов-на-Дону', 'Ростов-на-Дону, Большая Садовая улица, 105/42', '(+7 863) 218-40-00', 0, 0, 0, 'https://sfedu.ru/', 0),
(8, 'УрФУ им. Б. Н. Ельцина', 'Уральский федеральный университет им. Б. Н. Ельцина', 'Участник Проекта 5-100 (Проект повышения конкурентоспособности ведущих российских университетов среди ведущих мировых научно-образовательных центров). С 1 сентября 2017 года Уральский федеральный университет имеет право самостоятельного присуждения учёных', 'Екатеринбург', 'г. Екатеринбург, ул. Мира, д. 19 (620002)', '8-800-100-50-44', 0, 0, 0, 'urfu.ru', 0),
(9, 'НИУ БелГУ', 'Белгородский государственный национальный исследовательский университет', 'В сентябре 1876 года в Белгороде по распоряжению Министерства народного просвещения Российской империи был открыт учительский институт, девятый в России.', 'Белгород', 'г. Белгород, Студенческая улица, д. 14, корп. 1 ', '(4722) 30-12-21, 30-12-18', 0, 0, 0, 'bsu.edu.ru', 0),
(10, 'ДВФУ', 'Дальневосточный федеральный университет', 'Федеральный университет во Владивостоке, основанный в 2011 году в результате объединения четырёх вузов, ДВГУ, ТГЭУ, ДВГТУ (все три — Владивосток) и УГПИ (Уссурийск). Ведёт свою историю от Восточного института — первого высшего учебного заведения на Дальне', 'Владивосток', 'Приморский край, Владивосток, улица Суханова, 8', '8 (800) 550 38 38', 0, 0, 0, 'dvfu.ru', 0),
(11, '\nЮУрГУ', 'Южно-Уральский государственный университет ', 'Одно из крупнейших образовательных учреждений России и самое крупное в Челябинской области. В начале 2000-х годов был самым большим по числу студентов вузом России', 'Челябинск', 'Челябинск, проспект Ленина, 76', '8 (351) 267-99-00', 0, 0, 0, 'https://www.susu.ru/', 0),
(12, '\nВГУ', 'Воронежский государственный университет', 'классический университет в России, в городе Воронеже. Является одним из крупнейших высших учебных заведений России и одним из ведущих центров отечественной науки и культуры', 'Воронеж', 'Воронеж, Университетская площадь, 1', '8 (800) 100-83-61', 0, 0, 0, 'vsu.ru', 0),
(13, 'УГНТУ', 'Уфимский государственный нефтяной технический университет', 'Технический университет в городе Уфе. Один из региональных опорных университетов.', 'Уфа', 'Республика Башкортостан, Уфа, улица Космонавтов, 1', '(347) 242-03-70', 0, 0, 0, 'http://ugntu.ru/', 0),
(14, 'СНИУ', 'Самарский национальный исследовательский университет имени академика С.П. Королева', ' Российский образовательный и исследовательский центр в сфере аэрокосмических технологий. Один из ведущих российских университетов', 'Самара', 'г. Самара, Московское ш., д. 34', '8 (846) 267-49-99', 0, 0, 0, 'ssau.ru', 0),
(15, 'НИУ МИЭТ', 'Национальный исследовательский университет \"МИЭТ\" ', 'Российский технический университет в области электроники, информационных и компьютерных технологий, один из 29 национальных исследовательских университетов. Основан в 1965 году', 'Зеленоград', 'г. Москва, г. Зеленоград, площадь Шокина, дом 1', ' 8-800-600-56-89, (499) 734-02-42.', 0, 0, 0, 'miet.ru', 0),
(16, '\nКГИК', 'Краснодарский государственный институт культуры', 'Краснодарский государственный институт культуры был создан по решению правительства СССР от ноября 1966 года (постановление Совета Министров СССР от 05.11.1966 г. № 863)', 'Краснодар', 'Краснодар, улица 40 лет Победы, 33', '8 (800) 100-43-37', 0, 0, 0, 'kgik1966.ru', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `universities_specialty`
--

CREATE TABLE `universities_specialty` (
  `universities_id` int(11) NOT NULL,
  `specialty_id` int(11) NOT NULL,
  `budget_places` tinyint(1) DEFAULT NULL,
  `passing_score` int(3) UNSIGNED DEFAULT NULL,
  `entrance_tests` varchar(255) DEFAULT NULL,
  `training_period` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `universities_specialty`
--

INSERT INTO `universities_specialty` (`universities_id`, `specialty_id`, `budget_places`, `passing_score`, `entrance_tests`, `training_period`) VALUES
(1, 1, 30, 200, 'биология, русский язык, математика', 5),
(1, 6, 12, 225, 'Русский язык, География, Математика', 4),
(1, 13, 20, 230, 'Русский язык, обществознание, химия', 5),
(2, 2, 15, 190, 'Русский язык, обществознание, история отечества.', 3),
(2, 7, 3, 185, 'Русский язык, Биология, Математика', 4),
(2, 14, 4, 205, 'Математика, Биология, Информатика', 4),
(3, 10, 14, 210, 'Математика, русский язык, информатика', 3),
(3, 11, 14, 212, 'Математика, русский язык, обществознание', 4),
(3, 17, 16, 190, 'Математика, Русский язык, Информатика', 4),
(4, 12, 20, 198, 'математика, русский язык, физика', 4),
(4, 13, 6, 202, 'Русский язык, обществознание, химия', 5),
(4, 15, 7, 189, 'математика, русский язык, информатика', 5),
(5, 3, NULL, 170, 'История, Английский, Русский', 4),
(5, 6, NULL, 205, 'Русский язык, География, Математика', 5),
(5, 7, 5, 210, 'Русский язык, Биология, Математика', 4),
(6, 5, 30, 200, 'Русский язык, английский язык, литература', 5),
(6, 9, 24, 195, 'Русский, Биология, Обществознание', 4),
(6, 16, 13, 194, 'Математика, Русский язык, рисунок, физика', 5),
(7, 4, 8, 204, 'Русский язык, Английский язык, обществознание', 5),
(7, 6, 9, 200, 'Русский язык, География, Математика', 4),
(7, 13, 8, 189, 'Русский язык, обществознание, химия', 4),
(8, 3, 10, 210, 'История, Английский, Русский', 3),
(8, 8, 8, 212, 'Математика, русский язык, информатика, химия', 4),
(8, 12, 2, 197, 'математика, русский язык, физика', 5),
(9, 5, 3, 205, 'Русский язык, английский язык, литература', 5),
(9, 9, 5, 200, 'Русский, Биология, Обществознание', 3),
(9, 14, 10, 178, 'Математика, Биология, Информатика', 5),
(10, 4, 15, 194, 'Русский язык, Английский язык, обществознание', 5),
(10, 10, 6, 190, 'Математика, русский язык, информатика', 5),
(10, 11, 4, 203, 'Математика, русский язык, обществознание', 5),
(11, 6, 22, 150, 'Русский язык, География, Математика', 3),
(11, 7, 25, 200, 'Русский язык, Биология, Математика', 5),
(11, 12, 21, 206, 'математика, русский язык, физика', 5),
(12, 2, 12, 205, 'Русский язык, обществознание, история отечества.', 4),
(12, 8, 14, 200, 'Математика, русский язык, информатика, химия', 4),
(12, 15, 15, 198, 'математика, русский язык, информатика', 3),
(13, 8, 7, 204, 'Математика, русский язык, информатика, химия', 4),
(13, 9, 8, 202, 'Русский, Биология, Обществознание', 4),
(13, 14, 9, 195, 'Математика, Биология, Информатика', 4),
(14, 12, 11, 195, 'математика, русский язык, физика', 4),
(14, 13, 14, 190, 'Русский язык, обществознание, химия', 4),
(14, 18, 16, 180, 'Математика, русский язык, информатика', 5),
(15, 10, 15, 178, 'Математика, русский язык, информатика', 5),
(15, 11, 14, 205, 'Математика, русский язык, обществознание', 3),
(15, 12, 32, 190, 'математика, русский язык, физика', 5),
(16, 19, NULL, 200, 'Русский язык, обществознание, литература, творческий конкурс.', 4);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`,`universities_id`),
  ADD UNIQUE KEY `articles_UNIQUE` (`id`),
  ADD KEY `fk_articles_universities1_idx` (`universities_id`);

--
-- Индексы таблицы `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`,`universities_id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`),
  ADD KEY `fk_rating_universities1_idx` (`universities_id`);

--
-- Индексы таблицы `specialty`
--
ALTER TABLE `specialty`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Индексы таблицы `study_form`
--
ALTER TABLE `study_form`
  ADD PRIMARY KEY (`id`,`specialty_id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`),
  ADD KEY `fk_study_form_specialty1_idx` (`specialty_id`);

--
-- Индексы таблицы `universities`
--
ALTER TABLE `universities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Индексы таблицы `universities_specialty`
--
ALTER TABLE `universities_specialty`
  ADD PRIMARY KEY (`universities_id`,`specialty_id`),
  ADD KEY `fk_universities_has_specialty_specialty1_idx` (`specialty_id`),
  ADD KEY `fk_universities_has_specialty_universities_idx` (`universities_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT для таблицы `specialty`
--
ALTER TABLE `specialty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `study_form`
--
ALTER TABLE `study_form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT для таблицы `universities`
--
ALTER TABLE `universities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `fk_articles_universities1` FOREIGN KEY (`universities_id`) REFERENCES `universities` (`id`);

--
-- Ограничения внешнего ключа таблицы `rating`
--
ALTER TABLE `rating`
  ADD CONSTRAINT `fk_rating_universities1` FOREIGN KEY (`universities_id`) REFERENCES `universities` (`id`);

--
-- Ограничения внешнего ключа таблицы `study_form`
--
ALTER TABLE `study_form`
  ADD CONSTRAINT `fk_study_form_specialty1` FOREIGN KEY (`specialty_id`) REFERENCES `specialty` (`id`);

--
-- Ограничения внешнего ключа таблицы `universities_specialty`
--
ALTER TABLE `universities_specialty`
  ADD CONSTRAINT `fk_universities_has_specialty_specialty1` FOREIGN KEY (`specialty_id`) REFERENCES `specialty` (`id`),
  ADD CONSTRAINT `fk_universities_has_specialty_universities` FOREIGN KEY (`universities_id`) REFERENCES `universities` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
