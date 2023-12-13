-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 05, 2023 at 07:58 PM
-- Server version: 8.0.30
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Construction`
--

-- --------------------------------------------------------

--
-- Table structure for table `Builders`
--

CREATE TABLE `Builders` (
  `Builder_id` int NOT NULL,
  `Bulider_name` text NOT NULL,
  `Builder_surname` text NOT NULL,
  `Builder_position` text NOT NULL,
  `Builder_birth` date NOT NULL,
  `Builder_address` text NOT NULL,
  `Builder_phone` text NOT NULL,
  `Builder_mail` text NOT NULL,
  `Builder_experiance` int NOT NULL,
  `Builder_salary` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `Builders`
--

INSERT INTO `Builders` (`Builder_id`, `Bulider_name`, `Builder_surname`, `Builder_position`, `Builder_birth`, `Builder_address`, `Builder_phone`, `Builder_mail`, `Builder_experiance`, `Builder_salary`) VALUES
(1, 'Սոս', 'Հարությունյան', 'Պատշար', '2000-12-21', 'Երևան', '033735533', 'harutyunyan.sos2000@gmail.com', 5, 200000),
(2, 'Գեղամ', 'Գրիգորյան', 'Սանտեխնիկ', '1996-10-20', 'Սիսիան', '043268641', 'gexam.grigoryan@mail.ru', 2, 142000),
(3, 'Սարգիս', 'Մալյան', 'Էլեկտրիկ', '1992-03-18', 'Մեղրի', '045766788', 'sar.mal@mail.com', 10, 315000),
(4, 'Մովսես', 'Մովսիսյան', 'Եռակցող', '1993-03-20', 'Գյումրի', '098322332', 'saqo@gmail.com', 3, 168000),
(5, 'Վարդան', 'Մխիթարյան', 'Ծեփող', '2001-10-09', 'Վանաձոր', '032234567', 'art.lop@rrr.com', 1, 112000),
(6, 'Պողոս', 'Պողոսյան', 'Քարտաշ', '1993-06-20', 'Լոռի', '097654567', 'poghos@pos.as', 7, 200000),
(7, 'Մարգար', 'Մարգարյան', 'Ճարտարապետ', '1983-06-20', 'Սպիտակ', '067890983', 'margar.marg@gmail.com', 15, 450000),
(8, 'Լեռնիկ', 'Գեղամյան', 'Սանտեխնիկ', '1992-03-20', 'Երևան', '012345678', 'lernik@mail.ru', 3, 180000),
(9, 'Մալխաս', 'Մալխասյան', 'Վարորդ', '2001-01-09', 'Երևան', '056890990', 'malkhas.mal@mail.ru', 4, 132000),
(10, 'Սիրակ', 'Սիրեկանյան', 'Բրիգադիր', '2000-02-01', 'Գառնի', '015654576', 'sir.sirak@gmail.ru', 1, 100000);

-- --------------------------------------------------------

--
-- Table structure for table `Finances`
--

CREATE TABLE `Finances` (
  `Operation_id` int NOT NULL,
  `Operation_type` text NOT NULL,
  `Operation_coasts` int NOT NULL,
  `Operation_date` date NOT NULL,
  `Operation_description` text NOT NULL,
  `Operation_method` text NOT NULL,
  `Builder_id` int NOT NULL,
  `Material_id` int NOT NULL,
  `Project_id` int NOT NULL,
  `Operation_note` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `Finances`
--

INSERT INTO `Finances` (`Operation_id`, `Operation_type`, `Operation_coasts`, `Operation_date`, `Operation_description`, `Operation_method`, `Builder_id`, `Material_id`, `Project_id`, `Operation_note`) VALUES
(1, 'Ելք հաշվից', 200000, '2023-10-17', 'Շինանյութի գնում', 'Փոխանցում այլ հաշվի', 1, 3, 1, ''),
(2, 'Ելք հաշվից', 115000, '2023-10-13', 'Շինանյութի գնում', 'Փոխանցում այլ հաշվի', 7, 4, 8, ''),
(3, 'Մուտք հաշվին', 180000, '2023-10-10', 'Վարկի ստացում', 'Վարկի ստացում քարտային հաշվին', 10, 5, 2, ''),
(4, 'Մուտք հաշվին', 110000, '2023-10-04', 'Կանխավճար', 'Փոխանցում բանկային հաշվին', 10, 6, 9, ''),
(5, 'Ելք հաշվից', 310000, '2023-10-30', 'Ներդրումային ֆոնդ', 'Փոխանցում բանկին', 6, 2, 4, ''),
(6, 'Մուտք հաշվին', 210000, '2023-10-14', 'Ավանդի ստացում բանկից', 'Փոխանցում բանկային հաշվին', 9, 3, 3, ''),
(9, 'Ելք հաշվից', 170000, '2023-10-24', 'Շինանյութի գնում', 'Փոխանցում այլ հաշվի', 4, 5, 7, ''),
(10, 'Ելք հաշվից', 30000, '2023-10-08', 'Շինանյութի գնում', 'Փոխանցում բանկային քարտի', 2, 7, 2, ''),
(11, 'Գումարի կանխիկացում', 180000, '2023-10-30', 'Շինանյութի գնում', 'Առևտուր կանխիկ տարբերակով', 5, 8, 9, '');

-- --------------------------------------------------------

--
-- Table structure for table `Materials`
--

CREATE TABLE `Materials` (
  `Material_id` int NOT NULL,
  `Material_name` text NOT NULL,
  `Material_unit` text NOT NULL,
  `Material_count` int NOT NULL,
  `Material_coasts` int NOT NULL,
  `Material_date` date NOT NULL,
  `Material_srok` date NOT NULL,
  `Material_supplier` text NOT NULL,
  `Project_id` int NOT NULL,
  `Material_note` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `Materials`
--

INSERT INTO `Materials` (`Material_id`, `Material_name`, `Material_unit`, `Material_count`, `Material_coasts`, `Material_date`, `Material_srok`, `Material_supplier`, `Project_id`, `Material_note`) VALUES
(1, 'Աղյուսներ', 'հատ', 20000, 180000, '2023-10-15', '2033-02-09', '<<ԱՂՅՈՒՍ>> ՓԲԸ', 1, ''),
(2, 'Փայտ', 'խ․մ', 3000, 80500, '2023-10-30', '2031-12-29', '<<ՎՈՒԴ-ՎՈՒԴ>> ՍՊԸ', 4, 'Տախտակներ'),
(3, 'Ցեմենտ', 'տոննա', 300, 145000, '2023-10-29', '2026-10-20', '<<ՑԵՄԵՆՏ-ԲԵՏՈՆ>> ԲԲԸ', 6, 'Ցեմենտ M400'),
(4, 'Տանիքի ծածկ', 'ք․մ', 1000, 200000, '2023-10-03', '2025-10-29', '<<ՏԱՆԻՔ>> ՍՊԸ', 7, '5մմ․ հաստությամբ'),
(5, 'Էլեկտրական մալուխներ', 'մետր', 10000, 68000, '2023-10-01', '2032-10-15', '<<ԿԱԲԵԼ>> ՍՊԸ', 8, 'Մալուխ 2մմ'),
(6, 'Պատուհանի ապակի', 'ք․մ', 300, 43000, '2023-10-25', '2029-08-19', '<<ԱՊԱԿԻ>> ՓԲԸ', 6, 'Պատոհաններ մետաղապլաստից'),
(7, 'Ներկանյութ', 'լիտր', 180, 113000, '2023-10-05', '2026-10-27', '<<ՆԵՐԿԵՐ>> ՍՊԸ', 1, ''),
(8, 'Հատակի սալիկներ', 'ք․մ', 1200, 43000, '2023-10-14', '2027-07-25', '<<ՍԱԼԻԿ-ՄԱԼԻԿ>> ՓԲԸ', 4, 'Քարե սալիկներ'),
(9, 'Խողովակներ', 'մետր', 453, 114000, '2023-10-28', '2026-10-11', '<<ԱՖՏ>> ՍՊԸ', 6, ''),
(10, 'Պաստառներ', 'ք․մ', 567, 213000, '2023-09-28', '2030-11-02', '<<ՕԼՄ>> ՓԲԸ', 8, 'Լվացվող պաստառներ');

-- --------------------------------------------------------

--
-- Table structure for table `Project`
--

CREATE TABLE `Project` (
  `Project_id` int NOT NULL,
  `Project_name` text NOT NULL,
  `Project_start` date NOT NULL,
  `Project_end` date NOT NULL,
  `Project_sum` int NOT NULL,
  `Project_customer` text NOT NULL,
  `Project_location` text NOT NULL,
  `Project_status` text NOT NULL,
  `Project_percent` int NOT NULL,
  `Project_engineer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `Project`
