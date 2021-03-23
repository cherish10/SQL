#날짜 : 2021/03/23
#이름 : 
#내용 : SQL 기본 실습하기

#실습하기 2-1
CREATE DATABASE `MYDB`;
DROP DATABASE `MYDB`;

#실슴하기 2-2
CREATE TABLE `USER1`(
	`uid`	 	VARCHAR(10),
	`name` 	VARCHAR(10),
	`hp` 		CHAR(13),
	`age`		TINYINT
);

DROP TABLE `USER1`;

#실습하기2-3
INSERT INTO `USER1` VALUES ('A101','김유신','010-1234-1111',25);
INSERT INTO `USER1` VALUES ('A102','김춘추','010-1234-2222',23);
INSERT INTO `USER1` VALUES ('A103','장보고','010-1234-3333',32);
INSERT INTO `USER1` (`age`, `name`, `uid`, `hp`) VALUES(45,'강감찬','A104','010-1234-4444');
INSERT INTO `USER1` SET `name`='이순신', `age`=51, `hp`='010-1234-5555', `uid`='A105';

#실습하기2-4
SELECT `uid`, `name`, `age`, `hp` FROM `USER1`;
SELECT `name`, uid, hp FROM `USER1`;
SELECT * FROM `USER1`;

#실습하기 2-5
UPDATE `USER1` SET `hp`='010-1234-1234';
UPDATE `USER1` SET 
						`uid`='B101',
						`name`='김유신'
					WHERE
						 `age` = 25;
UPDATE `USER1` SET
						`hp`='010-1234-1111'
					WHERE
						`name`='김유신';
UPDATE `USER1` SET
						`uid`='A102',
						`name`='김춘추',
						`hp`='010-1234-2222'
					WHERE
						`age`=23;

#실습하기 2-6					
DELETE FROM `USER1` WHERE `uid`='A101';
DELETE FROM `USER1` WHERE `uid`='A102' AND `age`=25;
DELETE FROM `USER1` WHERE `age`>=40;