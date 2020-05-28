-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 28, 2020 at 11:00 AM
-- Server version: 10.1.40-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spring`
--

-- --------------------------------------------------------

--
-- Table structure for table `map_table`
--

CREATE TABLE `map_table` (
  `mid` int(11) NOT NULL,
  `loc_name` varchar(100) NOT NULL,
  `loc_info` varchar(3000) NOT NULL,
  `lat` float NOT NULL,
  `lng` float NOT NULL,
  `wiki_link` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `map_table`
--

INSERT INTO `map_table` (`mid`, `loc_name`, `loc_info`, `lat`, `lng`, `wiki_link`) VALUES
(1, '葵青區 Kwai Tsing District', '新界面積最小的一區，原本屬於荃灣區，於1985年4月1日從荃灣區中獨立，即現在的葵涌和青衣範圍', 22.3548, 114.126, 'https://zh.wikipedia.org/wiki/%E8%91%B5%E9%9D%92%E5%8D%80'),
(2, '荃灣區 Tsuen Wan District', '荃灣區除了荃灣新市鎮，亦包括油柑頭、汀九、深井、青龍頭、嘉龍村、馬灣島、大窩口部份地區、大嶼山北部的外飛地（例：欣澳、青洲仔半島）及梨木樹等等地方', 22.3715, 114.114, 'https://zh.wikipedia.org/wiki/%E8%8D%83%E7%81%A3%E5%8D%80'),
(3, '屯門區 Tuen Mun District', '新界面積最小的一區，原本屬於荃灣區，於1985年4月1日從荃灣區中獨立，即現在的葵涌和青衣範圍', 22.3908, 113.973, 'https://zh.wikipedia.org/wiki/%E5%B1%AF%E9%96%80%E5%8D%80'),
(4, '元朗區 Yuen Long District', '元朗區是香港唯一「一區兩市」（元朗新市鎮及天水圍新市鎮）的區份，元朗區由廈村鄉（包括洪水橋、白泥、流浮山等地）、屏山鄉（包括元朗市中心西部、橫洲、天水圍、尖鼻咀等地）、十八鄉（包括元朗市中心東部、凹頭、南生圍等地）、錦田鄉、八鄉（包括石崗等地）新田鄉（包括落馬洲、米埔等地）所組成', 22.4445, 114.022, 'https://zh.wikipedia.org/wiki/%E5%85%83%E6%9C%97%E5%8D%80'),
(5, '北區 North District', '傳統上北區分為上水、粉嶺、沙頭角和打鼓嶺四個部分，故獨立成區前亦稱爲上粉沙打地區，此外還包括大鵬灣的吉澳、鴨洲等離島', 22.501, 114.156, 'https://zh.wikipedia.org/wiki/%E5%8C%97%E5%8D%80_(%E9%A6%99%E6%B8%AF)'),
(6, '大埔區 Tai Po District', '大埔區（英語：Tai Po District）是香港十八區的其中一區，位於新界東部，範圍包括大埔、東平洲、大埔滘、汀角、船灣、林村谷，白石角及它的外飛地為赤門海峽兩岸的西貢半島北部（西貢北）', 22.4424, 114.165, 'https://zh.wikipedia.org/wiki/%E5%A4%A7%E5%9F%94%E5%8D%80'),
(7, '沙田區 Sha Tin District', '沙田區本來只是沙田海及城門河兩岸的填海地，包括大圍、火炭、禾輋、石門、小瀝源、圓洲角、九肚山及馬料水等地方。但沙田區今日已擴展至馬鞍山一帶，包括烏溪沙等地方', 22.3869, 114.21, 'https://zh.wikipedia.org/wiki/%E6%B2%99%E7%94%B0%E5%8D%80'),
(8, '西貢區 Sai Kung District', '西貢區於地理上可分為「西貢及西貢鄉郊」和「將軍澳及清水灣半島」兩部份。「西貢及西貢鄉郊」包括西貢市、白沙灣、波羅輋、井欄樹、壁屋、大網仔、北潭涌、蠔涌、萬宜水庫等地。「將軍澳及清水灣半島」包括大埔仔、調景嶺、將軍澳市中心、坑口、寶林、翠林、康盛花園、茅湖仔、清水灣、布袋澳、大赤沙、小赤沙等地', 22.3834, 114.271, 'https://zh.wikipedia.org/wiki/%E8%A5%BF%E8%B2%A2%E5%8D%80'),
(9, '離島區 Islands District', '離島區（英語：Islands District）是香港十八區面積最大的一區，面積佔全香港的16%；主要包括香港南及西南面多個離島，當中包括香港面積最大的島嶼大嶼山的大部分', 22.2677, 113.955, 'https://zh.wikipedia.org/wiki/%E9%9B%A2%E5%B3%B6%E5%8D%80'),
(10, '油尖旺區 Yau Tsim Mong District', '「油尖旺區」由1982年成立的「油尖區」及「旺角區」於1994年合併而成。名字由該區的三個主要區域——油麻地、佐敦 , 尖沙咀和旺角的字首組合而成', 22.3115, 114.17, 'https://zh.wikipedia.org/zh-hk/%E6%B2%B9%E5%B0%96%E6%97%BA%E5%8D%80'),
(11, '深水埗區 Sham Shui Po District', '深水埗區包括深水埗、長沙灣、荔枝角、蘇屋、石硤尾、又一村、大窩坪、昂船洲南部（即昂船洲政府船塢、昂船洲海軍基地、昂船洲污水處理廠等地', 22.3322, 114.147, 'https://zh.wikipedia.org/wiki/%E6%B7%B1%E6%B0%B4%E5%9F%97%E5%8D%80'),
(12, '九龍城區 Kowloon City District', '九龍城區以住宅樓宇為主，包括九龍城、九龍塘、何文田、馬頭圍、馬頭角、啟德、土瓜灣、紅磡、加多利山等地方', 22.3238, 114.186, 'https://zh.wikipedia.org/wiki/%E4%B9%9D%E9%BE%8D%E5%9F%8E%E5%8D%80'),
(13, '黃大仙區 Wong Tai Sin District', '黃大仙區位於九龍半島東面，北方背靠獅子山、大老山及慈雲山，東臨飛鵝山，包括竹園、黃大仙、牛池灣、鑽石山、慈雲山、斧山、樂富、橫頭磡、新蒲崗等地方，因此本區亦成全香港唯一無海岸線的行政區', 22.3572, 114.197, 'https://zh.wikipedia.org/wiki/%E9%BB%83%E5%A4%A7%E4%BB%99%E5%8D%80'),
(14, '觀塘區 Kwun Tong District', '觀塘區包括觀塘市中心、牛頭角、九龍灣、秀茂坪、藍田、油塘、茶果嶺及佐敦谷等地方。', 22.3157, 114.233, 'https://zh.wikipedia.org/wiki/%E8%A7%80%E5%A1%98%E5%8D%80'),
(15, '灣仔區 Wan Chai District', '灣仔區由13個小區組成，包括渣甸山、大坑、天后、維園、銅鑼灣、樂活、跑馬地、鵝頸、愛群、軒尼詩、修頓、大佛口及司徒拔道', 22.2762, 114.183, 'https://zh.wikipedia.org/wiki/%E7%81%A3%E4%BB%94%E5%8D%80'),
(16, '中西區 Central And Western District', '中西區可以細分為中區、西區和半山區三個部份，中區包括金鐘、中環和上環等地，西區包括西環（即西營盤、石塘咀和堅尼地城）和摩星嶺，而半山區則包括太平山和薄扶林北部一帶', 22.2833, 114.15, 'https://zh-yue.wikipedia.org/wiki/%E4%B8%AD%E8%A5%BF%E5%8D%80_(%E9%A6%99%E6%B8%AF)'),
(17, '東區 Eastern District', '東區包括四個法定分區，分別為北角（炮台山北、北角半山）、鰂魚涌（康山、太古城）、筲箕灣（西灣河）及柴灣（杏花邨、小西灣），括號內為分區或地方俗稱', 22.2734, 114.236, 'https://zh.wikipedia.org/wiki/%E6%9D%B1%E5%8D%80_(%E9%A6%99%E6%B8%AF)'),
(18, '南區 Southern District', '南區位於香港島南部，東起大浪灣，西迄薄扶林。當中包括香港仔、鴨脷洲、鋼綫灣、黃竹坑、壽臣山、深水灣、淺水灣、赤柱、舂坎角、大潭及石澳等地', 22.2432, 114.197, 'https://zh.wikipedia.org/wiki/%E5%8D%97%E5%8D%80_(%E9%A6%99%E6%B8%AF)');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `ID` int(11) NOT NULL,
  `firstName` varchar(50) DEFAULT NULL,
  `lastName` varchar(50) DEFAULT NULL,
  `sex` varchar(1) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `email` varchar(250) NOT NULL,
  `section` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `firstAttempt` tinyint(1) DEFAULT NULL,
  `subjects` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `student_table`
--

CREATE TABLE `student_table` (
  `id` int(11) NOT NULL,
  `student_name` varchar(100) NOT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `technology` varchar(100) NOT NULL,
  `city` varchar(100) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(20) DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student_table`
