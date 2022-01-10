-- --------------------------------------------------------
-- 호스트:                          127.0.0.1
-- 서버 버전:                        10.6.5-MariaDB - mariadb.org binary distribution
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- ridi 데이터베이스 구조 내보내기
DROP DATABASE IF EXISTS `ridi`;
CREATE DATABASE IF NOT EXISTS `ridi` /*!40100 DEFAULT CHARACTER SET utf8mb3 */;
USE `ridi`;

-- 테이블 ridi.author 구조 내보내기
DROP TABLE IF EXISTS `author`;
CREATE TABLE IF NOT EXISTS `author` (
  `a_value` int(11) NOT NULL AUTO_INCREMENT COMMENT '저자 고유값',
  `a_Name` varchar(20) NOT NULL COMMENT '저자 이름',
  `a_Nationality` varchar(20) NOT NULL COMMENT '국적',
  `a_Education` text NOT NULL COMMENT '저자 학력',
  `a_Career` text NOT NULL COMMENT '저자 경력',
  `a_Awards` text NOT NULL COMMENT '저자 수상경력',
  `a_Update` datetime NOT NULL COMMENT '작가 정보 수정날짜',
  `a_Explanation` text DEFAULT NULL COMMENT '저자 상세 설명',
  PRIMARY KEY (`a_value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- 테이블 데이터 ridi.author:~0 rows (대략적) 내보내기
DELETE FROM `author`;
/*!40000 ALTER TABLE `author` DISABLE KEYS */;
/*!40000 ALTER TABLE `author` ENABLE KEYS */;

-- 테이블 ridi.book 구조 내보내기
DROP TABLE IF EXISTS `book`;
CREATE TABLE IF NOT EXISTS `book` (
  `b_value` int(11) NOT NULL AUTO_INCREMENT COMMENT '도서 고유값',
  `ct_value` int(11) NOT NULL COMMENT '카테고리 고유값',
  `a_value` int(11) NOT NULL COMMENT '저자 고유값',
  `review_value` int(11) NOT NULL COMMENT '리뷰 고유값',
  `b_Name` varchar(100) NOT NULL COMMENT '도서 제목',
  `b_Grade` int(11) DEFAULT 0 COMMENT '도서 평균 평점',
  `b_GradeCount` int(11) DEFAULT 0 COMMENT '도서 평점 수',
  `b_Publisher` varchar(50) DEFAULT NULL COMMENT '도서 출판사',
  `b_Rental` int(11) NOT NULL DEFAULT 0 COMMENT '도서 대여금액',
  `b_RentalDis` int(11) DEFAULT NULL COMMENT '도서 대여할인율',
  `b_Price` int(11) NOT NULL COMMENT '도서 정가',
  `b_Sale` int(11) NOT NULL COMMENT '도서 판매가\r\n할인율 적용',
  `b_Discount` int(11) DEFAULT NULL COMMENT '도서 할인율',
  `b_BenefitS` datetime DEFAULT NULL COMMENT '도서 혜택기간 시작일',
  `b_BenefitF` datetime DEFAULT NULL COMMENT '혜택기간 마감일',
  `b_Infomation` varchar(100) NOT NULL COMMENT '도서 출간정보',
  `b_FileInfomation` varchar(100) NOT NULL COMMENT '도서 파일정보',
  `b_Listen` varchar(1) NOT NULL COMMENT '도서 듣기가능\r\nY/N',
  `b_Support` varchar(100) NOT NULL COMMENT '도서 지원기기',
  `b_ISBN` int(11) NOT NULL COMMENT '국제표준도서번호',
  `b_Introduction` text NOT NULL COMMENT '도서 작품 소개',
  `b_Review` text DEFAULT NULL COMMENT '도서 출판사 서평',
  `b_Purchase` int(11) DEFAULT 0 COMMENT '도서 구매 수\r\n베스트 셀러에 사용',
  `b_Total` int(11) NOT NULL COMMENT '도서 총 회차',
  PRIMARY KEY (`b_value`),
  KEY `FK_book_category` (`ct_value`),
  KEY `FK_book_author` (`a_value`),
  KEY `FK_book_review` (`review_value`),
  CONSTRAINT `FK_book_author` FOREIGN KEY (`a_value`) REFERENCES `author` (`a_value`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_book_category` FOREIGN KEY (`ct_value`) REFERENCES `category` (`ct_value`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_book_review` FOREIGN KEY (`review_value`) REFERENCES `review` (`review_value`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- 테이블 데이터 ridi.book:~0 rows (대략적) 내보내기
DELETE FROM `book`;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
/*!40000 ALTER TABLE `book` ENABLE KEYS */;

-- 테이블 ridi.cart 구조 내보내기
DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `b_value` int(11) NOT NULL COMMENT '도서 고유값',
  `member_value` int(11) NOT NULL COMMENT '회원 아이디 고유값',
  `ct_value` int(11) NOT NULL COMMENT '카테고리 고유값',
  `a_value` int(11) NOT NULL COMMENT '저자 고유값',
  `review_value` int(11) NOT NULL COMMENT '리뷰 고유값',
  `c_Date` datetime NOT NULL COMMENT '카트 등록날짜',
  KEY `FK_cart_book` (`b_value`),
  KEY `FK_cart_memberinfo` (`member_value`),
  KEY `FK_cart_category` (`ct_value`),
  KEY `FK_cart_author` (`a_value`),
  KEY `FK_cart_review` (`review_value`),
  CONSTRAINT `FK_cart_author` FOREIGN KEY (`a_value`) REFERENCES `author` (`a_value`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_cart_book` FOREIGN KEY (`b_value`) REFERENCES `book` (`b_value`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_cart_category` FOREIGN KEY (`ct_value`) REFERENCES `category` (`ct_value`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_cart_memberinfo` FOREIGN KEY (`member_value`) REFERENCES `memberinfo` (`member_value`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_cart_review` FOREIGN KEY (`review_value`) REFERENCES `review` (`review_value`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- 테이블 데이터 ridi.cart:~0 rows (대략적) 내보내기
DELETE FROM `cart`;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;

-- 테이블 ridi.category 구조 내보내기
DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `ct_value` int(11) NOT NULL COMMENT '카테고리 고유값',
  `ct_Genre` varchar(20) NOT NULL COMMENT '카테고리 장르',
  `ct_DetailGenre` varchar(20) NOT NULL COMMENT '카테고리 세부장르',
  PRIMARY KEY (`ct_value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- 테이블 데이터 ridi.category:~0 rows (대략적) 내보내기
DELETE FROM `category`;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
/*!40000 ALTER TABLE `category` ENABLE KEYS */;

-- 테이블 ridi.coupon 구조 내보내기
DROP TABLE IF EXISTS `coupon`;
CREATE TABLE IF NOT EXISTS `coupon` (
  `coupon_value` int(11) NOT NULL AUTO_INCREMENT COMMENT '쿠폰 고유값',
  `coupon_Number` text NOT NULL COMMENT '쿠폰번호',
  `coupon_Date` datetime NOT NULL COMMENT '쿠폰 등록일',
  `coupon_Name` varchar(100) NOT NULL COMMENT '쿠폰명',
  `coupon_Benefit` varchar(50) NOT NULL COMMENT '혜택',
  `coupon_Condition` varchar(100) NOT NULL COMMENT '사용조건',
  `coupon_Start` datetime NOT NULL COMMENT '쿠폰 시작일',
  `coupon_Deadline` datetime NOT NULL COMMENT '사용기한',
  `coupon_Gift` varchar(50) DEFAULT NULL COMMENT '선물',
  PRIMARY KEY (`coupon_value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- 테이블 데이터 ridi.coupon:~0 rows (대략적) 내보내기
DELETE FROM `coupon`;
/*!40000 ALTER TABLE `coupon` DISABLE KEYS */;
/*!40000 ALTER TABLE `coupon` ENABLE KEYS */;

-- 테이블 ridi.eventnoti 구조 내보내기
DROP TABLE IF EXISTS `eventnoti`;
CREATE TABLE IF NOT EXISTS `eventnoti` (
  `member_value` int(11) NOT NULL COMMENT '회원 아이디 고유값',
  `eN_Normal` int(11) DEFAULT 1 COMMENT '일반 도서',
  `eN_Romance` int(11) DEFAULT 1 COMMENT '로맨스 단행본',
  `eN_RomanceSeries` int(11) DEFAULT 1 COMMENT '로맨스 연재',
  `eN_Fantasy` int(11) DEFAULT 1 COMMENT '판타지 단행본',
  `eN_FantasySeries` int(11) DEFAULT 1 COMMENT '판타지 연재',
  `eN_WebtoonPure` int(11) DEFAULT 1 COMMENT '순정 만화',
  `eN_WebtoonHQ` int(11) DEFAULT 1 COMMENT '할리퀸 만화',
  `eN_BLNovel` int(11) DEFAULT 1 COMMENT 'BL 소설 단행본',
  `eN_BLSeries` int(11) DEFAULT 1 COMMENT 'BL 소설 연재',
  `eN_BLWebtoon` int(11) DEFAULT 1 COMMENT 'BL 만화',
  `eN_AdultAll` int(11) DEFAULT 1 COMMENT '19세 관람가 전체',
  `eN_AdultWebtoon` int(11) DEFAULT 1 COMMENT '성인 만화',
  `eN_AdultNovel` int(11) DEFAULT 1 COMMENT '성인 라이트 노벨',
  KEY `FK_eventnoti_memberinfo` (`member_value`),
  CONSTRAINT `FK_eventnoti_memberinfo` FOREIGN KEY (`member_value`) REFERENCES `memberinfo` (`member_value`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- 테이블 데이터 ridi.eventnoti:~0 rows (대략적) 내보내기
DELETE FROM `eventnoti`;
/*!40000 ALTER TABLE `eventnoti` DISABLE KEYS */;
/*!40000 ALTER TABLE `eventnoti` ENABLE KEYS */;

-- 테이블 ridi.library 구조 내보내기
DROP TABLE IF EXISTS `library`;
CREATE TABLE IF NOT EXISTS `library` (
  `member_value` int(11) NOT NULL COMMENT '회원 아이디 고유값',
  `b_value` int(11) NOT NULL COMMENT '도서 고유값',
  `ct_value` int(11) NOT NULL COMMENT '카테고리 고유값',
  `a_value` int(11) NOT NULL COMMENT '저자 고유값',
  `review_value` int(11) NOT NULL COMMENT '리뷰 고유값',
  `lib_Round` int(11) DEFAULT NULL COMMENT '내가 현재까지 본 회차',
  KEY `FK_library_memberinfo` (`member_value`),
  KEY `FK_library_book` (`b_value`),
  KEY `FK_library_category` (`ct_value`),
  KEY `FK_library_author` (`a_value`),
  KEY `FK_library_review` (`review_value`),
  CONSTRAINT `FK_library_author` FOREIGN KEY (`a_value`) REFERENCES `author` (`a_value`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_library_book` FOREIGN KEY (`b_value`) REFERENCES `book` (`b_value`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_library_category` FOREIGN KEY (`ct_value`) REFERENCES `category` (`ct_value`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_library_memberinfo` FOREIGN KEY (`member_value`) REFERENCES `memberinfo` (`member_value`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_library_review` FOREIGN KEY (`review_value`) REFERENCES `review` (`review_value`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- 테이블 데이터 ridi.library:~0 rows (대략적) 내보내기
DELETE FROM `library`;
/*!40000 ALTER TABLE `library` DISABLE KEYS */;
/*!40000 ALTER TABLE `library` ENABLE KEYS */;

-- 테이블 ridi.management 구조 내보내기
DROP TABLE IF EXISTS `management`;
CREATE TABLE IF NOT EXISTS `management` (
  `member_value` int(11) NOT NULL COMMENT '회원 아이디 고유값',
  `mng_Device` text NOT NULL COMMENT '기기',
  `mng_Date` datetime NOT NULL COMMENT '기기 등록일',
  `mng_UseDate` datetime NOT NULL COMMENT '최근 사용일',
  KEY `FK_management_memberinfo` (`member_value`),
  CONSTRAINT `FK_management_memberinfo` FOREIGN KEY (`member_value`) REFERENCES `memberinfo` (`member_value`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- 테이블 데이터 ridi.management:~0 rows (대략적) 내보내기
DELETE FROM `management`;
/*!40000 ALTER TABLE `management` DISABLE KEYS */;
/*!40000 ALTER TABLE `management` ENABLE KEYS */;

-- 테이블 ridi.memberinfo 구조 내보내기
DROP TABLE IF EXISTS `memberinfo`;
CREATE TABLE IF NOT EXISTS `memberinfo` (
  `member_value` int(11) NOT NULL AUTO_INCREMENT COMMENT '회원 아이디 고유값',
  `member_Id` varchar(20) NOT NULL COMMENT '회원아이디',
  `member_Pw` varchar(255) NOT NULL COMMENT '회원 비밀번호',
  `member_Email` text NOT NULL COMMENT '회원 이메일',
  `member_Name` varchar(20) NOT NULL COMMENT '회원 이름',
  `member_Year` varchar(4) DEFAULT NULL COMMENT '회원 출생년도',
  `member_Sex` varchar(1) DEFAULT NULL COMMENT '회원 성별',
  `member_SignDate` datetime NOT NULL COMMENT '회원가입일',
  `member_LoginDate` datetime NOT NULL COMMENT '마지막 접속일',
  PRIMARY KEY (`member_value`),
  UNIQUE KEY `member_Email` (`member_Email`) USING HASH
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- 테이블 데이터 ridi.memberinfo:~0 rows (대략적) 내보내기
DELETE FROM `memberinfo`;
/*!40000 ALTER TABLE `memberinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `memberinfo` ENABLE KEYS */;

-- 테이블 ridi.mycoupon 구조 내보내기
DROP TABLE IF EXISTS `mycoupon`;
CREATE TABLE IF NOT EXISTS `mycoupon` (
  `coupon_value` int(11) NOT NULL COMMENT '쿠폰 고유값',
  `member_value` int(11) NOT NULL COMMENT '회원 아이디 고유값',
  `mc_Date` datetime NOT NULL COMMENT '쿠폰 등록일',
  KEY `FK_mycoupon_memberinfo` (`member_value`),
  KEY `FK_mycoupon_coupon` (`coupon_value`),
  CONSTRAINT `FK_mycoupon_coupon` FOREIGN KEY (`coupon_value`) REFERENCES `coupon` (`coupon_value`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_mycoupon_memberinfo` FOREIGN KEY (`member_value`) REFERENCES `memberinfo` (`member_value`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- 테이블 데이터 ridi.mycoupon:~0 rows (대략적) 내보내기
DELETE FROM `mycoupon`;
/*!40000 ALTER TABLE `mycoupon` DISABLE KEYS */;
/*!40000 ALTER TABLE `mycoupon` ENABLE KEYS */;

-- 테이블 ridi.myreview 구조 내보내기
DROP TABLE IF EXISTS `myreview`;
CREATE TABLE IF NOT EXISTS `myreview` (
  `member_value` int(11) NOT NULL COMMENT '회원 아이디 고유값',
  `review_value` int(11) NOT NULL COMMENT '리뷰 고유값',
  KEY `FK_myreview_memberinfo` (`member_value`),
  KEY `FK_myreview_review` (`review_value`),
  CONSTRAINT `FK_myreview_memberinfo` FOREIGN KEY (`member_value`) REFERENCES `memberinfo` (`member_value`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_myreview_review` FOREIGN KEY (`review_value`) REFERENCES `review` (`review_value`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- 테이블 데이터 ridi.myreview:~0 rows (대략적) 내보내기
DELETE FROM `myreview`;
/*!40000 ALTER TABLE `myreview` DISABLE KEYS */;
/*!40000 ALTER TABLE `myreview` ENABLE KEYS */;

-- 테이블 ridi.notification 구조 내보내기
DROP TABLE IF EXISTS `notification`;
CREATE TABLE IF NOT EXISTS `notification` (
  `member_value` int(11) NOT NULL COMMENT '회원 아이디 고유값',
  `noti_Type` varchar(20) NOT NULL COMMENT '알림 타입',
  `noti_Title` varchar(200) NOT NULL COMMENT '알림 제목',
  `noti_Time` datetime NOT NULL COMMENT '알림 보낸 시간',
  `noti_URL` varchar(200) NOT NULL COMMENT '알림 URL',
  `noti_Check` int(11) DEFAULT 0 COMMENT '알림 읽음 체크',
  KEY `FK_notification_memberinfo` (`member_value`),
  CONSTRAINT `FK_notification_memberinfo` FOREIGN KEY (`member_value`) REFERENCES `memberinfo` (`member_value`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- 테이블 데이터 ridi.notification:~0 rows (대략적) 내보내기
DELETE FROM `notification`;
/*!40000 ALTER TABLE `notification` DISABLE KEYS */;
/*!40000 ALTER TABLE `notification` ENABLE KEYS */;

-- 테이블 ridi.preference 구조 내보내기
DROP TABLE IF EXISTS `preference`;
CREATE TABLE IF NOT EXISTS `preference` (
  `b_value` int(11) NOT NULL COMMENT '도서 고유값',
  `member_value` int(11) NOT NULL COMMENT '회원 아이디 고유값',
  `ct_value` int(11) NOT NULL COMMENT '카테고리 고유값',
  `a_value` int(11) NOT NULL COMMENT '저자 고유값',
  `review_value` int(11) NOT NULL COMMENT '리뷰 고유값',
  KEY `FK_preference_book` (`b_value`),
  KEY `FK_preference_memberinfo` (`member_value`),
  KEY `FK_preference_category` (`ct_value`),
  KEY `FK_preference_author` (`a_value`),
  KEY `FK_preference_review` (`review_value`),
  CONSTRAINT `FK_preference_author` FOREIGN KEY (`a_value`) REFERENCES `author` (`a_value`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_preference_book` FOREIGN KEY (`b_value`) REFERENCES `book` (`b_value`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_preference_category` FOREIGN KEY (`ct_value`) REFERENCES `category` (`ct_value`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_preference_memberinfo` FOREIGN KEY (`member_value`) REFERENCES `memberinfo` (`member_value`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_preference_review` FOREIGN KEY (`review_value`) REFERENCES `review` (`review_value`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- 테이블 데이터 ridi.preference:~0 rows (대략적) 내보내기
DELETE FROM `preference`;
/*!40000 ALTER TABLE `preference` DISABLE KEYS */;
/*!40000 ALTER TABLE `preference` ENABLE KEYS */;

-- 테이블 ridi.review 구조 내보내기
DROP TABLE IF EXISTS `review`;
CREATE TABLE IF NOT EXISTS `review` (
  `review_value` int(11) NOT NULL AUTO_INCREMENT COMMENT '리뷰 고유값',
  `review_ID` varchar(20) NOT NULL COMMENT '등록자 아이디',
  `review_Date` datetime DEFAULT NULL COMMENT '리뷰 등록일',
  `review_Contents` text DEFAULT NULL COMMENT '리뷰 내용',
  `review_Grade` int(11) DEFAULT NULL COMMENT '리뷰 평점',
  PRIMARY KEY (`review_value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- 테이블 데이터 ridi.review:~0 rows (대략적) 내보내기
DELETE FROM `review`;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
/*!40000 ALTER TABLE `review` ENABLE KEYS */;

-- 테이블 ridi.ridicash 구조 내보내기
DROP TABLE IF EXISTS `ridicash`;
CREATE TABLE IF NOT EXISTS `ridicash` (
  `member_value` int(11) NOT NULL COMMENT '회원 아이디 고유값',
  `cash_Cash` int(11) DEFAULT 0 COMMENT '내 리디캐시',
  `cash_Autocash` int(11) DEFAULT NULL COMMENT '캐시 자동충전 금액',
  `cash_AutoDate` datetime DEFAULT NULL COMMENT '자동결제 예정일',
  `cash_Division` varchar(50) DEFAULT NULL COMMENT '결제내역 구분',
  `cash_Charge` int(11) DEFAULT NULL COMMENT '충전금액',
  `cash_save` int(11) NOT NULL COMMENT '포인트 적립률',
  `cash_Point` int(11) DEFAULT 0 COMMENT '적립 포인트',
  `cash_Pay` text NOT NULL COMMENT '결제수단',
  KEY `FK_ridicash_memberinfo` (`member_value`),
  CONSTRAINT `FK_ridicash_memberinfo` FOREIGN KEY (`member_value`) REFERENCES `memberinfo` (`member_value`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- 테이블 데이터 ridi.ridicash:~0 rows (대략적) 내보내기
DELETE FROM `ridicash`;
/*!40000 ALTER TABLE `ridicash` DISABLE KEYS */;
/*!40000 ALTER TABLE `ridicash` ENABLE KEYS */;

-- 테이블 ridi.wish 구조 내보내기
DROP TABLE IF EXISTS `wish`;
CREATE TABLE IF NOT EXISTS `wish` (
  `b_value` int(11) NOT NULL COMMENT '도서 고유값',
  `member_value` int(11) NOT NULL COMMENT '회원 아이디 고유값',
  `ct_value` int(11) NOT NULL COMMENT '카테고리 고유값',
  `a_value` int(11) NOT NULL COMMENT '저자 고유값',
  `review_value` int(11) NOT NULL COMMENT '리뷰 고유값',
  `w_Date` datetime NOT NULL COMMENT '위시리스트 등록날짜',
  KEY `FK_wish_book` (`b_value`),
  KEY `FK_wish_memberinfo` (`member_value`),
  KEY `FK_wish_category` (`ct_value`),
  KEY `FK_wish_author` (`a_value`),
  KEY `FK_wish_review` (`review_value`),
  CONSTRAINT `FK_wish_author` FOREIGN KEY (`a_value`) REFERENCES `author` (`a_value`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_wish_book` FOREIGN KEY (`b_value`) REFERENCES `book` (`b_value`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_wish_category` FOREIGN KEY (`ct_value`) REFERENCES `category` (`ct_value`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_wish_memberinfo` FOREIGN KEY (`member_value`) REFERENCES `memberinfo` (`member_value`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_wish_review` FOREIGN KEY (`review_value`) REFERENCES `review` (`review_value`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- 테이블 데이터 ridi.wish:~0 rows (대략적) 내보내기
DELETE FROM `wish`;
/*!40000 ALTER TABLE `wish` DISABLE KEYS */;
/*!40000 ALTER TABLE `wish` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