--

INSERT INTO `Project` (`Project_id`, `Project_name`, `Project_start`, `Project_end`, `Project_sum`, `Project_customer`, `Project_location`, `Project_status`, `Project_percent`, `Project_engineer`) VALUES
(1, 'Տան շինարարություն', '2023-08-01', '2023-11-30', 300000, 'Գառնիկ Ասլանյան', 'Երևան, Նոր-Նորք', 'Կառուցման փուլում', 20, '<<ՇԻՆԱՐԱՐՈՒԹՅՈՒՆ>> ՍՊԸ'),
(2, 'Գրասենյակային շենքի վերակառուցում', '2023-02-02', '2023-09-20', 25000, '<<ԵՐԵՔ ԽՈԶՈՒԿՆԵՐ>> ՍՊԸ', 'Երևան, Կենտրոն', 'Ավարտված', 100, '<<ՇԻՆԱՐԱՐՈՒԹՅՈՒՆ>> ՍՊԸ'),
(3, 'Կամուրջի կառուցում', '2023-11-15', '2024-06-26', 120000, 'Երևանի Քաղաքապետարան', 'Երևան', 'Չսկսված', 0, '<<ՇԻՆԱՐԱՐՈՒԹՅՈՒՆ>> ՍՊԸ'),
(4, 'Այգու տարածքի վերանորոգում', '2023-10-02', '2023-11-30', 40000, 'Ավանի Համայնքապետարան', 'Երևան, Ավան', 'Կառուցման փուլում', 60, '<<ՇԻՆԱՐԱՐՈՒԹՅՈՒՆ>> ՍՊԸ'),
(5, 'Դպրոցի կառուցում', '2020-10-12', '2023-10-30', 650000, '198 ԴՊՐՈՑ', 'ՀՀ, Լոռի', 'Ավարտված', 100, '<<ՇԻՆԱՐԱՐՈՒԹՅՈՒՆ>> ՍՊԸ'),
(6, 'Բնակելի համալիրի վերանորոգում', '2023-11-20', '2024-12-08', 225000, '<<ՆՈՐ ՏՈՒՆ>> ՓԲԸ', 'ՀՀ, Մեղրի', 'Կառուցման փուլում', 5, '<<ՇԻՆԱՐԱՐՈՒԹՅՈՒՆ>> ՍՊԸ'),
(7, 'Պահեստի կառուցում', '2022-08-16', '2025-05-05', 453000, '<<ՊԱՀԵՍՏ>> ՍՊԸ', 'Երևան', 'Կառուցման փուլում', 73, '<<ՇԻՆԱՐԱՐՈՒԹՅՈՒՆ>> ՍՊԸ'),
(8, 'Բնակարանի վերանորոգում', '2023-09-20', '2023-11-24', 14000, 'Լևոն Սարգսյան', 'Սևան', 'Կառուցման փուլում', 80, '<<ՇԻՆԱՐԱՐՈՒԹՅՈՒՆ>> ՍՊԸ'),
(9, 'Առևտրի կենտրոնի կառուցում', '2024-01-02', '2028-07-31', 2000000, '<<ՄՈԼԼ>> ՍՊԸ', 'Երևան', 'Չսկսված', 0, '<<ՇԻՆԱՐԱՐՈՒԹՅՈՒՆ>> ՍՊԸ'),
(10, 'Ճանապարհների վերակառուցում', '2020-06-19', '2023-08-23', 3000000, 'ՀՅՈՒՍԻՍ-ՀԱՐԱՎ', 'ՀՀ', 'Ավարտված', 100, '<<ՇԻՆԱՐԱՐՈՒԹՅՈՒՆ>> ՍՊԸ');

