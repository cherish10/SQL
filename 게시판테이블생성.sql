#날짜 : 2021/03/29
#이름 :
#내용 : 게시판 ㅍ로젝트 테이블


#회원 테이블
CREATE TABLE `JBOARD_USER` (
	`uid`   VARCHAR(20) PRIMARY KEY,
	`pass`  VARCHAR(255),
	`name`  VARCHAR(20),
	`nick`  VARCHAR(20) UNIQUE,
	`email` VARCHAR(20) UNIQUE,
	`hp`    CHAR(13) 	  UNIQUE,
	`grade` TINYINT     DEFAULT 2,
	`zip`   CHAR(5),
	`addr1` VARCHAR(255),
	`addr2` VARCHAR(255),
	`regip` VARCHAR(20),
	`rdate` DATETIME
);

#약관 테이블
CREATE TABLE `JBOARD_TERMS` (
	`terms` 	 TEXT,
	`privacy` TEXT
);

#게시물 테이블
CREATE TABLE `JBOARD_ARTICLE` (
	`seq`     INT AUTO_INCREMENT PRIMARY KEY,
	`parent`  INT DEFAULT 0,
	`comment` TINYINT DEFAULT 0,
	`cate`	 VARCHAR(10) DEFAULT 'free',
	`title`   VARCHAR(255),
	`content` TEXT,
	`file`    TINYINT DEFAULT 0,
	`hit`     INT     DEFAULT 0,
	`uid`     VARCHAR(20),
	`regip`   VARCHAR(20),
	`rdate`   DATETIME
);
#파일 테이블
CREATE TABLE `JBOARD_FILE` (
	`seq`     	INT AUTO_INCREMENT PRIMARY KEY,
	`parent`  	INT,
	`oldName`	VARCHAR(255),
	`newName` 	VARCHAR(255),
	`download`	INT   DEFAULT 0,
	`rdate`	 	DATETIME
);

