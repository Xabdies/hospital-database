-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 19 Haz 2021, 13:30:00
-- Sunucu sürümü: 10.4.17-MariaDB
-- PHP Sürümü: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `hastane`
--

DELIMITER $$
--
-- Yordamlar
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `toplam_kayit` (OUT `toplam` INT(11))  SELECT COUNT(*) AS toplam FROM hasta$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `admin`
--

CREATE TABLE `admin` (
  `kulno` int(20) NOT NULL,
  `yetkibilgisi` varchar(250) COLLATE utf8mb4_turkish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `admin`
--

INSERT INTO `admin` (`kulno`, `yetkibilgisi`) VALUES
(11000, 'Sistem üzerinde her türlü işlemi gerçekleştirebilir.'),
(11001, 'Sistem üzerinde her türlü işlemi gerçekleştirebilir.');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `alerji`
--

CREATE TABLE `alerji` (
  `alerji_no` int(11) NOT NULL,
  `nufusno` int(20) NOT NULL,
  `Alerji_Adı` varchar(25) COLLATE utf8mb4_turkish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `alerji`
--

INSERT INTO `alerji` (`alerji_no`, `nufusno`, `Alerji_Adı`) VALUES
(10257, 6, 'Yok'),
(10360, 9, 'Akut Atopik'),
(10548, 7, 'Yok'),
(10578, 1, 'Akut Atopik'),
(10658, 8, 'Akut Atopik'),
(10687, 4, 'Alerjik nezle'),
(10751, 5, 'Alerjik astım'),
(10850, 2, 'Yok'),
(10950, 3, 'Akut Atopik'),
(10966, 10, 'Akut Atopik');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `bashekim`
--

CREATE TABLE `bashekim` (
  `bashekimTc` int(11) NOT NULL,
  `bireyno` int(20) NOT NULL,
  `adi` varchar(20) COLLATE utf8mb4_turkish_ci DEFAULT NULL,
  `soyadi` varchar(20) COLLATE utf8mb4_turkish_ci DEFAULT NULL,
  `poliklinikId` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `bashekim`
--

INSERT INTO `bashekim` (`bashekimTc`, `bireyno`, `adi`, `soyadi`, `poliklinikId`) VALUES
(2115847542, 25, 'Hasan', 'Altın', 1),
(2115847544, 26, 'Alperen', 'Aytek', 2),
(2115847699, 27, 'Berkin', 'Dinçer', 3),
(2115847868, 28, 'Hamit', 'Başaran', 4);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `bireyselbilgiler`
--

CREATE TABLE `bireyselbilgiler` (
  `bireyno` int(20) NOT NULL,
  `nufusno` int(20) NOT NULL,
  `dogumT` date DEFAULT NULL,
  `telefon` int(11) DEFAULT NULL,
  `adi` varchar(20) COLLATE utf8mb4_turkish_ci DEFAULT NULL,
  `soyadi` varchar(20) COLLATE utf8mb4_turkish_ci DEFAULT NULL,
  `adres` varchar(200) COLLATE utf8mb4_turkish_ci DEFAULT NULL,
  `eposta` varchar(50) COLLATE utf8mb4_turkish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `bireyselbilgiler`
--

INSERT INTO `bireyselbilgiler` (`bireyno`, `nufusno`, `dogumT`, `telefon`, `adi`, `soyadi`, `adres`, `eposta`) VALUES
(1, 1, '1999-06-16', 2126660707, 'Ahmet', 'Okur', 'Çiçek mahallesi no:5', 'ahmetokur@gmail.com'),
(2, 2, '1998-09-20', 2124440808, 'Ayse', 'Yılmaz', 'Cumhuriyet Mahallesi no:25', 'ayseyilmaz@gmail.com'),
(3, 3, '2000-09-07', 2128786666, 'Kaan', 'Korkmaz', 'Baysı mahallesi no:6', 'kaanyilmaz@gmail.com'),
(4, 4, '2000-02-15', 2125553443, 'Zeynep', 'Türk', 'Aktaş mahallesi no:7', 'zeynepyilmaz@gmail.com'),
(5, 5, '2001-10-27', 2127874127, 'Ali ', 'Ak', 'Bostancı mahallesi no:10', 'aliak@gmail.com'),
(6, 6, '2010-08-04', 2124549656, 'Elif', 'Yorulmaz', 'Gödene caddesi no:4', 'elifyorulmaz@gmail.com'),
(7, 7, '1996-01-01', 2125513443, 'Halil', 'Yıldız', 'Salur mahallesi no:23', 'halilyildiz@gmail.com'),
(8, 8, '2018-11-07', 2124378558, 'Murat', 'Akın', 'Beşikçi mahallesi no:21', 'muratakin@gmail.com'),
(9, 9, '2004-07-09', 2122452552, 'Mehmet', 'Arslan', 'Belen mahallesi no:15', 'mehmetarslan@gmail.com'),
(10, 10, '2019-07-07', 2123437887, 'Ayberk', 'Elmas', 'İncircik mahallesi no: 18', 'ayberkelmas@gmail.com'),
(11, 11, '1999-07-28', 2126660808, 'Acar', 'Karaman', 'Guzören mahallesi no:8', 'acarkaraman@gmail.com'),
(12, 12, '1998-06-27', 2124230707, 'Aras', 'Koç', 'Belen Mahallesi no:25', 'araskoc@gmail.com'),
(13, 13, '2002-12-15', 2128784556, 'Alican', 'Atik', 'Temel Eğitim mahallesi no:16', 'alicanatik@gmail.com'),
(14, 14, '2003-02-15', 2125553894, 'Nur', 'Atan', 'Karacaören mahallesi no:8', 'nuratan@gmail.com'),
(15, 15, '2000-10-27', 2127874321, 'Baki ', 'Temel', 'Kavaklı mahallesi no:14', 'bakitemel@gmail.com'),
(16, 16, '2010-08-04', 2124549848, 'Aycan', 'Atlı', 'Sarıkavak mahallesi no:15', 'aycanatli@gmail.com'),
(17, 17, '1998-01-15', 2125513587, 'Barış', 'Emek', 'Güneş mahallesi no:26', 'barisemek@gmail.com'),
(18, 18, '2018-12-12', 2124379549, 'Ozan', 'Bakır', 'Aktaş mahallesi no:27', 'ozanbakir@gmail.com'),
(19, 19, '2000-07-10', 2122857813, 'İsmail', 'Berk', 'Karaöz mahallesi no:17', 'ismailberk@gmail.com'),
(20, 20, '2021-09-08', 2123484753, 'Muhammet', 'Çetin', 'Cumhuriyet mahallesi no:34', 'muhammetcetin@gmail.com'),
(21, 21, '1994-09-19', 2126658946, 'Aslı', 'Akyürek', 'Temel Eğitim mahallesi no:6', 'asliakyurek@gmail.com'),
(22, 22, '1987-10-18', 2124487459, 'Meryem', 'Adalar', 'Göksu Mahallesi no:4', 'meryemadalar@gmail.com'),
(23, 23, '1960-03-27', 2125587235, 'Hacer', 'Arıcan', 'Cumhuriyet mahallesi no:1', 'hacerarican@gmail.com'),
(24, 24, '1987-10-08', 2126654552, 'Tuğçe', 'Babalı', 'Narenciye mahallesi no:5', 'tugcebabali@gmail.com'),
(25, 25, '1980-01-08', 2128752534, 'Hasan', 'Altın', 'Sarıcasu mahallesi no:8', 'hasanaltin@gmail.com'),
(26, 26, '1987-09-17', 2127834587, 'Alperen ', 'Aytek', 'Park mahallesi no:11', 'alpaytek@gmail.com'),
(27, 27, '1950-07-18', 2123609656, 'Berkin', 'Dinçer', 'Kasapçayırı caddesi no:9', 'berkindincer@gmail.com'),
(28, 28, '1980-04-23', 2127803443, 'Hamit', 'Başaran', 'Değirmenciler mahallesi no:24', 'hamitbasaran@gmail.com'),
(29, 29, '1985-10-12', 2124315758, 'Selim', 'Altınel', 'Narenciye mahallesi no:7', 'selimaltinel@gmail.com'),
(30, 30, '1994-09-10', 2128995887, 'Uğur', 'Alev', 'Meydan mahallesi no:4', 'uguralev@gmail.com');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `brans`
--

CREATE TABLE `brans` (
  `bransno` int(8) NOT NULL,
  `brans_adi` varchar(20) COLLATE utf8mb4_turkish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `brans`
--

INSERT INTO `brans` (`bransno`, `brans_adi`) VALUES
(1, 'Dahiliye'),
(2, 'Diş'),
(3, 'Üroloji'),
(4, 'KBB'),
(5, 'Göz'),
(6, 'Genel Cerrahi'),
(7, 'Acil'),
(8, 'Cildiye'),
(9, 'Ortopedi'),
(10, 'Kadın Hastalıkları');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `dogumbilgisi`
--

CREATE TABLE `dogumbilgisi` (
  `nufusno` int(20) NOT NULL,
  `tarih` date DEFAULT NULL,
  `yer` varchar(250) COLLATE utf8mb4_turkish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `dogumbilgisi`
--

INSERT INTO `dogumbilgisi` (`nufusno`, `tarih`, `yer`) VALUES
(1, '1999-06-16', 'Yozgat'),
(2, '1998-09-20', 'Antalya'),
(3, '2000-09-07', 'Ankara'),
(4, '2000-02-15', 'İstanbul'),
(5, '2001-10-27', 'Konya'),
(6, '2010-08-04', 'Muğla'),
(7, '1996-01-01', 'İzmir'),
(8, '2018-11-07', 'Denizli'),
(9, '2004-07-09', 'İstanbul'),
(10, '2019-07-07', 'Van'),
(11, '1999-07-28', 'Balıkesir'),
(12, '1998-06-27', 'Diyarbakır'),
(13, '2002-12-15', 'Bolu'),
(14, '2003-02-15', 'Rize'),
(15, '2000-10-27', 'Burdur'),
(16, '2010-08-04', 'Antalya'),
(17, '1998-01-15', 'Hakkari'),
(18, '2018-12-12', 'Artvin'),
(19, '2000-07-10', 'Van'),
(20, '2021-03-09', 'Antalya'),
(21, '1994-09-19', 'İzmir'),
(22, '1987-10-18', 'Antalya'),
(23, '1960-03-27', 'Amasya'),
(24, '1987-10-08', 'Muğla'),
(25, '1980-01-08', 'Bitlis'),
(26, '1987-09-17', 'Bilecik'),
(27, '1950-07-18', 'Manisa'),
(28, '1980-04-23', 'Bursa'),
(29, '1985-10-12', 'Adana'),
(30, '1994-09-10', 'Mersin');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `doktor`
--

CREATE TABLE `doktor` (
  `bransno` int(20) NOT NULL,
  `bireyno` int(20) NOT NULL,
  `doktorTc` int(11) NOT NULL,
  `telefon` int(11) DEFAULT NULL,
  `adi` varchar(20) COLLATE utf8mb4_turkish_ci DEFAULT NULL,
  `soyadi` varchar(20) COLLATE utf8mb4_turkish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `doktor`
--

INSERT INTO `doktor` (`bransno`, `bireyno`, `doktorTc`, `telefon`, `adi`, `soyadi`) VALUES
(1, 11, 2135847542, 2126660808, 'Acar', 'Karaman'),
(2, 12, 2135847544, 2124230707, 'Aras', 'Koç'),
(3, 13, 2135847699, 2128784556, 'Alican', 'Atik'),
(4, 14, 2135847868, 2125553894, 'Nur', 'Atan'),
(5, 15, 2135848870, 2127874321, 'Baki', 'Temel'),
(6, 16, 2136208870, 2124549848, 'Aycan', 'Atlı'),
(7, 17, 2137608870, 2125513587, 'Barış', 'Emek'),
(8, 18, 2138608870, 2124379549, 'Ozan', 'Bakır'),
(9, 19, 2139548870, 2122857813, 'İsmail', 'Berk'),
(10, 20, 2139668870, 2123484753, 'Muhammet', 'Çetin');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `eskiparola`
--

CREATE TABLE `eskiparola` (
  `kulno` int(10) DEFAULT NULL,
  `eskiparola` varchar(250) COLLATE utf8mb4_turkish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `eskiparola`
--

INSERT INTO `eskiparola` (`kulno`, `eskiparola`) VALUES
(10550, '123');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `hasta`
--

CREATE TABLE `hasta` (
  `bireyno` int(20) NOT NULL,
  `HastaTc` int(11) NOT NULL,
  `adi` varchar(20) COLLATE utf8mb4_turkish_ci DEFAULT NULL,
  `soyadi` varchar(20) COLLATE utf8mb4_turkish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `hasta`
--

INSERT INTO `hasta` (`bireyno`, `HastaTc`, `adi`, `soyadi`) VALUES
(1, 1325847542, 'Ahmet', 'Okur'),
(2, 1325847544, 'Ayse', 'Yılmaz'),
(3, 1325847699, 'Kaan', 'Korkmaz'),
(4, 1325847868, 'Zeynep', 'Türk'),
(5, 1325848870, 'Ali ', 'Ak'),
(6, 1326208870, 'Elif', 'Yorulmaz'),
(7, 1327608870, 'Halil', 'Yıldız'),
(8, 1328608870, 'Murat', 'Akın'),
(9, 1329548870, 'Mehmet', 'Arslan'),
(10, 1329668870, 'Ayberk', 'Elmas');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `hastalar`
--

CREATE TABLE `hastalar` (
  `kulno` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `hastalar`
--

INSERT INTO `hastalar` (`kulno`) VALUES
(10550),
(10551),
(10552),
(10553),
(10554),
(10555),
(10556),
(10557),
(10558),
(10559);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `hemsire`
--

CREATE TABLE `hemsire` (
  `bransno` int(20) NOT NULL,
  `HemsireTc` int(11) NOT NULL,
  `bireyno` int(20) NOT NULL,
  `telefon` int(11) DEFAULT NULL,
  `adi` varchar(20) COLLATE utf8mb4_turkish_ci DEFAULT NULL,
  `soyadi` varchar(20) COLLATE utf8mb4_turkish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `hemsire`
--

INSERT INTO `hemsire` (`bransno`, `HemsireTc`, `bireyno`, `telefon`, `adi`, `soyadi`) VALUES
(1, 2125847868, 21, 2126658946, 'Aslı', 'Akyürek'),
(5, 2125848870, 22, 2124487459, 'Meryem', 'Adalar'),
(7, 2129548870, 23, 2125587235, 'Hacer', 'Arıcan'),
(10, 2129668877, 24, 2126654552, 'Tuğçe', 'Babalı');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ilac`
--

CREATE TABLE `ilac` (
  `ilacId` int(20) NOT NULL,
  `alınacak_doz` int(10) NOT NULL,
  `ilac_adı` varchar(20) COLLATE utf8mb4_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `ilac`
--

INSERT INTO `ilac` (`ilacId`, `alınacak_doz`, `ilac_adı`) VALUES
(10457, 1, 'Parol'),
(10547, 7, 'Diclomec'),
(10596, 20, 'Plaquanil'),
(10850, 10, 'Convulex'),
(10854, 5, 'Aferin'),
(10940, 10, 'Fuzo'),
(10950, 2, 'Perebron'),
(10960, 5, 'Calpol'),
(10970, 6, 'Kloroben'),
(10980, 4, 'Vapo');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kangrubu`
--

CREATE TABLE `kangrubu` (
  `nufusno` int(20) NOT NULL,
  `kanno` int(10) NOT NULL,
  `kangrubunun_turu` varchar(100) COLLATE utf8mb4_turkish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `kangrubu`
--

INSERT INTO `kangrubu` (`nufusno`, `kanno`, `kangrubunun_turu`) VALUES
(1, 1, 'A'),
(2, 2, 'B'),
(3, 3, 'A'),
(4, 4, 'B'),
(5, 5, 'A'),
(6, 6, 'A'),
(7, 7, 'B'),
(8, 8, 'A'),
(9, 9, 'A'),
(10, 10, 'B'),
(11, 11, 'A'),
(12, 12, 'B'),
(13, 13, 'B'),
(14, 14, 'A'),
(15, 15, 'B'),
(16, 16, 'B'),
(17, 17, 'B'),
(18, 18, 'A'),
(19, 19, 'A'),
(20, 20, 'A'),
(21, 21, 'A'),
(22, 22, 'B'),
(23, 23, 'A'),
(24, 24, 'B'),
(25, 25, 'A'),
(26, 26, 'B'),
(27, 27, 'B'),
(28, 28, '0'),
(29, 29, 'A'),
(30, 30, 'B');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kayitliadres`
--

CREATE TABLE `kayitliadres` (
  `nufusno` int(20) NOT NULL,
  `mahalle` varchar(100) COLLATE utf8mb4_turkish_ci DEFAULT NULL,
  `ilce` varchar(50) COLLATE utf8mb4_turkish_ci DEFAULT NULL,
  `il` varchar(50) COLLATE utf8mb4_turkish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `kayitliadres`
--

INSERT INTO `kayitliadres` (`nufusno`, `mahalle`, `ilce`, `il`) VALUES
(1, 'Çiçek', 'Bayraklı', 'İzmir'),
(2, 'Cumhuriyet', 'Kumluca', 'Antalya'),
(3, 'Baysı', 'Kumluca', 'Antalya'),
(4, 'Aktaş', 'Kumluca', 'Antalya'),
(5, 'Bostancı', 'Kumluca', 'Antalya'),
(6, 'Cumhuriyet', 'Kumluca', 'Antalya'),
(7, 'Salur', 'Kumluca', 'Antalya'),
(8, 'Beşikçi', 'Kumluca', 'Antalya'),
(9, 'Belen', 'Kumluca', 'Antalya'),
(10, 'İncircik', 'Kumluca', 'Antalya'),
(11, 'Guzören', 'Kumluca', 'Antalya'),
(12, 'Belen', 'Kumluca', 'Antalya'),
(13, 'Temel Eğitim', 'Kumluca', 'Antalya'),
(14, 'Karacaören', 'Kumluca', 'Antalya'),
(15, 'Kavaklı', 'Kumluca', 'Antalya'),
(16, 'Sarıkavak', 'Kumluca', 'Antalya'),
(17, 'Güneş', 'Kepez', 'Antalya'),
(18, 'Aktaş', 'Kumluca', 'Antalya'),
(19, 'Karaöz', 'Kumluca', 'Antalya'),
(20, 'Cumhuriyet', 'Kumluca', 'Antalya'),
(21, 'Temel Eğitim', 'Kumluca', 'Antalya'),
(22, 'Göksu', 'Kepez', 'Antalya'),
(23, 'Cumhuriyet', 'Kumluca', 'Antalya'),
(24, 'Narenciye', 'Kumluca', 'Mahallesi'),
(25, 'Sarıcasu', 'Kumluca', 'Antalya'),
(26, 'Park', 'Germencik', 'Aydın'),
(27, 'Kasapçayırı', 'Kumluca', 'Antalya'),
(28, 'Değirmenciler', 'Kumluca', 'Antalya'),
(29, 'Narenciye', 'Kumluca', 'Antalya'),
(30, 'Meydan', 'Kumluca', 'Antalya');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kullanicilar`
--

CREATE TABLE `kullanicilar` (
  `nufusno` int(20) NOT NULL,
  `kulno` int(20) NOT NULL,
  `parola` varchar(20) COLLATE utf8mb4_turkish_ci DEFAULT NULL,
  `kullaniciadi` varchar(50) COLLATE utf8mb4_turkish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `kullanicilar`
--

INSERT INTO `kullanicilar` (`nufusno`, `kulno`, `parola`, `kullaniciadi`) VALUES
(1, 10550, '186', 'ahmetokur'),
(2, 10551, '456', 'ayseyilmaz'),
(3, 10552, '789', 'kaankorkmaz'),
(4, 10553, '741', 'zeynepturk'),
(5, 10554, '852', 'aliak'),
(6, 10555, '963', 'elifyorulmaz'),
(7, 10556, '321', 'halilyildiz'),
(8, 10557, '654', 'muratakin'),
(9, 10558, '987', 'mehmetarslan'),
(10, 10559, '753', 'ayberkelmas'),
(11, 10660, '951', 'acarkahraman'),
(12, 10661, '148', 'araskoc'),
(13, 10662, '156', 'alicanatik'),
(14, 10663, '189', 'nuratan'),
(15, 10664, '176', 'bakitemel'),
(16, 10665, '138', 'aycanatli'),
(17, 10666, '182', 'barisemek'),
(18, 10667, '129', 'ozanbakir'),
(19, 10668, '137', 'ismailberk'),
(20, 10669, '856', 'muhammetcetin'),
(21, 10770, '853', 'asliakyurek'),
(22, 10771, '359', 'meryemadalar'),
(23, 10772, '181', 'hacerarican'),
(24, 10773, '154', 'tugcebabali'),
(25, 10870, '112', 'hasanaltin'),
(26, 10871, '129', 'alperenaytek'),
(27, 10872, '108', 'berkindincer'),
(28, 10873, '107', 'hamitbasaran'),
(29, 11000, '185', 'selimaltinel'),
(30, 11001, '134', 'uguralev');

--
-- Tetikleyiciler `kullanicilar`
--
DELIMITER $$
CREATE TRIGGER `update_hasta_eski_parola` BEFORE UPDATE ON `kullanicilar` FOR EACH ROW BEGIN
	INSERT INTO eskiparola (kulno, eskiparola) values (OLD.kulno, OLD.parola);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `muayene`
--

CREATE TABLE `muayene` (
  `muayeneId` int(20) NOT NULL,
  `hastaTc` int(20) NOT NULL,
  `doktorTc` int(11) NOT NULL,
  `teshis` varchar(50) COLLATE utf8mb4_turkish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `muayene`
--

INSERT INTO `muayene` (`muayeneId`, `hastaTc`, `doktorTc`, `teshis`) VALUES
(1, 1325847542, 2135847542, 'Tip 1 diyabet başlangıcı tespit edilmiştir.'),
(2, 1325848870, 2135847699, 'Apikal Periodontal Kist tespit edilmiştir.'),
(3, 1325847544, 2135847544, 'Böbrek taşı olduğu tespit edilmiştir.'),
(4, 1326208870, 2136208870, 'Kulak enfeksiyonu tespit edilmiştir.'),
(5, 1327608870, 2135848870, 'Miyop başlangıcı tespit edilmiştir.'),
(6, 1325847699, 2137608870, 'Guatr başlangıcı tespit edilmiştir.'),
(7, 1329548870, 2139668870, 'Beyin kanaması tespit edilmiştir.'),
(8, 1329668870, 2135847868, 'Egzama başlangıcı tespit edilmiştir.'),
(9, 1328608870, 2138608870, 'Menisküs yırtılması tespit edilmiştir.'),
(10, 1325847868, 2139548870, 'İnfertilite başlangıcı tespit edilmiştir.');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `nufusbilgileri`
--

CREATE TABLE `nufusbilgileri` (
  `bireyno` int(20) NOT NULL,
  `nufusno` int(20) NOT NULL,
  `TCno` int(11) DEFAULT NULL,
  `adi` varchar(20) COLLATE utf8mb4_turkish_ci DEFAULT NULL,
  `anneadi` varchar(20) COLLATE utf8mb4_turkish_ci DEFAULT NULL,
  `babaadi` varchar(20) COLLATE utf8mb4_turkish_ci DEFAULT NULL,
  `cinsiyet` varchar(10) COLLATE utf8mb4_turkish_ci DEFAULT NULL,
  `kanId` int(11) DEFAULT NULL,
  `alerji_no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `nufusbilgileri`
--

INSERT INTO `nufusbilgileri` (`bireyno`, `nufusno`, `TCno`, `adi`, `anneadi`, `babaadi`, `cinsiyet`, `kanId`, `alerji_no`) VALUES
(1, 1, 1325847542, 'Ahmet', 'Fatma', 'Veysel', 'E', 1, 10578),
(2, 2, 1325847544, 'Ayse', 'Sevim', 'Adem', 'K', 2, 10850),
(3, 3, 1325847699, 'Kaan', 'Nazlı', 'Erkan', 'E', 1, 10950),
(4, 4, 1325847868, 'Zeynep', 'Melisa', 'İsmail', 'K', 2, 10687),
(5, 5, 1325848870, 'Ali', 'Şengül', 'Osman', 'E', 1, 10751),
(6, 6, 1326208870, 'Elif', 'Döndü', 'Adem', 'K', 1, 10257),
(7, 7, 1327608870, 'Halil', 'Seher', 'Servet', 'E', 2, 10548),
(8, 8, 1328608870, 'Murat', 'Sevim', 'Süleyman', 'E', 1, 10658),
(9, 9, 1329548870, 'Mehmet', 'Nazik', 'Güneri', 'E', 1, 10360),
(10, 10, 1329668870, 'Ayberk', 'Rukiye', 'Ömer', 'E', 2, 10966),
(11, 11, 2135847542, 'Acar', 'Aliye', 'Nail', 'E', 1, 10567),
(12, 12, 2135847544, 'Aras', 'Gönül', 'Naci', 'E', 2, 10854),
(13, 13, 2135847699, 'Alican', 'Saliha', 'Recep', 'E', 2, 10856),
(14, 14, 2135847868, 'Nur', 'Hacer', 'Erdem', 'K', 1, 11245),
(15, 15, 2135848870, 'Baki', 'Emine', 'İbrahim', 'E', 2, 10658),
(16, 16, 2136208870, 'Aycan', 'Tuğba', 'Ersin', 'K', 2, 10845),
(17, 17, 2137608870, 'Barış', 'Kadriye', 'Serhat', 'E', 2, 10358),
(18, 18, 2138608870, 'Ozan', 'Meral', 'Ertuğrul', 'E', 1, 10985),
(19, 19, 2139548870, 'İsmail', 'Kiraz', 'Emre', 'E', 1, 10543),
(20, 20, 2139668870, 'Muhammet', 'Dilek', 'Mustafa', 'E', 1, 10343),
(21, 21, 2125847868, 'Aslı', 'Şerban', 'İsa', 'K', 1, 10687),
(22, 22, 2125848870, 'Meryem', 'Funda', 'Ali', 'K', 2, 10328),
(23, 23, 2129548870, 'Hacer', 'Özlem', 'Metin', 'K', 1, 10548),
(24, 24, 2129668877, 'Tuğçe', 'Seda', 'Burak', 'K', 2, 10549),
(25, 25, 2125846670, 'Hasan', 'Halime', 'Mert', 'E', 1, 10807),
(26, 26, 2126208870, 'Alperen', 'Gülce', 'Engin', 'E', 2, 10453),
(27, 27, 2127608870, 'Berkin', 'Nuriye', 'Baki', 'E', 2, 10549),
(28, 28, 2128608870, 'Hamit', 'Merve', 'Yavuz', 'E', 3, 10259),
(29, 29, 2129546670, 'Selim', 'Nermin', 'Ali', 'E', 1, 10348),
(30, 30, 2129658870, 'Uğur', 'Sultan', 'İdris', 'E', 2, 10286);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `oda`
--

CREATE TABLE `oda` (
  `odano` int(20) NOT NULL,
  `oda_durumu` varchar(20) COLLATE utf8mb4_turkish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `oda`
--

INSERT INTO `oda` (`odano`, `oda_durumu`) VALUES
(100, 'Müsait '),
(101, '1 yatak boş'),
(102, 'Müsait'),
(103, '1 yatak boş'),
(104, 'Müsait'),
(105, '1 yatak boş'),
(106, 'Müsait'),
(107, 'Müsait'),
(108, '1 yatak boş'),
(109, 'Müsait');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `personel`
--

CREATE TABLE `personel` (
  `kulno` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `personel`
--

INSERT INTO `personel` (`kulno`) VALUES
(10660),
(10661),
(10662),
(10663),
(10664),
(10665),
(10666),
(10667),
(10668),
(10669),
(10770),
(10771),
(10772),
(10773);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `poliklinik`
--

CREATE TABLE `poliklinik` (
  `bashekimTc` int(11) NOT NULL,
  `poliklinikId` int(11) NOT NULL,
  `doktorTc` int(11) NOT NULL,
  `poliklinikadi` varchar(20) COLLATE utf8mb4_turkish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `poliklinik`
--

INSERT INTO `poliklinik` (`bashekimTc`, `poliklinikId`, `doktorTc`, `poliklinikadi`) VALUES
(2115847544, 1, 2135847542, 'Dahiliye Polikliniği'),
(2115847699, 2, 2135847699, 'Diş Polikliniği'),
(2115847868, 3, 2135847544, 'Üroloji Poliklinikle'),
(2115847542, 4, 2136208870, 'KBB Polikliniği');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `randevu`
--

CREATE TABLE `randevu` (
  `randevuId` int(20) NOT NULL,
  `hastaTc` int(20) NOT NULL,
  `doktorTc` int(11) NOT NULL,
  `randevuT` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `randevu`
--

INSERT INTO `randevu` (`randevuId`, `hastaTc`, `doktorTc`, `randevuT`) VALUES
(1, 1325847542, 2135847542, '2021-06-01'),
(2, 1325848870, 2135847699, '2021-06-02'),
(3, 1325847544, 2135847544, '2021-06-03'),
(4, 1326208870, 2136208870, '2021-06-04'),
(5, 1327608870, 2135848870, '2021-06-05'),
(6, 1325847699, 2137608870, '2021-06-05'),
(7, 1329548870, 2139668870, '2021-06-08'),
(8, 1329668870, 2135847868, '2021-06-09'),
(9, 1328608870, 2138608870, '2021-06-10'),
(10, 1325847868, 2139548870, '2021-06-08');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `recete`
--

CREATE TABLE `recete` (
  `receteId` int(20) NOT NULL,
  `hastaTc` int(20) NOT NULL,
  `doktorTc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `recete`
--

INSERT INTO `recete` (`receteId`, `hastaTc`, `doktorTc`) VALUES
(1, 1325847542, 2135847542),
(2, 1325848870, 2135847699),
(3, 1325847544, 2135847544),
(4, 1326208870, 2136208870),
(5, 1327608870, 2135848870),
(6, 1325847699, 2137608870),
(7, 1329548870, 2139668870),
(8, 1329668870, 2135847868),
(9, 1328608870, 2138608870),
(10, 1325847868, 2139548870);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `recete_ilac`
--

CREATE TABLE `recete_ilac` (
  `receteId` int(20) NOT NULL,
  `ilacId` int(20) NOT NULL,
  `receteilacId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `recete_ilac`
--

INSERT INTO `recete_ilac` (`receteId`, `ilacId`, `receteilacId`) VALUES
(1, 10854, 1),
(2, 10850, 2),
(3, 10547, 3),
(4, 10457, 4),
(5, 10596, 5),
(6, 10940, 6),
(7, 10950, 7),
(8, 10960, 8),
(9, 10970, 9),
(10, 10980, 10);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yatis`
--

CREATE TABLE `yatis` (
  `yatisId` int(20) NOT NULL,
  `hastaTc` int(20) NOT NULL,
  `odano` int(11) NOT NULL,
  `yatılacak_gün` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `yatis`
--

INSERT INTO `yatis` (`yatisId`, `hastaTc`, `odano`, `yatılacak_gün`) VALUES
(1, 1325847542, 105, 2),
(2, 1325848870, 101, 3),
(3, 1325847544, 108, 1),
(4, 1326208870, 103, 4),
(5, 1327608870, 107, 2),
(6, 1325847699, 106, 1),
(7, 1329548870, 104, 30),
(8, 1329668870, 102, 1),
(9, 1328608870, 109, 5),
(10, 1325847868, 100, 14);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yoneticiler`
--

CREATE TABLE `yoneticiler` (
  `kulno` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `yoneticiler`
--

INSERT INTO `yoneticiler` (`kulno`) VALUES
(10870),
(10871),
(10872),
(10873);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`kulno`);

--
-- Tablo için indeksler `alerji`
--
ALTER TABLE `alerji`
  ADD PRIMARY KEY (`alerji_no`),
  ADD UNIQUE KEY `nufusno` (`nufusno`);

--
-- Tablo için indeksler `bashekim`
--
ALTER TABLE `bashekim`
  ADD PRIMARY KEY (`bashekimTc`),
  ADD UNIQUE KEY `bireyno` (`bireyno`),
  ADD UNIQUE KEY `poliklinikId` (`poliklinikId`);

--
-- Tablo için indeksler `bireyselbilgiler`
--
ALTER TABLE `bireyselbilgiler`
  ADD PRIMARY KEY (`bireyno`),
  ADD UNIQUE KEY `nufusno` (`nufusno`);

--
-- Tablo için indeksler `brans`
--
ALTER TABLE `brans`
  ADD PRIMARY KEY (`bransno`);

--
-- Tablo için indeksler `dogumbilgisi`
--
ALTER TABLE `dogumbilgisi`
  ADD PRIMARY KEY (`nufusno`);

--
-- Tablo için indeksler `doktor`
--
ALTER TABLE `doktor`
  ADD PRIMARY KEY (`doktorTc`),
  ADD UNIQUE KEY `bransno` (`bransno`),
  ADD UNIQUE KEY `bireyno` (`bireyno`);

--
-- Tablo için indeksler `hasta`
--
ALTER TABLE `hasta`
  ADD PRIMARY KEY (`HastaTc`),
  ADD UNIQUE KEY `bireyno` (`bireyno`);

--
-- Tablo için indeksler `hastalar`
--
ALTER TABLE `hastalar`
  ADD PRIMARY KEY (`kulno`);

--
-- Tablo için indeksler `hemsire`
--
ALTER TABLE `hemsire`
  ADD PRIMARY KEY (`HemsireTc`),
  ADD UNIQUE KEY `bransno` (`bransno`),
  ADD UNIQUE KEY `bireyno` (`bireyno`);

--
-- Tablo için indeksler `ilac`
--
ALTER TABLE `ilac`
  ADD PRIMARY KEY (`ilacId`);

--
-- Tablo için indeksler `kangrubu`
--
ALTER TABLE `kangrubu`
  ADD PRIMARY KEY (`kanno`),
  ADD UNIQUE KEY `nufusno` (`nufusno`);

--
-- Tablo için indeksler `kayitliadres`
--
ALTER TABLE `kayitliadres`
  ADD PRIMARY KEY (`nufusno`);

--
-- Tablo için indeksler `kullanicilar`
--
ALTER TABLE `kullanicilar`
  ADD PRIMARY KEY (`kulno`),
  ADD UNIQUE KEY `nufusno` (`nufusno`);

--
-- Tablo için indeksler `muayene`
--
ALTER TABLE `muayene`
  ADD PRIMARY KEY (`muayeneId`),
  ADD UNIQUE KEY `hastaTc` (`hastaTc`),
  ADD UNIQUE KEY `doktorTc` (`doktorTc`);

--
-- Tablo için indeksler `nufusbilgileri`
--
ALTER TABLE `nufusbilgileri`
  ADD PRIMARY KEY (`nufusno`),
  ADD UNIQUE KEY `bireyno` (`bireyno`),
  ADD UNIQUE KEY `TCno` (`TCno`),
  ADD UNIQUE KEY `indeks_adi` (`adi`);

--
-- Tablo için indeksler `oda`
--
ALTER TABLE `oda`
  ADD PRIMARY KEY (`odano`);

--
-- Tablo için indeksler `personel`
--
ALTER TABLE `personel`
  ADD PRIMARY KEY (`kulno`);

--
-- Tablo için indeksler `poliklinik`
--
ALTER TABLE `poliklinik`
  ADD PRIMARY KEY (`poliklinikId`),
  ADD UNIQUE KEY `bashekimTc` (`bashekimTc`),
  ADD UNIQUE KEY `doktorTc` (`doktorTc`);

--
-- Tablo için indeksler `randevu`
--
ALTER TABLE `randevu`
  ADD PRIMARY KEY (`randevuId`),
  ADD UNIQUE KEY `hastaTc` (`hastaTc`),
  ADD UNIQUE KEY `doktorTc` (`doktorTc`);

--
-- Tablo için indeksler `recete`
--
ALTER TABLE `recete`
  ADD PRIMARY KEY (`receteId`),
  ADD UNIQUE KEY `hastaTc` (`hastaTc`),
  ADD UNIQUE KEY `doktorTc` (`doktorTc`);

--
-- Tablo için indeksler `recete_ilac`
--
ALTER TABLE `recete_ilac`
  ADD PRIMARY KEY (`receteilacId`),
  ADD UNIQUE KEY `receteId` (`receteId`),
  ADD UNIQUE KEY `ilacId` (`ilacId`);

--
-- Tablo için indeksler `yatis`
--
ALTER TABLE `yatis`
  ADD PRIMARY KEY (`yatisId`),
  ADD UNIQUE KEY `hastaTc` (`hastaTc`),
  ADD UNIQUE KEY `odano` (`odano`);

--
-- Tablo için indeksler `yoneticiler`
--
ALTER TABLE `yoneticiler`
  ADD PRIMARY KEY (`kulno`);

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `FK_kullaniciadmin` FOREIGN KEY (`kulno`) REFERENCES `kullanicilar` (`kulno`);

--
-- Tablo kısıtlamaları `alerji`
--
ALTER TABLE `alerji`
  ADD CONSTRAINT `FK_nufusalerji` FOREIGN KEY (`nufusno`) REFERENCES `nufusbilgileri` (`nufusno`);

--
-- Tablo kısıtlamaları `brans`
--
ALTER TABLE `brans`
  ADD CONSTRAINT `brans_ibfk_1` FOREIGN KEY (`bransno`) REFERENCES `doktor` (`bransno`);

--
-- Tablo kısıtlamaları `dogumbilgisi`
--
ALTER TABLE `dogumbilgisi`
  ADD CONSTRAINT `FK_nufusdogumbilgisi` FOREIGN KEY (`nufusno`) REFERENCES `nufusbilgileri` (`nufusno`);

--
-- Tablo kısıtlamaları `hastalar`
--
ALTER TABLE `hastalar`
  ADD CONSTRAINT `FK_kullanicihasta` FOREIGN KEY (`kulno`) REFERENCES `kullanicilar` (`kulno`);

--
-- Tablo kısıtlamaları `hemsire`
--
ALTER TABLE `hemsire`
  ADD CONSTRAINT `hemsire_ibfk_1` FOREIGN KEY (`bransno`) REFERENCES `brans` (`bransno`);

--
-- Tablo kısıtlamaları `kangrubu`
--
ALTER TABLE `kangrubu`
  ADD CONSTRAINT `FK_nufuskan` FOREIGN KEY (`nufusno`) REFERENCES `nufusbilgileri` (`nufusno`);

--
-- Tablo kısıtlamaları `kayitliadres`
--
ALTER TABLE `kayitliadres`
  ADD CONSTRAINT `FK_nufusadres` FOREIGN KEY (`nufusno`) REFERENCES `nufusbilgileri` (`nufusno`);

--
-- Tablo kısıtlamaları `kullanicilar`
--
ALTER TABLE `kullanicilar`
  ADD CONSTRAINT `FK_kullanicilar` FOREIGN KEY (`nufusno`) REFERENCES `nufusbilgileri` (`nufusno`);

--
-- Tablo kısıtlamaları `muayene`
--
ALTER TABLE `muayene`
  ADD CONSTRAINT `FK_muayenedoktor` FOREIGN KEY (`doktorTc`) REFERENCES `doktor` (`doktorTc`),
  ADD CONSTRAINT `FK_muayenehasta` FOREIGN KEY (`hastaTc`) REFERENCES `hasta` (`HastaTc`);

--
-- Tablo kısıtlamaları `nufusbilgileri`
--
ALTER TABLE `nufusbilgileri`
  ADD CONSTRAINT `FK_bireynufusbilgileri` FOREIGN KEY (`nufusno`) REFERENCES `bireyselbilgiler` (`nufusno`);

--
-- Tablo kısıtlamaları `personel`
--
ALTER TABLE `personel`
  ADD CONSTRAINT `FK_kullanicipersonel` FOREIGN KEY (`kulno`) REFERENCES `kullanicilar` (`kulno`);

--
-- Tablo kısıtlamaları `poliklinik`
--
ALTER TABLE `poliklinik`
  ADD CONSTRAINT `FK_bashekimdoktor` FOREIGN KEY (`doktorTc`) REFERENCES `doktor` (`doktorTc`),
  ADD CONSTRAINT `FK_bashekimpoli` FOREIGN KEY (`bashekimTc`) REFERENCES `bashekim` (`bashekimTc`);

--
-- Tablo kısıtlamaları `randevu`
--
ALTER TABLE `randevu`
  ADD CONSTRAINT `FK_randevudoktor` FOREIGN KEY (`doktorTc`) REFERENCES `doktor` (`doktorTc`),
  ADD CONSTRAINT `FK_randevuhasta` FOREIGN KEY (`hastaTc`) REFERENCES `hasta` (`HastaTc`);

--
-- Tablo kısıtlamaları `recete`
--
ALTER TABLE `recete`
  ADD CONSTRAINT `FK_recetedoktor` FOREIGN KEY (`doktorTc`) REFERENCES `doktor` (`doktorTc`),
  ADD CONSTRAINT `FK_recetehasta` FOREIGN KEY (`hastaTc`) REFERENCES `hasta` (`HastaTc`);

--
-- Tablo kısıtlamaları `recete_ilac`
--
ALTER TABLE `recete_ilac`
  ADD CONSTRAINT `FK_receteilac` FOREIGN KEY (`ilacId`) REFERENCES `ilac` (`ilacId`),
  ADD CONSTRAINT `FK_receterec` FOREIGN KEY (`receteId`) REFERENCES `recete` (`receteId`);

--
-- Tablo kısıtlamaları `yatis`
--
ALTER TABLE `yatis`
  ADD CONSTRAINT `FK_yatishasta` FOREIGN KEY (`hastaTc`) REFERENCES `hasta` (`HastaTc`),
  ADD CONSTRAINT `FK_yatisoda` FOREIGN KEY (`odano`) REFERENCES `oda` (`odano`);

--
-- Tablo kısıtlamaları `yoneticiler`
--
ALTER TABLE `yoneticiler`
  ADD CONSTRAINT `FK_kullaniciyonetici` FOREIGN KEY (`kulno`) REFERENCES `kullanicilar` (`kulno`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
