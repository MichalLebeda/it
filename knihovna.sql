-- phpMyAdmin SQL Dump
-- version 5.0.0-dev
-- https://www.phpmyadmin.net/
--
-- Počítač: 192.168.30.22
-- Vytvořeno: Úte 21. kvě 2019, 23:07
-- Verze serveru: 10.1.26-MariaDB-0+deb9u1
-- Verze PHP: 7.2.18-1+0~20190503103213.21+stretch~1.gbp101320

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databáze: `knihovna`
--

-- --------------------------------------------------------

--
-- Struktura tabulky `knihy`
--

CREATE TABLE `knihy` (
  `id` int(11) NOT NULL,
  `nazev` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vypisuji data pro tabulku `knihy`
--

INSERT INTO `knihy` (`id`, `nazev`) VALUES
(1, 'Harry potter'),
(2, 'hra o truny\r\n');

-- --------------------------------------------------------

--
-- Struktura tabulky `studenti`
--

CREATE TABLE `studenti` (
  `id` int(11) NOT NULL,
  `jmeno` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vypisuji data pro tabulku `studenti`
--

INSERT INTO `studenti` (`id`, `jmeno`) VALUES
(1, 'John Doe'),
(2, 'Novák');

-- --------------------------------------------------------

--
-- Struktura tabulky `vypujcky`
--

CREATE TABLE `vypujcky` (
  `id` int(11) NOT NULL,
  `id_studenta` int(11) NOT NULL,
  `id_knihy` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vypisuji data pro tabulku `vypujcky`
--

INSERT INTO `vypujcky` (`id`, `id_studenta`, `id_knihy`) VALUES
(1, 1, 1);

--
-- Klíče pro exportované tabulky
--

--
-- Klíče pro tabulku `knihy`
--
ALTER TABLE `knihy`
  ADD PRIMARY KEY (`id`);

--
-- Klíče pro tabulku `studenti`
--
ALTER TABLE `studenti`
  ADD PRIMARY KEY (`id`);

--
-- Klíče pro tabulku `vypujcky`
--
ALTER TABLE `vypujcky`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pro tabulky
--

--
-- AUTO_INCREMENT pro tabulku `knihy`
--
ALTER TABLE `knihy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pro tabulku `studenti`
--
ALTER TABLE `studenti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pro tabulku `vypujcky`
--
ALTER TABLE `vypujcky`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

