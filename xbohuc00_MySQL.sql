-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hostiteľ: 127.0.0.1
-- Čas generovania: Pi 29.Okt 2021, 21:29
-- Verzia serveru: 10.4.21-MariaDB
-- Verzia PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databáza: `xbohuc00`
--

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `blocked_shops`
--

CREATE TABLE `blocked_shops` (
  `shop_id` int(11) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `blocked_shops`
--

INSERT INTO `blocked_shops` (`shop_id`, `reason`, `created_at`, `updated_at`) VALUES
(1, 'Shady', '2021-10-27', '2021-10-27'),
(6, 'Nedorucovanie', '2021-10-27', '2021-10-27'),
(7, 'Scams', '2021-10-27', '2021-10-27'),
(8, 'Deleted', '2021-10-27', '2021-10-27'),
(9, 'Overpriced', '2021-10-27', '2021-10-27');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(50) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `created_at`, `updated_at`) VALUES
(1, 'Kuchyna', '2021-10-27', '2021-10-27'),
(2, 'PC', '2021-10-27', '2021-10-27'),
(3, 'Kupelna', '2021-10-27', '2021-10-27'),
(4, 'Mobile', '2021-10-27', '2021-10-27'),
(5, 'Laptop', '2021-10-27', '2021-10-27');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(11) NOT NULL,
  `comment_body` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_body`, `user_id`, `product_id`) VALUES
(1, 'yttjpcjcqdwfuytlskvb', 4, 4),
(2, 'bfalgnzxhivwldztkqgb', 4, 4),
(3, 'rybtjgglwmnuigquqzle', 4, 4),
(4, 'ltsmizamwjtqeppcewke', 3, 3),
(5, 'tzcstupthjubyeukgitg', 4, 4),
(6, 'mnfshpubjawabniarlmx', 4, 4),
(7, 'okbsmoieqspkrwbqsgdp', 1, 1),
(8, 'ncmjmasyuembjgbohebf', 2, 2),
(9, 'ginacfnqmmvhhfqjhevp', 3, 3),
(10, 'owzjfjcvwzaswvebgfix', 2, 2),
(11, 'fekxpdnvltuccgxduosn', 3, 3),
(12, 'gomcuizeqrqluksidypr', 3, 3),
(13, 'oqhghmmwbrlxoebmmryn', 1, 1),
(14, 'ownjwmntxyrzdcatyrsy', 4, 4),
(15, 'jofapbxqlmegcasfniso', 3, 3),
(16, 'nrbfabfsapbfyvvfblpi', 3, 3),
(17, 'ikqznqazmrkzgpzwnkci', 4, 4),
(18, 'apfyavybcutamclzqfsr', 4, 4),
(19, 'axdhtjcqxevsdddtumhq', 1, 1),
(20, 'kmjgerbfxjtesvffjaby', 4, 4),
(21, 'bvrpawongxhpmrrkfkqw', 3, 3),
(22, 'vayopshechvlupvvjiox', 2, 2),
(23, 'jylbeirfkcexevfkvzto', 3, 3),
(24, 'xmttlnkpuwompmgtuaba', 2, 2),
(25, 'ggebpyauyqxmcbetvqju', 1, 1),
(26, 'chiwbjjxmfrmidllqksn', 4, 4),
(27, 'ougmskryrrhltiaumdxn', 1, 1),
(28, 'egjibevzeqynvpioqwmg', 3, 3),
(29, 'jfjzbwnbvnmnqrwtabmk', 3, 3),
(30, 'wyboaptcexeixccsdhwg', 4, 4),
(31, 'pcgvkxribjjihtfarzcm', 1, 1),
(32, 'lklpdvnojbfrqsxhiiqb', 1, 1),
(33, 'mhwdpxptjuoefxjoepfv', 3, 3),
(34, 'drivqkozohhazxbnvgjl', 1, 1),
(35, 'cvuehlisgcygqpdzusjl', 4, 4),
(36, 'hzmwrqbhntzhijfxxbte', 2, 2),
(37, 'sxfoufkeazcyfukdkjnl', 4, 4),
(38, 'kbzpyaryfycjfzzywbhi', 4, 4),
(39, 'eiultuylpijhthawmmhi', 2, 2),
(40, 'dljcnqyypcaatvlsootq', 4, 4),
(41, 'mkhqogjbbswojhigzmbn', 1, 1),
(42, 'ikwbqykiaumklmddnrnt', 2, 2),
(43, 'mpkfamcccsswesomfyuy', 4, 4),
(44, 'sxsjxfvbbudpeupzqiij', 1, 1),
(45, 'zoppyiiqsgpicyxfrvwh', 4, 4),
(46, 'ywlvegwylxrgrmipyeyk', 4, 4),
(47, 'yfyshfhwcjkssggsfxvb', 1, 1),
(48, 'ebxgwysujxmxisixvgsx', 4, 4),
(49, 'tvyvwjullvdllcbmbyyh', 2, 2),
(50, 'yyrtwzeiugyfadqlibmh', 3, 3),
(51, 'nvrddxepstirejgxugvb', 5, 5),
(52, 'ehqhldsuxtgvhldxlgzg', 5, 5),
(53, 'rhorbxhhqxgfnyuovnvi', 5, 5),
(54, 'iwnufegxconeztykchut', 5, 5),
(55, 'xkepzcveaoiunjibilsu', 5, 5),
(56, 'bqoaekrgxjixqsbqgnxj', 5, 5),
(57, 'pouszqarescmoebuexny', 5, 5),
(58, 'ykkvmxnnzgtywyjhdsku', 5, 5),
(59, 'gxvvykjultmhgwgkneng', 5, 5),
(60, 'ifhwjkrdqktyrhaktbbx', 5, 5),
(61, 'ktwofmyxpkdaqlfrskwi', 5, 5),
(62, 'xlqwfaihrhzamopkdiyx', 5, 5),
(63, 'zmgrpfhzsqzqaokpimgc', 5, 5),
(64, 'zrobvqlilzfnaxpapcij', 5, 5),
(65, 'acykqsfkcwqfxqqhpicv', 5, 5),
(66, 'nuvwyyfzjsaufavawncz', 5, 5),
(67, 'jlhyhqqujehtbkcruaor', 5, 5),
(68, 'pnnjslmuskzhcriewxpm', 5, 5),
(69, 'marwyngcbeqrexzoakqu', 5, 5),
(70, 'jwaqggunuciirzbhhhdk', 5, 5);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `currency`
--

CREATE TABLE `currency` (
  `currency_id` int(11) NOT NULL,
  `currency_name` varchar(45) NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `currency`
--

INSERT INTO `currency` (`currency_id`, `currency_name`, `currency_code`, `product_id`) VALUES
(1, 'Euro', 'EUR', 1),
(2, 'US Dollar', 'USD', 2),
(3, 'Ceska Koruna', 'CZK', 3),
(4, 'Libra', 'LB', 4),
(5, 'Bitcoin', 'BTC', 5);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `permissions`
--

CREATE TABLE `permissions` (
  `permissions_id` int(11) NOT NULL,
  `permissions_name` varchar(255) NOT NULL,
  `permissions_label` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `permissions`
--

INSERT INTO `permissions` (`permissions_id`, `permissions_name`, `permissions_label`) VALUES
(1, 'Add', 'Pridat shop'),
(2, 'Comment', 'Comentovat'),
(3, 'Edit', 'Editovat'),
(4, 'Delete', 'Zmazat'),
(5, 'Show', 'Ukazat');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `product_detail` varchar(255) NOT NULL,
  `has_price` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_detail`, `has_price`, `price`, `shop_id`, `category_id`, `currency_id`) VALUES
