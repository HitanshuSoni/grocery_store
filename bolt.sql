

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+05:30";


--
-- Database: `bolt`
--

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(15) NOT NULL auto_increment,
  `product_code` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_desc` varchar(255) NOT NULL,
  `price` int(10) NOT NULL,
  `units` int(5) NOT NULL,
  `total` int(15) NOT NULL,
  `date` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;


--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL auto_increment,
  `product_code` varchar(60) NOT NULL,
  `product_name` varchar(60) NOT NULL,
  `product_desc` tinytext NOT NULL,
  `product_img_name` varchar(60) NOT NULL,
  `qty` int(5) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `product_code` (`product_code`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_code`, `product_name`, `product_img_name`, `qty`, `price`) VALUES
(1, 'g1', 'Coke', '1.jfif', 26, 24.00),
(2, 'g2', 'Flour', '2.jpg', 20, 250.00),
(3, 'g3', 'Shree Khand', '3.jfif',50 , 30.00),
(4, 'g4', 'Amul Butter ', '4.jpg',29 , 200.00),
(5, 'g5', 'Amul Cheese', '5.jpg', 21, 80.00),
(6, 'g6', 'Amul Masti Dahi', '6.jpg',46 , 25.00),
(7, 'g7', 'Shree Khand Elichi', '7.jfif',34 , 45.00),
(8, 'g8', 'Amul Ghee', '8.jfif',43 , 450.00),
(9, 'g9', 'Shree Khand Kesar', '9.jfif',33 , 70.00),
(10, 'g10', 'COOL Dhoodh', '10.jpg', 44, 35.00),
(11, 'g11', 'Amul Lactose Free Milk', '11.jpg',20 , 60.00),
(12, 'g12', 'Shree Khand Mango', '12.jfif',34 , 40.00),
(13, 'g13', 'Amul Butter 250gm', '13.jfif', 19, 60.00),
(14, 'g14', 'Amul  Milk', '14.jpg',130 , 40.00),
(15, 'g15', 'Amul Panner', '15.jfif',34 ,270.00 ),
(16, 'g16', 'Amul Preminum Dahi', '16.png',49 , 40.00),
(17, 'g17', 'Amul Gold Milk', '17.jpg', 140, 60.00),
(18, 'g18', 'Amul Butter 1KG Tub', '18.jpg', 40,300.00 ),
(19, 'g19', 'Ghee', '19.jfif', 30, 450.00),
(20, 'g20', 'Real Juice', '20.jfif', 50, 90.00)



-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL auto_increment,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(100) NOT NULL,
  `pin` int(6) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(15) NOT NULL,
  `type` varchar(20) NOT NULL default 'user',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `address`, `city`, `pin`, `email`, `password`, `type`) VALUES
(1, 'Steve', 'Jobs', 'Infinite Loop', 'California', 95014, 'sjobs@apple.com', 'steve', 'user'),
(2, 'Admin', 'Webmaster', 'Internet', 'Electricity', 101010, 'admin@admin.com', 'admin', 'admin');