--

INSERT INTO `student_table` (`id`, `student_name`, `gender`, `technology`, `city`, `email`, `password`, `phone`) VALUES
(1, 'abcabc', 'Male', 'Spring', 'Other', 'abc@gmail.com', '123456', 1234567890),
(2, 'aaaaaa', 'Male', 'Hibernate', 'Pune', 'abc@gmail.com', 'aaaaaaa', 1234567890),
(3, 'fffffff', 'Male', 'Hibernate', 'Pune', '3333@333', '333333', 3333333333);

-- --------------------------------------------------------

--
-- Table structure for table `user_table`
--

CREATE TABLE `user_table` (
  `uid` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `age` int(3) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_table`
--

INSERT INTO `user_table` (`uid`, `username`, `age`, `email`, `password`) VALUES
(15, 'gggggg', 12, 'gggggg@gmail.com', 'gggggg'),
(16, 'yyyyyy', 33, 'yyyyyy@gmail.com', 'yyyyyy'),
(17, 'wwwwww', 18, 'wwwwww@gmail.com', 'wwwwww'),
(18, 'qqqqqq', 33, 'qqqqqq@gmail.com', 'qqqqqq'),
(19, 'rrrrrr', 33, 'rrrrrr@gmail.com', 'rrrrrr'),
(20, 'kkkkkk', 22, 'kkkkkk@gmail.com', 'kkkkkk'),
(21, 'pppppp', 22, 'pppppp@gmail.com', 'pppppp');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `map_table`
--
ALTER TABLE `map_table`
  ADD PRIMARY KEY (`mid`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `student_table`
--
ALTER TABLE `student_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_table`
--
ALTER TABLE `user_table`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `map_table`
--
ALTER TABLE `map_table`
  MODIFY `mid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_table`
--
ALTER TABLE `student_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_table`
--
ALTER TABLE `user_table`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