(1, 'HP OMEN', 'NTB', 1, 22, 1, 1, 1),
(2, 'Kartacek', 'Na zuby', 1, 44, 2, 2, 2),
(3, 'Anime', 'Ajaja', 1, 55, 3, 3, 3),
(4, 'Katana', 'Japonsk', 0, 0, 4, 4, 4),
(5, 'Neviem', 'Zidan', 1, 222, 5, 5, 5);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `product_discounts`
--

CREATE TABLE `product_discounts` (
  `discount_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `is_percentage` int(11) NOT NULL,
  `discount_value` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `product_discounts`
--

INSERT INTO `product_discounts` (`discount_id`, `product_id`, `is_percentage`, `discount_value`, `start_date`, `end_date`) VALUES
(1, 1, 1, 1, '2021-10-27', '2021-10-27'),
(2, 2, 2, 2, '2021-10-27', '2021-10-27'),
(3, 3, 3, 3, '2021-10-27', '2021-10-27'),
(4, 4, 4, 4, '2021-10-27', '2021-10-27'),
(5, 5, 5, 5, '2021-10-27', '2021-10-27');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `product_photos`
--

CREATE TABLE `product_photos` (
  `photo_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `product_photos`
--

INSERT INTO `product_photos` (`photo_id`, `product_id`, `product_photo`) VALUES
(1, 1, '11111'),
(2, 2, '2222'),
(3, 3, '33333'),
(4, 4, '4444'),
(5, 5, '55555');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `roles`
--

CREATE TABLE `roles` (
  `roles_id` int(11) NOT NULL,
  `roles_name` varchar(255) NOT NULL,
  `roles_label` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `roles`
--

INSERT INTO `roles` (`roles_id`, `roles_name`, `roles_label`) VALUES
(1, 'Admin', 'hello'),
(2, 'User', 'it'),
(3, 'SuperUser', 'is'),
(4, 'Shop', 'me'),
(5, 'ShopAdmin', '..');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `role_user`
--

CREATE TABLE `role_user` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `role_user`
--

INSERT INTO `role_user` (`role_id`, `user_id`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `shop`
--

CREATE TABLE `shop` (
  `shop_id` int(11) NOT NULL,
  `shop_name` varchar(30) NOT NULL,
  `shop_web` varchar(100) NOT NULL,
  `shop_logo` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `shop`
--

INSERT INTO `shop` (`shop_id`, `shop_name`, `shop_web`, `shop_logo`, `user_id`) VALUES
(1, 'alza', 'alza.cz', 'dunno', 1),
(2, 'mall', 'mall.cz', 'nope', 2),
(3, 'datart', 'datart.cz', 'neviem', 3),
(4, 'okay', 'okay.sk', 'nevjem us', 4),
(5, 'naj', 'naj.sk', 'logo', 5);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `user`
--

CREATE TABLE `user` (
  `user_id` bigint(20) NOT NULL,
  `user_name` varchar(30) NOT NULL,
  `email` varchar(320) NOT NULL,
  `account_name` varchar(30) NOT NULL,
  `account_password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `email`, `account_name`, `account_password`) VALUES
(1, 'xbohuc00', 'xbohuc00@vut.cz', 'Bohucky', 'heslo'),
(2, 'xgasparova01', 'xgasparova01@vut.cz', 'Gasparova', '1111'),
(3, 'jancik', 'jancik@vut.cz', 'David', 'Password'),
(4, 'duisenbekova', 'karina@vut.cz', 'Karin', 'Ajaja'),
(5, 'Simca', 'simonka@vut.cz', 'Simona', '123456');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `user_photo`
--

CREATE TABLE `user_photo` (
  `userphoto_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `profile_photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `user_photo`
--

INSERT INTO `user_photo` (`userphoto_id`, `user_id`, `profile_photo`) VALUES
(1, 1, 'vvwblpfczznleqjohangqspcwkerhgtvfuwapgimivpiw'),
(2, 2, 'iyjqakbfltbeayfxpjsrmazwfuettmkorvncscnpehwyu'),
(3, 3, 'lokkzaagznsmnqocmcspnpjxtlmrlofmjoyuaqdqvovcu'),
(4, 4, 'ljjghxkloasvnugrgittwlulqzphqcrrsjxfksmkjxztf'),
(5, 5, 'euefsywqvwtrfgyiimohprqesmdxvfrfetqhftwapicbn'),
(6, 6, 'fvwtaxiuyfwurequqnwpljutodadkvchdbozyzvtaglvg'),
(7, 7, 'suodyrprcagdscfykacbcghtnvtajjcadadcogsnyqdvm'),
(8, 8, 'wbtirjodnxyatrdgpgusmjspivtrpqavgytlnpvayngqe'),
(9, 9, 'bjttkjxvmyahykqbemhxetjyvttfzwvgbqdaunhrzhhvr');

--
-- Kľúče pre exportované tabuľky
--

--
-- Indexy pre tabuľku `blocked_shops`
--
ALTER TABLE `blocked_shops`
  ADD PRIMARY KEY (`shop_id`);

--
-- Indexy pre tabuľku `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexy pre tabuľku `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexy pre tabuľku `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`currency_id`);

--
-- Indexy pre tabuľku `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`permissions_id`);

--
-- Indexy pre tabuľku `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`);

--
-- Indexy pre tabuľku `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexy pre tabuľku `product_discounts`
--
ALTER TABLE `product_discounts`
  ADD PRIMARY KEY (`discount_id`);

--
-- Indexy pre tabuľku `product_photos`
--
ALTER TABLE `product_photos`
  ADD PRIMARY KEY (`photo_id`);

--
-- Indexy pre tabuľku `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`roles_id`);

--
-- Indexy pre tabuľku `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexy pre tabuľku `shop`
--
ALTER TABLE `shop`
  ADD PRIMARY KEY (`shop_id`);

--
-- Indexy pre tabuľku `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexy pre tabuľku `user_photo`
--
ALTER TABLE `user_photo`
  ADD PRIMARY KEY (`userphoto_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
