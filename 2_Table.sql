#날짜 : 2021/03/23
#이름 : 
#내용 : 테이블 설정 실습하기

#실습하기 3-1
CREATE TABLE `USER2` (
		`uid` VARCHAR(10) PRIMARY KEY,
		`name` VARCHAR(10),
		`hp` CHAR(13),
		`age` TINYINT
		);
		
INSERT INTO `USER2` VALUES ('A101','김유신','010-1234-1111',23);
INSERT INTO `USER2` VALUES ('A102','김춘추','010-1234-2222',25);
INSERT INTO `USER2` VALUES ('A103','장보고','010-1234-3333',24);
INSERT INTO `USER2` VALUES ('A104','강감찬','010-1234-1111',27);

#실습하기 3-2
CREATE TABLE `USER3` (
		`uid`  VARCHAR(10) PRIMARY KEY,
		`name` VARCHAR(10),
		`hp` 	CHAR(13) UNIQUE,
		`age` TINYINT
		);

INSERT INTO `USER3` VALUES ('a101','김유신','010-1234-1111',23);
INSERT INTO `USER3` VALUES ('a102','김춘추','010-1234-2222',25);
INSERT INTO `USER3` VALUES ('a103','장보고','010-1234-3333',24);
INSERT INTO `USER3` VALUES ('a104','강감찬','010-1234-4444',27);
INSERT INTO `USER3` (`uid`, `name`, `age`) VALUES ('a105','이슌신',22);		

#실습하기 3-3
CREATE TABLE `USER4`(
	`seq`    INT AUTO_INCREMENT PRIMARY KEY,
	`name`   VARCHAR(10),
	`gender` TINYINT,
	`age`    INT,
	`addr`   VARCHAR(255)
	);
	
INSERT INTO `USER4` (`name`,`gender`,`age`,`addr`)
				 VALUES ('김유신',1,25,'김해시');
				 
DELETE FROM `USER4` WHERE `seq`=3;

#실습하기 3-4
CREATE TABLE `USER5` SELECT * FROM `USER4`;
SELECT * FROM `USER5`;

#실습하기 3-5
CREATE TABLE `USER6` LIKE `USER4`;

#실습하기 3-6
INSERT INTO `USER6` SELECT * FROM `USER4`;
INSERT INTO `USER6` (`name`,`gender`,`age`,`addr`) SELECT `name`,`gender`,`age`,`addr` FROM `USER4`;
SELECT * FROM `USER6`;