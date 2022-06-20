-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;

CREATE TABLE `accounts` (
  `account` char(65) NOT NULL,
  `frontier` char(64) DEFAULT NULL,
  `open_block` char(64) DEFAULT NULL,
  `representative_block` char(64) DEFAULT NULL,
  `balance` decimal(39,0) DEFAULT NULL,
  `modified_timestamp` int(11) DEFAULT NULL,
  `block_count` int(11) DEFAULT NULL,
  `confirmation_height` int(11) DEFAULT NULL,
  `confirmation_height_frontier` char(64) DEFAULT NULL,
  `representative` char(65)  NULL,
  `weight` decimal(39,0) DEFAULT NULL,
  `pending` decimal(39,0) DEFAULT NULL,
  `key` char(64) DEFAULT NULL
  -- UNIQUE KEY `account` (`account`),
  -- INDEX `balance` (`balance`),
  -- INDEX `representative` (`representative`),
  -- INDEX `pending` (`pending`),
  -- INDEX `modified_timestamp` (`modified_timestamp`)
);

-- --------------------------------------------------------

--
-- Table structure for table `block`
--

DROP TABLE IF EXISTS `blocks`;

CREATE TABLE `blocks` (
  `hash` char(64) NOT NULL,
  `amount` decimal(39,0) DEFAULT NULL,
  `balance` decimal(39,0) DEFAULT NULL,
  `height` int(11) NOT NULL,
  `local_timestamp` int(11) NOT NULL,
  `confirmed` tinyint(1) NOT NULL,
  `type` tinyint(1) NOT NULL,
  `account` char(65) NOT NULL,
  `previous` char(64) DEFAULT NULL,
  `representative` char(65) DEFAULT NULL,
  `link` char(65) DEFAULT NULL,
  `link_account` char(65) DEFAULT NULL,
  `signature` char(128) NOT NULL,
  `work` char(16) NOT NULL,
  `subtype` tinyint(1) DEFAULT NULL
  -- UNIQUE KEY `block` (`hash`),
  -- UNIQUE KEY `height` (`account`, `height`),
  -- INDEX `account` (`account`),
  -- INDEX `type` (`type`),
  -- INDEX `subtype` (`subtype`),
  -- INDEX `amount` (`amount`),
  -- INDEX `balance` (`balance`),
  -- INDEX `representative` (`representative`),
  -- INDEX `local_timestamp` (`local_timestamp`),
  -- INDEX `link_account` (`link_account`)
);