-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 06 Lis 2018, 13:07
-- Wersja serwera: 10.1.36-MariaDB
-- Wersja PHP: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `rss`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `data`
--

CREATE TABLE `data` (
  `id` int(11) NOT NULL,
  `title` varchar(1000) COLLATE utf8_polish_ci NOT NULL,
  `description` varchar(5000) COLLATE utf8_polish_ci NOT NULL,
  `pubdate` datetime NOT NULL,
  `savedate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `data`
--

INSERT INTO `data` (`id`, `title`, `description`, `pubdate`, `savedate`) VALUES
(1, 'KÅ‚opoty Marcina Gortata. Kr&oacute;tki kryzys czy powaÅ¼ny problem?', '&lt;p&gt;&lt;a href=&quot;https://www.rmf24.pl/sport/news-klopoty-marcina-gortata-krotki-kryzys-czy-powazny-problem,nId,2654420&quot;&gt;&lt;img src=&quot;https://i.iplsc.com/klopoty-marcina-gortata-krotki-kryzys-czy-powazny-problem/0007PAQFSMPQLQWF-C459.jpg&quot; alt=&quot;KÅ‚opoty Marcina Gortata. Kr&oacute;tki kryzys czy powaÅ¼ny problem?&quot; align=&quot;left&quot; /&gt;&lt;/a&gt;To jak na razie nie jest dobry sezon dla Marcina Gortata. Nasz jedynak w lidze NBA notowaÅ‚ sÅ‚abe statystyki a w ostatnich dw&oacute;ch spotkaniach Los Angeles Clippers w og&oacute;le nie pojawiÅ‚ siÄ™ na parkiecie. AmerykaÅ„skie media informujÄ… o problemach zdrowotnych Gortata, ale trzeba przyznaÄ‡, Å¼e pozostali centrzy klubu z Los Angeles grajÄ… na razie zdecydowanie lepiej od Polaka.&lt;/p&gt;&lt;br clear=&quot;all&quot; /&gt;', '2018-11-06 11:59:49', '2018-11-06 12:43:35'),
(2, 'Path of Exile zapowiedziane na PlayStation 4', '                &lt;img hspace=&quot;5&quot; src=&quot;//ocdn.eu/pulscms-transforms/1/tl2ktkpTURBXy85OGZiODQ5NWFkZjIzMjFhMzllMzZjZDA5YTM2Mjk4Yy5qcGeSlQMeAM0C2M0BmpMFzQEdzKA&quot; align=&quot;right&quot; /&gt;Nie milknie szum niezadowolenia armii fan&oacute;w Diablo, kt&oacute;rzy zamiast peÅ‚noprawnej, nowej czÄ™Å›ci serii otrzymali zapowiedÅº gry mobilnej. Z tego zamieszania najbardziej skorzysta chyba darmowe Path of Exile, kt&oacute;re zostaÅ‚o oficjalnie zapowiedziane na konsolÄ™ PlayStation 4.    ', '2018-11-06 12:27:57', '2018-11-06 12:43:39'),
(3, 'Nowy Dodge Challenger SRT Hellcat wÅ‚aÅ›ciciel trafiÅ‚ do aresztu za prÄ™dkoÅ›Ä‡', '&lt;img src=http://static.xmoon.pl/i/03/1037_1_org.jpg width=770 /&gt;  &lt;b&gt;Dodge Challenger SRT Hellcat to istna bestia. A jadÄ…c nim trzeba uwaÅ¼aÄ‡ na prÄ™dkoÅ›ciomierz bo od 0-100 km/h przyÅ›piesza w 3,6 sekundy.&lt;/b&gt; &lt;br/&gt;&lt;br/&gt;ZapomniaÅ‚ o tym pewien nowo upieczony wÅ‚aÅ›ciciel tego auta. ChciaÅ‚ pochwaliÄ‡ siÄ™ znajomym co potrafi ten samoch&oacute;d i na drodze osiÄ…gnÄ…Å‚ prÄ™dkoÅ›Ä‡ 243 km/h o wiele za duÅ¼o od dopuszczalnej. ... ', '2017-04-22 07:30:34', '2018-11-06 12:43:43');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `data`
--
ALTER TABLE `data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