-- --------------------------------------------------------

--
-- Table structure for table `Tasks`
--

CREATE TABLE `Tasks` (
  `Task_id` int NOT NULL,
  `Task_name` text NOT NULL,
  `Task_start` date NOT NULL,
  `Task_end` date NOT NULL,
  `Task_status` text NOT NULL,
  `Task_priority` text NOT NULL,
  `Project_id` int NOT NULL,
  `Builder_id` int NOT NULL,
  `Task_coasts` int NOT NULL,
  `Task_notes` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `Tasks`
--

INSERT INTO `Tasks` (`Task_id`, `Task_name`, `Task_start`, `Task_end`, `Task_status`, `Task_priority`, `Project_id`, `Builder_id`, `Task_coasts`, `Task_notes`) VALUES
(1, 'Շինարարության պլանավորում', '2023-10-31', '2023-11-30', 'Չկատարված', 'Բարձր', 9, 7, 40000, 'Շինության նախագծում'),
(2, 'Շինանյութի գնում', '2023-10-29', '2023-10-29', 'Ավարված', 'Միջին', 4, 9, 10000, 'Քարի գնում'),
(3, 'Պատերի կառուցում', '2023-10-01', '2023-11-29', 'Կատարման փուլում', 'Միջին', 1, 1, 2000, 'Տուֆով պատի կառուցում'),
(4, 'Փորձարկում և որակի ստուգում', '2023-10-30', '2023-10-31', 'Կատարման փուլում', 'Բարձր', 5, 10, 0, 'Ավարտական աշխատանք'),
(5, 'Տանիքի տեղադրում', '2023-10-25', '2023-11-22', 'Կառուցման փուլում', 'Ցածր', 6, 4, 20000, 'Տանիքի մակերեսը 100 ք․մ'),
(6, 'Հոսանքամատակարարում', '2024-01-02', '2024-02-20', 'Չսկսված', 'Բարձր', 9, 3, 8000, 'Եռաֆազ հոսանքի մատակարարում'),
(7, 'Գաջապատում', '2023-10-30', '2024-02-19', 'Կատարման փուլում', 'Ցածր', 6, 5, 23000, ''),
(8, 'Սանտեխնիկա', '2023-10-01', '2023-10-29', 'Ավարված', 'Միջին', 8, 2, 30000, 'Ջրամատակակարում'),
(9, 'Շինարարության պլանավորում', '2023-10-29', '2023-11-08', 'Կատարման փուլում', 'Բարձր', 3, 7, 38000, 'Նոր կամրջի նախագծում'),
(10, 'Շինանյութերի գնում', '2023-10-30', '2023-11-10', 'Կատարման փուլում', 'Բարձր', 3, 9, 100000, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Builders`
--
ALTER TABLE `Builders`
  ADD PRIMARY KEY (`Builder_id`);

--
-- Indexes for table `Finances`
--
ALTER TABLE `Finances`
  ADD PRIMARY KEY (`Operation_id`),
  ADD KEY `Builder_id` (`Builder_id`),
  ADD KEY `Material_id` (`Material_id`),
  ADD KEY `Project_id` (`Project_id`);

--
-- Indexes for table `Materials`
--
ALTER TABLE `Materials`
  ADD PRIMARY KEY (`Material_id`),
  ADD KEY `Project_id` (`Project_id`);

--
-- Indexes for table `Project`
--
ALTER TABLE `Project`
  ADD PRIMARY KEY (`Project_id`);

--
-- Indexes for table `Tasks`
--
ALTER TABLE `Tasks`
  ADD PRIMARY KEY (`Task_id`),
  ADD KEY `Builder_id` (`Builder_id`),
  ADD KEY `Project_id` (`Project_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Builders`
--
ALTER TABLE `Builders`
  MODIFY `Builder_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `Finances`
--
ALTER TABLE `Finances`
  MODIFY `Operation_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `Materials`
--
ALTER TABLE `Materials`
  MODIFY `Material_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `Project`
--
ALTER TABLE `Project`
  MODIFY `Project_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `Tasks`
--
ALTER TABLE `Tasks`
  MODIFY `Task_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Finances`
--
ALTER TABLE `Finances`
  ADD CONSTRAINT `finances_ibfk_1` FOREIGN KEY (`Builder_id`) REFERENCES `Builders` (`Builder_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `finances_ibfk_2` FOREIGN KEY (`Material_id`) REFERENCES `Materials` (`Material_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `finances_ibfk_3` FOREIGN KEY (`Project_id`) REFERENCES `Project` (`Project_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `Materials`
--
ALTER TABLE `Materials`
  ADD CONSTRAINT `materials_ibfk_1` FOREIGN KEY (`Project_id`) REFERENCES `Project` (`Project_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `Tasks`
--
ALTER TABLE `Tasks`
  ADD CONSTRAINT `tasks_ibfk_1` FOREIGN KEY (`Builder_id`) REFERENCES `Builders` (`Builder_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `tasks_ibfk_2` FOREIGN KEY (`Project_id`) REFERENCES `Project` (`Project_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
