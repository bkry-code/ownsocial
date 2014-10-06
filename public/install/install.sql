-- Create syntax for TABLE 'configs'
CREATE TABLE `configs` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(50) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `configs` (
  `id`, `key`, `value`
) VALUES (
  NULL, 'default_portrait_id', 1
);

-- Create syntax for TABLE 'files'
CREATE TABLE `files` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `content` longblob NOT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `files` (`id`, `content`, `type`, `created`)
VALUES
	(1, X'89504E470D0A1A0A0000000D4948445200000050000000500802000000017365FA0000001974455874536F6674776172650041646F626520496D616765526561647971C9653C0000032869545874584D4C3A636F6D2E61646F62652E786D7000000000003C3F787061636B657420626567696E3D22EFBBBF222069643D2257354D304D7043656869487A7265537A4E54637A6B633964223F3E203C783A786D706D65746120786D6C6E733A783D2261646F62653A6E733A6D6574612F2220783A786D70746B3D2241646F626520584D5020436F726520352E352D633032312037392E3135353737322C20323031342F30312F31332D31393A34343A30302020202020202020223E203C7264663A52444620786D6C6E733A7264663D22687474703A2F2F7777772E77332E6F72672F313939392F30322F32322D7264662D73796E7461782D6E7323223E203C7264663A4465736372697074696F6E207264663A61626F75743D222220786D6C6E733A786D703D22687474703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F2220786D6C6E733A786D704D4D3D22687474703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F6D6D2F2220786D6C6E733A73745265663D22687474703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F73547970652F5265736F75726365526566232220786D703A43726561746F72546F6F6C3D2241646F62652050686F746F73686F70204343203230313420284D6163696E746F7368292220786D704D4D3A496E7374616E636549443D22786D702E6969643A32314643354545463435413731314534424339444235423045463835453737452220786D704D4D3A446F63756D656E7449443D22786D702E6469643A3231464335454630343541373131453442433944423542304546383545373745223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E7374616E636549443D22786D702E6969643A3231464335454544343541373131453442433944423542304546383545373745222073745265663A646F63756D656E7449443D22786D702E6469643A3231464335454545343541373131453442433944423542304546383545373745222F3E203C2F7264663A4465736372697074696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F787061636B657420656E643D2272223F3E5E316BF7000003BA4944415478DAEC9B4F4B325114C6A797178416B98976BA1337212E8A12CC7F8CB4E93BF45DFC127E0077AD5B54446A052ABA70E146DCD92E84A045D0AE0784907B8EA339E78E3375EEF28097F9CD9DF39CE79E7BDDA9D56ACE5F1AFF9C3F3614588115588115588115588115588115588115981BFF7DFE3E994C5E5E5ED278BD5E9FCD661B4F7B7A7A5AAD568DE0EBEB6BA3D1F8F8F8D8E60A4FA7D3E7E7671A775D77E3397777774F4E4E68BCD56AF9A495F9A47BBDDEFBFBBB114CA552E9747AB30941BBB7B767040783C1783C0E450EE3AD8399C673B9DC06B3EDEFEF1F1F1F1BC1CFCFCF76BB1D22D1EA76BB2F2F2F4630914820157F3AD5D9D9592C163382777777FE3F6661957E7878603FCE1F4D822C383C3C34827895C3E130746509EA8534338248C572B9BCFE24A5528906AFAFAF435A879166483623888484EAAE598A0E0E0E8C204A809FF266171869D6EFF78D2012F2FCFC7C9D525428148C20C4BFD96C86DA69E1F9600F8C20D212DABBB21451ADBAB9B98980B5843DA0C18B8B0BEF5294CFE78DE068341229BCD681F19478565AA23C7C08B565D082DBDBDBC86C1E9E9E9EA87AB10A3C2F45B06546105A205578830086AE52F58202B33E84BE08145E71ADB2BE3DC41353830D65324A145B8A580F1381FD30D558F810C37B512B86C20B0F134960A81735D88B3E0426CCD815E1A360F72191E978505788623B5F5560D35D11BC9A25AD0A0818EA45DB03F345A64E633299086E12B603CCB607E6663393C91885F7FEFEDEB13FAC03B3ED01984D237B51C66437095B035ED61E581CB0DFF60AEF1680579656D67E471B986D0F58DD246C1918E3EDED8D8DC7E37127C01110F0B256B3B369AF2FECC06CABF97B140A8535DB40D10066F7F746652E168BBF0798B63B68953A3A3A4A2693BF01389BCD224B0DDAABAB2BDA21A8542A91074666D26FB5D3E9B0FDCD60D4CB2E30D52A2CEFBCEAB2477001A897456056ABB0BC1E1E3B00F5B208CC6AD5A2A9623DB66DF5B2054CB58A75D4ACC7B6AA5E568059AD8267A6CD2AD6635B552F2BC054AB3C1AEBEC119C3DF5920766B5CAA3B18EF8E3E36360EA250F4CB56AE5216090EA250CCC6AD53A9DD7EF72655BBD248159ADC2D2610157FE76D9119CB87A4902B37B4076E9D8C11EC189AB971830AB5586D3F01EEC119CB87A8901B347DE3F3D16630DB6AC7AC900B35AC53A0DEFB1EC8E9BA07AC900B35F1D727283A904EFB8D902A687808EBFEB46ACCE49A9975FE0655723FD9C7AB2254A4ABDFC02BBAE4BAF1BF9BFA1C1962811F5DAD13F4C2BB0022BB0022BB0022BB0022BB0022BB0022BB0E37C0930004B2FE0772E0C82190000000049454E44AE426082', 'image/png', NOW());

-- Create syntax for TABLE 'groups'
CREATE TABLE `groups` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `created` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Create syntax for TABLE 'likes'
CREATE TABLE `likes` (
  `post_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`post_id`,`user_id`),
  CONSTRAINT `likes_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Create syntax for TABLE 'posts'
CREATE TABLE `posts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `parent_post_id` bigint(20) unsigned DEFAULT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `group_id` bigint(20) unsigned DEFAULT NULL,
  `visibility` enum('public','contacts','me','group') NOT NULL DEFAULT 'public',
  `content` mediumtext NOT NULL,
  `created` bigint(20) NOT NULL,
  `modified` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_post_id` (`parent_post_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`parent_post_id`) REFERENCES `posts` (`id`),
  CONSTRAINT `posts_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Create syntax for TABLE 'relations'
CREATE TABLE `relations` (
  `user_id` bigint(20) unsigned NOT NULL,
  `user_id2` bigint(20) unsigned NOT NULL,
  `created` bigint(20) NOT NULL,
  `confirmed` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`user_id`,`user_id2`),
  KEY `user_id` (`user_id`,`user_id2`,`confirmed`),
  CONSTRAINT `relations_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Create syntax for TABLE 'user_groups'
CREATE TABLE `user_groups` (
  `user_id` bigint(20) unsigned NOT NULL,
  `group_id` bigint(20) NOT NULL,
  `confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `role` enum('member','admin') CHARACTER SET utf8mb4 NOT NULL DEFAULT 'member'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Create syntax for TABLE 'users'
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT '',
  `first_name` varchar(255) NOT NULL DEFAULT '',
  `last_name` varchar(255) NOT NULL DEFAULT '',
  `portrait_file_id` bigint(20) unsigned DEFAULT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;