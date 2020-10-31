-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- 主機： localhost:3306
-- 產生時間： 2020 年 10 月 31 日 03:02
-- 伺服器版本： 5.6.49
-- PHP 版本： 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `usocieti_spring`
--

-- --------------------------------------------------------

--
-- 資料表結構 `covid_map`
--

CREATE TABLE `covid_map` (
  `mid` int(11) NOT NULL,
  `lat` double DEFAULT NULL,
  `lng` double DEFAULT NULL,
  `loc_info` varchar(255) DEFAULT NULL,
  `loc_name` varchar(255) DEFAULT NULL,
  `district` varchar(20) DEFAULT NULL,
  `visit_date` date DEFAULT NULL,
  `residential` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `covid_map`
--

INSERT INTO `covid_map` (`mid`, `lat`, `lng`, `loc_info`, `loc_name`, `district`, `visit_date`, `residential`) VALUES
(371, 22.299734, 114.23828, '5135', ' Wing Mei House, Yau Chui Court ', 'Kwun Tong', NULL, 1),
(372, 22.353382, 114.124146, '5179', 'The Home Of Treasure', 'Kwai Tsing', NULL, 1),
(373, 22.353382, 114.124146, '5180', 'The Home Of Treasure', 'Kwai Tsing', NULL, 1),
(374, 22.302969, 114.174706, '5182', 'Ramada Hong Kong Grand', 'Yau Tsim Mong', NULL, 1),
(375, 22.291147, 114.19812, '5183', 'M1 Hotel North Point', 'Eastern', NULL, 1),
(376, 22.302696, 114.19233, '5184', 'Harbour Grand Kowloon', 'Kowloon City', NULL, 1),
(377, 22.353382, 114.124146, '5185', 'The Home Of Treasure', 'Kwai Tsing', NULL, 1),
(378, 22.340311, 114.157684, '5186', ' Larkspur House, So Uk Estate ', 'Sham Shui Po', NULL, 1),
(379, 22.353382, 114.124146, '5187', 'The Home Of Treasure', 'Kwai Tsing', NULL, 1),
(380, 22.29668, 114.02415, '5189', ' Crestmont Villa, Peninsula Village, Phase 4, Discovery Bay ', 'Islands', NULL, 1),
(381, 22.294481, 114.270256, '5190', ' Tower 8R, Flora, Phase 2B, Le Prime, Lohas Park ', 'Sai Kung', NULL, 1),
(382, 22.29668, 114.02415, '5191', ' Crestmont Villa, Peninsula Village, Phase 4, Discovery Bay ', 'Islands', NULL, 1),
(383, 22.501606, 114.134636, '5193', ' Tin Hee House, Tin Ping Estate ', 'North', NULL, 1),
(384, 22.368988, 114.1208, '5193', 'Panda Hotel', 'Tsuen Wan', NULL, 1),
(385, 22.307001, 114.260025, '5195', ' Tower 8, The Wings ', 'Sai Kung', NULL, 1),
(386, 22.302696, 114.19233, '5197', 'Harbour Grand Kowloon', 'Kowloon City', NULL, 1),
(387, 22.371004, 114.11932, '5198', 'Silka Far East Hong Kong', 'Tsuen Wan', NULL, 1),
(388, 22.317888, 114.218864, '5199', ' Block A, Belleve Garden ', 'Kwun Tong', NULL, 1),
(389, 22.307001, 114.260025, '5200', ' Tower 8, The Wings ', 'Sai Kung', NULL, 1),
(390, 22.37307, 114.11632, '5201', 'Unio House', 'Tsuen Wan', NULL, 1),
(391, 22.274559, 114.17893, '5202', 'Dorsett Wanchai', 'Wan Chai', NULL, 1),
(392, 22.29381, 113.951645, '5205', ' Tower 2, Phase 1, Coastal Skyline ', 'Islands', NULL, 1),
(393, 22.307001, 114.260025, '5206', ' Tower 8, The Wings ', 'Sai Kung', NULL, 1),
(394, 22.336138, 114.22912, '5207', 'Flamingo Garden', 'Sai Kung', NULL, 1),
(395, 22.27717, 114.180695, '5208', 'Best Western Hotel Causeway Bay', 'Wan Chai', NULL, 1),
(396, 22.302969, 114.174706, '5209', 'Ramada Hong Kong Grand', 'Yau Tsim Mong', NULL, 1),
(397, 22.300236, 114.17586, '5213', 'Best Western PLUS Hotel Kowloon', 'Yau Tsim Mong', NULL, 1),
(398, 22.302969, 114.174706, '5214', 'Ramada Hong Kong Grand', 'Yau Tsim Mong', NULL, 1),
(399, 22.285759, 114.192245, '5215', 'Eco Tree Hotel Causeway Bay', 'Wan Chai', NULL, 1),
(400, 22.319778, 114.26157, '5216', ' King Yu House, King Lam Estate ', 'Sai Kung', NULL, 1),
(401, 22.286463, 114.14029, '5217', ' Block 6, Pokfulam Gardens ', 'Southern', NULL, 1),
(402, 22.300833, 114.17389, '5218', 'The Luxe Manor', 'Yau Tsim Mong', NULL, 1),
(403, 22.318834, 113.93428, '5231', 'Regal Airport Hotel Hong Kong', 'Islands', NULL, 1),
(404, 22.300833, 114.17389, '5234', 'The Luxe Manor', 'Yau Tsim Mong', NULL, 1),
(405, 22.300833, 114.17389, '5235', 'The Luxe Manor', 'Yau Tsim Mong', NULL, 1),
(406, 22.300056, 114.184456, '5236', ' Block E, Harbourfront Horizon All-Suite Hotel ', 'Kowloon City', NULL, 1),
(407, 22.300236, 114.17586, '5242', 'Best Western PLUS Hotel Kowloon', 'Yau Tsim Mong', NULL, 1),
(408, 22.300236, 114.17586, '5250', 'Best Western PLUS Hotel Kowloon', 'Yau Tsim Mong', NULL, 1),
(409, 40.76894, -73.96734, '5251', 'Bon-Point', 'Central & Western', NULL, 1),
(410, 22.200006, 114.13502, '5252', 'Tai Wan Nam', 'Islands', NULL, 1),
(411, 22.319077, 113.943726, '5253', 'Hong Kong Skycity Marriott Hotel', 'Islands', NULL, 1),
(412, 22.307302, 114.17208, '5254', 'Novotel Hong Kong Nathan Road Kowloon', 'Yau Tsim Mong', NULL, 1),
(413, 22.300236, 114.17586, '5256', 'Best Western PLUS Hotel Kowloon', 'Yau Tsim Mong', NULL, 1),
(414, 22.318174, 114.16811, '5257', ' Cordis, Hong Kong ', 'Yau Tsim Mong', NULL, 1),
(415, 22.302969, 114.174706, '5258', 'Ramada Hong Kong Grand', 'Yau Tsim Mong', NULL, 1),
(416, 22.284992, 114.224144, '5259', ' Tower 1, Grand Promenade ', 'Eastern', NULL, 1),
(417, 22.28461, 114.150566, '5260', 'The Sheung Wan by Ovolo', 'Central & Western', NULL, 1),
(418, 22.319077, 113.943726, '5261', 'Hong Kong Skycity Marriott Hotel', 'Islands', NULL, 1),
(419, 22.318834, 113.93428, '5263', 'Regal Airport Hotel', 'Islands', NULL, 1),
(420, 22.277725, 114.18475, '5269', 'Mini Hotel Causeway Bay', 'Wan Chai', NULL, 1),
(421, 22.278664, 114.15334, '5270', 'Bishop Lei International House', 'Central & Western', NULL, 1),
(422, 22.370653, 114.129456, '5279', 'Dorsett Tsuen Wan', 'Kwai Tsing', NULL, 1),
(423, 22.291363, 113.94775, '5281', ' Tower 15, Crystal Cove, Caribbean Coast ', 'Islands', NULL, 1),
(424, 22.370653, 114.129456, '5282', 'Dorsett Tsuen Wan', 'Kwai Tsing', NULL, 1),
(425, 22.200006, 114.13502, '5283', 'Tai Wan Nam', 'Islands', NULL, 1),
(426, 22.300236, 114.17586, '5285', 'Best Western PLUS Hotel Kowloon', 'Yau Tsim Mong', NULL, 1),
(427, 22.281868, 114.21467, '5288', ' Block 9, Nan Fung Sun Chue ', 'Eastern', NULL, 1),
(428, 22.302969, 114.174706, '5289', 'Ramada Hong Kong Grand', 'Yau Tsim Mong', NULL, 1),
(429, 22.287947, 114.13885, '5290', 'Courtyard by Marriott Hong Kong', 'Central & Western', NULL, 1),
(430, 22.306496, 114.01613, '5292', 'Auberge Discovery Bay Hong Kong', 'Islands', NULL, 1),
(431, 22.311111, 114.262146, '5293', ' Block 9, Beverly Garden ', 'Sai Kung', NULL, 1),
(432, 22.310328, 114.17006, '5294', ' Silka Seaview Hotel, Hong Kong ', 'Yau Tsim Mong', NULL, 1),
(433, 22.328793, 114.18857, ' 4938, 4965, 5098 ', '39-43 Hau Wong Road    ', 'Kowloon City', NULL, 0),
(434, 22.297756, 114.16854, ' 5164, 5175, 5193, 5201 ', 'Gateway Hotel    ', 'Yau Tsim Mong', NULL, 0),
(435, 22.299023, 114.17484, ' 5148, 5175 ', 'Chinachem Cameron Centre Virgo Bar & Restaurant    ', 'Yau Tsim Mong', NULL, 0),
(436, 22.292103, 114.23872, ' 2634, 2647, 2656, 3908, 4800, 4928, 5135 ', 'Lei Yue Mun Municipal Services Building    ', 'Kwun Tong', NULL, 0),
(437, 22.39083, 113.97251, ' 4820, 4894, 4927, 4948, 4968, 4969, 5002, 5164 ', 'H.A.N.D.S.    ', 'Tuen Mun', NULL, 0),
(438, 22.269562, 114.18296, ' 5135, 5136, 5137, 5166 ', 'Hong Kong Sanatorium & Hospital    ', 'Wan Chai', NULL, 0),
(439, 22.298475, 114.17763, ' 5170, 5240 ', 'The Royal Garden    ', 'Yau Tsim Mong', NULL, 0),
(440, 22.318441, 114.2668, ' 5200, 5206 ', 'Yu Cheong House Yu Ming Court    ', 'Sai Kung', NULL, 0),
(441, 22.306938, 114.26176, ' 5200, 5206 ', 'Shop 12 Ground Floor Bauhinia Garden    ', 'Sai Kung', NULL, 0),
(442, 22.289434, 113.94088, '5205', 'Citygateoutlets    ', 'Islands', NULL, 0),
(443, 22.34042, 114.17733, '5216', 'Hop Shing Commercial Building Evangelical Free Church of China - Joy Church    ', 'Kowloon City', NULL, 0),
(444, 22.313526, 114.185616, '5216', 'Ko Shan Theatre Madam Hong Restaurant    ', 'Kowloon City', NULL, 0),
(445, 22.289434, 113.94088, '5281', 'Citygateoutlets Jasmine    ', 'Islands', NULL, 0),
(446, 22.298029, 114.176865, '5207', 'Houston Centre    ', 'Yau Tsim Mong', NULL, 0),
(447, 22.338129, 114.161446, '5216', ' Hau Chi House, Lei Cheng Uk Estate Mental Health Association of Hong Kong Lei Cheng Uk House     ', 'Sham Shui Po', NULL, 0),
(448, 22.381758, 114.18864, '5216', 'New Town Plaza Phase I CafÃ© de Coral    ', 'Sha Tin', NULL, 0),
(449, 22.286247, 114.21355, '5259', 'One Island East    ', 'Eastern', NULL, 0),
(450, 22.388823, 113.980064, '5281', 'Come On Building  Commercial Centre     ', 'Tuen Mun', NULL, 0),
(451, 22.372583, 113.966484, '5281', 'Ocean Walk Itamomo Plus    ', 'Tuen Mun', NULL, 0),
(452, 22.281055, 114.22861, '5259', 'Aldrich Garden Shopping Centre    ', 'Eastern', NULL, 0),
(453, 22.382719, 113.97792, '5281', 'Hanford Plaza    ', 'Tuen Mun', NULL, 0),
(454, 22.397272, 113.97586, '5281', 'San Hui Market    ', 'Tuen Mun', NULL, 0),
(455, 22.281675, 113.934814, '5281', 'Yat Tung Shopping Centre Phase I TamJai SamGor Mixian    ', 'Islands', NULL, 0),
(456, 22.285664, 114.14948, '5293', '340 Queen\'s Road Central    ', 'Central & Western', NULL, 0),
(457, 22.281471, 114.15776, '5293', 'Siu Ying Commercial Building    ', 'Central & Western', NULL, 0),
(458, 22.311604, 114.170685, '5288', 'Manly Commercial Building    ', 'Yau Tsim Mong', NULL, 0),
(459, 22.32321, 114.18555, '5288', 'Pine Manor    ', 'Kowloon City', NULL, 0);

-- --------------------------------------------------------

--
-- 資料表結構 `map_table`
--

CREATE TABLE `map_table` (
  `mid` int(11) NOT NULL,
  `lat` double DEFAULT NULL,
  `lng` double DEFAULT NULL,
  `loc_info` varchar(255) DEFAULT NULL,
  `loc_name` varchar(255) DEFAULT NULL,
  `wiki_link` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `map_table`
--

INSERT INTO `map_table` (`mid`, `lat`, `lng`, `loc_info`, `loc_name`, `wiki_link`) VALUES
(1, 22.3548, 114.126, '新界面積最小的一區，原本屬於荃灣區，於1985年4月1日從荃灣區中獨立，即現在的葵涌和青衣範圍', '葵青區 Kwai Tsing District', 'https://zh.wikipedia.org/wiki/%E8%91%B5%E9%9D%92%E5%8D%80'),
(2, 22.3715, 114.114, '荃灣區除了荃灣新市鎮，亦包括油柑頭、汀九、深井、青龍頭、嘉龍村、馬灣島、大窩口部份地區、大嶼山北部的外飛地（例：欣澳、青洲仔半島）及梨木樹等等地方', '荃灣區 Tsuen Wan District', 'https://zh.wikipedia.org/wiki/%E8%8D%83%E7%81%A3%E5%8D%80'),
(3, 22.3908, 113.973, '新界面積最小的一區，原本屬於荃灣區，於1985年4月1日從荃灣區中獨立，即現在的葵涌和青衣範圍', '屯門區 Tuen Mun District', 'https://zh.wikipedia.org/wiki/%E5%B1%AF%E9%96%80%E5%8D%80'),
(4, 22.4445, 114.022, '元朗區是香港唯一「一區兩市」（元朗新市鎮及天水圍新市鎮）的區份，元朗區由廈村鄉（包括洪水橋、白泥、流浮山等地）、屏山鄉（包括元朗市中心西部、橫洲、天水圍、尖鼻咀等地）、十八鄉（包括元朗市中心東部、凹頭、南生圍等地）、錦田鄉、八鄉（包括石崗等地）新田鄉（包括落馬洲、米埔等地）所組成', '元朗區 Yuen Long District', 'https://zh.wikipedia.org/wiki/%E5%85%83%E6%9C%97%E5%8D%80'),
(5, 22.501, 114.156, '傳統上北區分為上水、粉嶺、沙頭角和打鼓嶺四個部分，故獨立成區前亦稱爲上粉沙打地區，此外還包括大鵬灣的吉澳、鴨洲等離島', '北區 North District', 'https://zh.wikipedia.org/wiki/%E5%8C%97%E5%8D%80_(%E9%A6%99%E6%B8%AF)'),
(6, 22.4424, 114.165, '大埔區（英語：Tai Po District）是香港十八區的其中一區，位於新界東部，範圍包括大埔、東平洲、大埔滘、汀角、船灣、林村谷，白石角及它的外飛地為赤門海峽兩岸的西貢半島北部（西貢北）', '大埔區 Tai Po District', 'https://zh.wikipedia.org/wiki/%E5%A4%A7%E5%9F%94%E5%8D%80'),
(7, 22.3869, 114.21, '沙田區本來只是沙田海及城門河兩岸的填海地，包括大圍、火炭、禾輋、石門、小瀝源、圓洲角、九肚山及馬料水等地方。但沙田區今日已擴展至馬鞍山一帶，包括烏溪沙等地方', '沙田區 Sha Tin District', 'https://zh.wikipedia.org/wiki/%E6%B2%99%E7%94%B0%E5%8D%80'),
(8, 22.3834, 114.271, '西貢區於地理上可分為「西貢及西貢鄉郊」和「將軍澳及清水灣半島」兩部份。「西貢及西貢鄉郊」包括西貢市、白沙灣、波羅輋、井欄樹、壁屋、大網仔、北潭涌、蠔涌、萬宜水庫等地。「將軍澳及清水灣半島」包括大埔仔、調景嶺、將軍澳市中心、坑口、寶林、翠林、康盛花園、茅湖仔、清水灣、布袋澳、大赤沙、小赤沙等地', '西貢區 Sai Kung District', 'https://zh.wikipedia.org/wiki/%E8%A5%BF%E8%B2%A2%E5%8D%80'),
(9, 22.2677, 113.955, '離島區（英語：Islands District）是香港十八區面積最大的一區，面積佔全香港的16%；主要包括香港南及西南面多個離島，當中包括香港面積最大的島嶼大嶼山的大部分', '離島區 Islands District', 'https://zh.wikipedia.org/wiki/%E9%9B%A2%E5%B3%B6%E5%8D%80'),
(10, 22.3115, 114.17, '「油尖旺區」由1982年成立的「油尖區」及「旺角區」於1994年合併而成。名字由該區的三個主要區域——油麻地、佐敦 , 尖沙咀和旺角的字首組合而成', '油尖旺區 Yau Tsim Mong District', 'https://zh.wikipedia.org/zh-hk/%E6%B2%B9%E5%B0%96%E6%97%BA%E5%8D%80'),
(11, 22.3322, 114.147, '深水埗區包括深水埗、長沙灣、荔枝角、蘇屋、石硤尾、又一村、大窩坪、昂船洲南部（即昂船洲政府船塢、昂船洲海軍基地、昂船洲污水處理廠等地', '深水埗區 Sham Shui Po District', 'https://zh.wikipedia.org/wiki/%E6%B7%B1%E6%B0%B4%E5%9F%97%E5%8D%80'),
(12, 22.3238, 114.186, '九龍城區以住宅樓宇為主，包括九龍城、九龍塘、何文田、馬頭圍、馬頭角、啟德、土瓜灣、紅磡、加多利山等地方', '九龍城區 Kowloon City District', 'https://zh.wikipedia.org/wiki/%E4%B9%9D%E9%BE%8D%E5%9F%8E%E5%8D%80'),
(13, 22.3572, 114.197, '黃大仙區位於九龍半島東面，北方背靠獅子山、大老山及慈雲山，東臨飛鵝山，包括竹園、黃大仙、牛池灣、鑽石山、慈雲山、斧山、樂富、橫頭磡、新蒲崗等地方，因此本區亦成全香港唯一無海岸線的行政區', '黃大仙區 Wong Tai Sin District', 'https://zh.wikipedia.org/wiki/%E9%BB%83%E5%A4%A7%E4%BB%99%E5%8D%80'),
(14, 22.3157, 114.233, '觀塘區包括觀塘市中心、牛頭角、九龍灣、秀茂坪、藍田、油塘、茶果嶺及佐敦谷等地方。', '觀塘區 Kwun Tong District', 'https://zh.wikipedia.org/wiki/%E8%A7%80%E5%A1%98%E5%8D%80'),
(15, 22.2762, 114.183, '灣仔區由13個小區組成，包括渣甸山、大坑、天后、維園、銅鑼灣、樂活、跑馬地、鵝頸、愛群、軒尼詩、修頓、大佛口及司徒拔道', '灣仔區 Wan Chai District', 'https://zh.wikipedia.org/wiki/%E7%81%A3%E4%BB%94%E5%8D%80'),
(16, 22.2833, 114.15, '中西區可以細分為中區、西區和半山區三個部份，中區包括金鐘、中環和上環等地，西區包括西環（即西營盤、石塘咀和堅尼地城）和摩星嶺，而半山區則包括太平山和薄扶林北部一帶', '中西區 Central And Western District', 'https://zh-yue.wikipedia.org/wiki/%E4%B8%AD%E8%A5%BF%E5%8D%80_(%E9%A6%99%E6%B8%AF)'),
(17, 22.2734, 114.236, '東區包括四個法定分區，分別為北角（炮台山北、北角半山）、鰂魚涌（康山、太古城）、筲箕灣（西灣河）及柴灣（杏花邨、小西灣），括號內為分區或地方俗稱', '東區 Eastern District', 'https://zh.wikipedia.org/wiki/%E6%9D%B1%E5%8D%80_(%E9%A6%99%E6%B8%AF)'),
(18, 22.2432, 114.197, '南區位於香港島南部，東起大浪灣，西迄薄扶林。當中包括香港仔、鴨脷洲、鋼綫灣、黃竹坑、壽臣山、深水灣、淺水灣、赤柱、舂坎角、大潭及石澳等地', '南區 Southern District', 'https://zh.wikipedia.org/wiki/%E5%8D%97%E5%8D%80_(%E9%A6%99%E6%B8%AF)');

-- --------------------------------------------------------

--
-- 資料表結構 `user_table`
--

CREATE TABLE `user_table` (
  `uid` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `age` int(3) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `admin` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `user_table`
--

INSERT INTO `user_table` (`uid`, `username`, `age`, `email`, `password`, `admin`) VALUES
(15, 'gggggg', 12, 'gggggg@gmail.com', 'gggggg', 'Y'),
(16, 'yyyyyy', 33, 'yyyyyy@gmail.com', 'yyyyyy', NULL),
(17, 'wwwwww', 18, 'wwwwww@gmail.com', 'wwwwww', NULL),
(18, 'qqqqqq', 33, 'qqqqqq@gmail.com', 'qqqqqq', NULL),
(19, 'rrrrrr', 33, 'rrrrrr@gmail.com', 'rrrrrr', NULL),
(20, 'kkkkkk', 22, 'kkkkkk@gmail.com', 'kkkkkk', NULL),
(21, 'spring', 33, 'spring@gmail.com', 'spring', NULL),
(22, 'spring1', 33, 'spring1@gmail.com', 'spring1', NULL);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `covid_map`
--
ALTER TABLE `covid_map`
  ADD PRIMARY KEY (`mid`);

--
-- 資料表索引 `map_table`
--
ALTER TABLE `map_table`
  ADD PRIMARY KEY (`mid`);

--
-- 資料表索引 `user_table`
--
ALTER TABLE `user_table`
  ADD PRIMARY KEY (`uid`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `covid_map`
--
ALTER TABLE `covid_map`
  MODIFY `mid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=460;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `map_table`
--
ALTER TABLE `map_table`
  MODIFY `mid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `user_table`
--
ALTER TABLE `user_table`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
