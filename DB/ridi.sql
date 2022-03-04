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
  `a_Name` varchar(20) DEFAULT NULL COMMENT '저자 이름',
  `a_Nationality` varchar(20) DEFAULT NULL COMMENT '국적',
  `a_Education` text DEFAULT NULL COMMENT '저자 학력',
  `a_Career` text DEFAULT NULL COMMENT '저자 경력',
  `a_Awards` text DEFAULT NULL COMMENT '저자 수상경력',
  `a_Update` datetime DEFAULT NULL COMMENT '작가 정보 수정날짜',
  `a_Explanation` text DEFAULT NULL COMMENT '저자 상세 설명',
  PRIMARY KEY (`a_value`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;

-- 테이블 데이터 ridi.author:~4 rows (대략적) 내보내기
DELETE FROM `author`;
/*!40000 ALTER TABLE `author` DISABLE KEYS */;
INSERT INTO `author` (`a_value`, `a_Name`, `a_Nationality`, `a_Education`, `a_Career`, `a_Awards`, `a_Update`, `a_Explanation`) VALUES
	(1, '조앤.K.롤링', '영국', '하버드대학교 명예박사\r\n엑시터대학교 명예박사\r\n엑시터대학교 불문학, 고전학 학사', '포르투갈 인카운터 영어학교 교사', '2012년 런던시 자유상\r\n2010년 안데르센 문학상\r\n2009년 레종도뇌르 슈발리에 훈장\r\n2001년 휴고상\r\n2000년 올해의 작가상', '2022-03-04 09:58:53', NULL),
	(2, '이충렬', '대한민국', NULL, NULL, NULL, '2022-03-04 09:58:54', '1954년 서울 출생, 1976년 대학 재학 중 부모님을 따라 미국으로 건너갔다. 1994년 [실천문학] 봄호에 단편소설 [가깝고도 먼 길]로 등단했고, 미국 로스앤젤레스에서 격월간지 [뿌리] 편집장을 지냈다. [샘이 깊은 물][한겨레][국민일보][경향신문] 등에 단편소설, 르포, 칼럼을 써왔다. 지은 책으로 [그림애호가로 가는 길][상속받은 나라에 가다] 등이 있다. 현재는 멕시코가 눈앞에 보이는 미국 애리조나 주 남쪽의 작은 국경도시에서 글을 쓰고 있다.\r\n1996년부터 간송미술관을 드나들었고, 2006년 간송 탄생 100주년 기념전에 출품된 22점의 국보와 보물을 보면서 ‘간송 전형필’의 일대기를 쓰겠다는 결심을 하여, 본격적으로 자료 조사와 집필에 매달렸다. 탈고 후 간송가의 출판 동의와 도판 협조, 감수를 받았다.\r\n일제강점기에 엄청난 유산을 물려받았으나 편안히 유유자적 사는 대신 아무도 가지 않은 길을 선택한 간송의 삶에 매료된 저자는, 놀라우리만치 집요한 자료 수집과 취재, 철저하고 세심한 고증을 바탕으로 간송의 삶과 시대를 완벽히 되살려냈다. 이 책은, 왜 간송이 문화재 수집에 전 재산과 젊음을 다 바쳤는지, 그에게 어떤 번민과 고통이 있었는지, 그를 사로잡은 한국의 미는 어떤 것이었는지를, 실제 간송의 마음을 들여다보듯 생생히 조명했다. 그의 탄생 100여 년이 지난 오늘, 우리는 비로소 간송을 만난다!\r\n\r\n'),
	(3, '프랭크 허버트', '미국', '워싱턴 대학교', NULL, NULL, '2022-03-04 09:58:55', '"프랭크 허버트\r\n프랭크 허버트는 1920년 미국 워싱턴 주 타코마에서 출생했다. 시애틀의 워싱턴 대학에서 수학했으며, 그 후로 온갖 직종에 종사했다. 텔레비전 카메라맨을 비롯하여 라디오 해설자, 굴 채취 잠수부, 정글 탐험 교관, 글쓰기 교사, 몇몇 신문의 리포터와 편집자로 일했다. 그 후 1952년 <<스타틀링 스토리스Startling Stories>>에 라는 제목의 작품을 발표하면서 SF 작가가 되었다. 그러나 한동안 큰 주목을 받지 못하다가 1965년 『듄』을 출간하면서 세간의 이목을 집중시켰다. 그리고 1986년 <듄 연대기>의 마지막 작품 『듄의 신전』을 집필중 66세로 사망하여 듄의 세계는 미완성으로 남겨졌다."'),
	(4, '댄 페냐', '미국', '캘리포니아 주립대학교 경영학 학사', '거스리그룹The Guthrie Group 회장', NULL, '2022-03-04 09:58:55', '미국인 사업가이자 투자가. 세계에서 가장 성공적인 하이퍼포먼스 비즈니스 성공 코치이자 수많은 기업가의 비즈니스 멘토다. 820달러로 사업을 시작해 4억 5천만 달러의 자산가치를 보유한 회사로 성장시킨 이력이 있다. 그의 기업가적 평판 때문에 ‘1조 달러의 사나이’라는 별칭이 붙었다.\r\n\r\n캘리포니아 주립대학에서 경영학을 전공하고, 월스트리트에서 금융분석가로 경력을 시작했다. 케네디 인더스트리, JPK 인더스트리, 그레이트웨스턴의 CEO를 역임했다. 현재 투자 컨소시엄 거스리그룹The Guthrie Group의 창립자이자 회장이다.\r\n\r\n댄 페냐의 방법론 ‘퀀텀 리프 어드밴티지QLA’ 세미나는 특히 미국과 캐나다, 유럽에서 수요가 많다. 유튜브 채널에서 성공적으로 수익을 창출하고 있고, 현재는 ‘The Trillion Dollar Man’이라는 프로그램을 운영하며 자신이 거주하는 성城에서 회당 참가비 2천만 원이 넘는 세미나를 개최한다.\r\n\r\n역 : 황성연\r\n\r\n한국에서 프랑스어를 공부했고, 미국 뉴욕주립대학교에서 국제정치학 석사 과정을 전공했다. 대한민국 외교부와 비영리단체 노사발전재단에서 잠시 근무하기도 했다. 지금은 작은 집 거실에서도 세상 이곳저곳을 여행하며 사유할 수 있게 해주는 세상의 수많은 책과 글을 좋아해서 번역가의 길을 걷고 있다. 글밥 아카데미 수료 후 바른번역 소속 번역가로 활동 중이다.\r\n\r\n역 : 최은아\r\n\r\n상명대학교 경제학과를 졸업한 후 교육회사에서 인사관리 및 교육프로그램 개발을 담당했다. 글밥 아카데미를 수료 후 현재 바른번역 소속 번역가로 활발히 활동 중이다. 글로 표현되지 않은 저자의 생각을 추리하는 데 흥미를 느끼고 독자가 저자의 생각을 온전히 흡수하도록 돕는 일에 사명감을 느낀다. 역서로는 『생각이 바뀌는 순간』, 『인생이 바뀌는 하루 3줄 감사의 기적』 등이 있다.');
/*!40000 ALTER TABLE `author` ENABLE KEYS */;

-- 테이블 ridi.book 구조 내보내기
DROP TABLE IF EXISTS `book`;
CREATE TABLE IF NOT EXISTS `book` (
  `b_value` int(11) NOT NULL AUTO_INCREMENT COMMENT '도서 고유값',
  `ct_value` int(11) NOT NULL COMMENT '카테고리 고유값',
  `a_value` int(11) NOT NULL COMMENT '저자 고유값',
  `b_img` varchar(200) DEFAULT NULL,
  `review_value` int(11) DEFAULT NULL COMMENT '리뷰 고유값',
  `b_Name` varchar(100) NOT NULL COMMENT '도서 제목',
  `b_Grade` int(11) DEFAULT 0 COMMENT '도서 평균 평점',
  `b_GradeCount` int(11) DEFAULT 0 COMMENT '도서 평점 수',
  `b_Publisher` varchar(50) DEFAULT NULL COMMENT '도서 출판사',
  `b_Rental` int(11) DEFAULT 0 COMMENT '도서 대여금액',
  `b_RentalDis` int(11) DEFAULT NULL COMMENT '도서 대여할인율',
  `b_Price` int(11) NOT NULL COMMENT '도서 정가',
  `b_Sale` int(11) DEFAULT NULL COMMENT '도서 판매가\r\n할인율 적용',
  `b_Discount` int(11) DEFAULT NULL COMMENT '도서 할인율',
  `b_BenefitS` datetime NOT NULL COMMENT '도서 혜택기간 시작일',
  `b_BenefitF` datetime NOT NULL COMMENT '혜택기간 마감일',
  `b_Infomation` varchar(100) DEFAULT NULL COMMENT '도서 출간정보',
  `b_FileInfomation` varchar(100) DEFAULT NULL COMMENT '도서 파일정보',
  `b_Listen` varchar(1) DEFAULT NULL COMMENT '도서 듣기가능\r\nY/N',
  `b_Support` varchar(100) DEFAULT NULL COMMENT '도서 지원기기',
  `b_ISBN` int(11) DEFAULT NULL COMMENT '국제표준도서번호',
  `b_Introduction` text DEFAULT NULL COMMENT '도서 작품 소개',
  `b_Review` text DEFAULT NULL COMMENT '도서 출판사 서평',
  `b_Purchase` int(11) DEFAULT 0 COMMENT '도서 구매 수\r\n베스트 셀러에 사용',
  `b_Total` int(11) NOT NULL COMMENT '도서 총 회차',
  `b_addDate` datetime NOT NULL COMMENT '도서 추가일',
  `b_sellDate` datetime DEFAULT NULL COMMENT '최근 구매일',
  PRIMARY KEY (`b_value`),
  KEY `FK_book_category` (`ct_value`),
  KEY `FK_book_author` (`a_value`),
  CONSTRAINT `FK2_ct_value` FOREIGN KEY (`ct_value`) REFERENCES `category` (`ct_value`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_book_author` FOREIGN KEY (`a_value`) REFERENCES `author` (`a_value`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3;

-- 테이블 데이터 ridi.book:~13 rows (대략적) 내보내기
DELETE FROM `book`;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` (`b_value`, `ct_value`, `a_value`, `b_img`, `review_value`, `b_Name`, `b_Grade`, `b_GradeCount`, `b_Publisher`, `b_Rental`, `b_RentalDis`, `b_Price`, `b_Sale`, `b_Discount`, `b_BenefitS`, `b_BenefitF`, `b_Infomation`, `b_FileInfomation`, `b_Listen`, `b_Support`, `b_ISBN`, `b_Introduction`, `b_Review`, `b_Purchase`, `b_Total`, `b_addDate`, `b_sellDate`) VALUES
	(1, 3, 1, '../images/저주받은아이L.webp', 1, '해리포터 저주받은 아이', 3, 91, 'Pottermore', 0, NULL, 20000, 0, NULL, '2022-02-27 16:28:07', '2022-02-27 16:28:08', NULL, NULL, NULL, NULL, NULL, '오리지널 웨스트엔드 프로덕션의 <해리 포터와 저주받은 아이> 공식 대본.\r\n해리 포터로 사는 일은 늘 힘들고, 어른이 되어서도 상황은 크게 나아지지 않는다. 그는 마법부 직원으로 격무에 시달리면서도 한 여자의 남편이자 학교에 다니는 세 자녀의 아빠로서 책임을 다해야 한다.\r\n\r\n게다가 과거는 과거에만 머물지 않는 법. 해리는 불쑥불쑥 찾아오는 과거와 씨름하며 괴로워하고 그사이 그의 막내아들 알버스는 유명한 부모를 둔 탓에 자신에게 쏟아지는 높은 기대에 힘겨워한다. 과거와 현재가 불길하게 뒤섞이자 이 부자는 불편한 진실을 깨닫는다. 때로는 예기치 못한 곳에서 어둠이 나타난다는 사실을.', NULL, 45345, 1, '2022-02-24 15:30:00', '2022-02-28 09:34:33'),
	(2, 3, 1, '../images/신비한동물사전L.webp', 1, '신비한 동물사전', 5, 50, 'Pottermore', 0, NULL, 50000, 0, NULL, '2022-01-27 00:14:45', '2022-01-27 00:14:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4442452, 80, '2022-02-25 12:30:00', '2022-02-26 09:34:35'),
	(3, 3, 3, '../images/듄1L.webp', 1, '듄1', 4, 329, '황금가지', 0, NULL, 15000, 0, NULL, '2022-02-27 16:27:46', '2022-02-27 16:27:47', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1261, 6, '2022-02-25 12:30:00', '2022-02-15 09:34:36'),
	(4, 3, 1, '../images/마법사의돌L.webp', 1, '해리포터 마법사의 돌', 4, 129, 'Pottermore', 0, NULL, 30000, 0, NULL, '2022-02-27 16:31:01', '2022-02-27 16:31:01', NULL, NULL, NULL, NULL, NULL, '해리 포터 세대의, 해리 포터 세대를 위한, 해리 포터 세대에 의한 새 번역!', NULL, 1235, 1, '2022-02-25 14:00:00', '2022-03-03 09:34:36'),
	(5, 34, 4, '../images/슈퍼석세스L.webp', 1, '슈퍼석세스', 4, 165, '한빛비즈', 0, NULL, 12000, 0, NULL, '2022-02-27 16:32:44', '2022-02-27 16:32:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7823, 2, '2022-02-26 14:02:15', '2022-03-03 09:34:37'),
	(6, 34, 2, '../images/신부이태석L.webp', 1, '신부 이태석', 5, 500, '김영사', 0, NULL, 15000, 0, NULL, '2022-02-27 16:32:58', '2022-02-27 16:32:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4698231, 1, '2022-02-26 14:05:12', '2022-03-01 09:34:38'),
	(7, 3, 1, '../images/호그와트L.webp', 1, '호그와트', 4, 561, 'Pottermore', 0, NULL, 30000, 0, NULL, '2022-02-27 16:34:36', '2022-02-27 16:34:36', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7831235, 1, '2022-02-28 15:20:15', '2022-03-01 09:34:38'),
	(8, 3, 4, '../images/웰씽킹L.webp', 1, '웰씽킹', 0, 741, '다산북스', 0, NULL, 13000, 0, NULL, '2022-02-27 16:34:53', '2022-02-27 16:34:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12335, 3, '2022-02-28 19:15:23', '2022-02-02 09:34:39'),
	(9, 3, 1, '../images/혼혈왕자L.webp', 1, '해리포터 혼혈왕자', 3, 120, 'Pottermore', 0, NULL, 10000, 0, NULL, '2022-02-27 16:37:05', '2022-02-27 16:37:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 456783, 1, '2022-02-28 19:16:00', '2022-02-15 09:34:39'),
	(10, 3, 3, '../images/듄2L.webp', 1, '듄2', 4, 329, '황금가지', 0, NULL, 15000, 0, NULL, '2022-02-27 16:27:46', '2022-02-27 16:27:47', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 123123, 6, '2022-02-28 19:18:12', '2022-01-30 09:34:40'),
	(11, 3, 3, '../images/듄3L.webp', 1, '듄3', 4, 329, '황금가지', 0, NULL, 15000, 0, NULL, '2022-02-27 16:27:46', '2022-02-27 16:27:47', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 45731, 6, '2022-03-01 19:20:19', '2022-03-02 09:34:40'),
	(12, 3, 3, '../images/듄4L.webp', 1, '듄4', 4, 329, '황금가지', 0, NULL, 15000, 0, NULL, '2022-02-27 16:27:46', '2022-02-27 16:27:47', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12376, 6, '2022-03-01 12:05:21', '2022-03-03 09:34:41'),
	(13, 3, 3, '../images/듄5L.webp', 1, '듄5', 4, 329, '황금가지', 0, NULL, 15000, 0, NULL, '2022-02-27 16:27:46', '2022-02-27 16:27:47', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1237896, 6, '2022-03-02 15:21:18', '2022-02-17 09:34:41');
/*!40000 ALTER TABLE `book` ENABLE KEYS */;

-- 테이블 ridi.cart 구조 내보내기
DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `b_value` int(11) NOT NULL COMMENT '도서 고유값',
  `member_value` int(11) NOT NULL COMMENT '회원 아이디 고유값'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- 테이블 데이터 ridi.cart:~0 rows (대략적) 내보내기
DELETE FROM `cart`;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;

-- 테이블 ridi.category 구조 내보내기
DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `ct_value` int(11) NOT NULL AUTO_INCREMENT COMMENT '카테고리 고유값',
  `ct_Genre` varchar(20) NOT NULL COMMENT '카테고리 장르',
  `ct_DetailGenre` varchar(20) NOT NULL COMMENT '카테고리 세부장르',
  PRIMARY KEY (`ct_value`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8mb3;

-- 테이블 데이터 ridi.category:~168 rows (대략적) 내보내기
DELETE FROM `category`;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` (`ct_value`, `ct_Genre`, `ct_DetailGenre`) VALUES
	(1, '소설', '소설 전체'),
	(2, '소설', '한국소설'),
	(3, '소설', '영미소설'),
	(4, '소설', '일본 소설'),
	(5, '소설', '중국 소설'),
	(6, '소설', '북유럽 소설'),
	(7, '소설', '독일 소설'),
	(8, '소설', '프랑스 소설'),
	(9, '소설', '기타 국가 소설'),
	(10, '소설', '추리/미스터리/스릴러'),
	(11, '소설', 'SF 소설'),
	(12, '소설', '국내 판타지 소설'),
	(13, '소설', '해외 판타지 소설'),
	(14, '소설', '해외 역사소설'),
	(15, '소설', '대체 역사소설'),
	(16, '소설', '동양 고전문학'),
	(17, '소설', '서양 고전문학'),
	(18, '소설', '국내 역사소설'),
	(19, '경영/경제', '경영/경제 전체'),
	(20, '경영/경제', '경제일반'),
	(21, '경영/경제', '마케팅/세일즈'),
	(22, '경영/경제', '재테크/금융/부동산'),
	(23, '경영/경제', 'CEO/리더십'),
	(24, '인문/사회/역사', '인문'),
	(25, '인문/사회/역사', '정치/사회'),
	(26, '인문/사회/역사', '예술/문화'),
	(27, '인문/사회/역사', '역사'),
	(28, '인문/사회/역사', '인문/사회/역사 전체'),
	(29, '자기계발', '성공/삶의자세'),
	(30, '자기계발', '기획/창의/리더십'),
	(31, '자기계발', '설득/화술/협상'),
	(32, '자기계발', '취업/창업'),
	(33, '자기계발', '여성'),
	(34, '에세이/시', '에세이/시 전체'),
	(35, '자기계발', '자기계발 전체'),
	(36, '자기계발', '인간관계'),
	(37, '에세이/시', '에세이'),
	(38, '에세이/시', '시'),
	(39, '여행', '국내여행'),
	(40, '여행', '해외여행'),
	(41, '여행', '여행 전체'),
	(42, '종교', '불교'),
	(43, '종교', '기독교(개신교)'),
	(44, '종교', '가톨릭'),
	(45, '종교', '종교일반'),
	(46, '종교', '종교 전체'),
	(47, '종교', '기타'),
	(48, '외국어', '비즈니스영어'),
	(49, '외국어', '일반영어'),
	(50, '외국어', '제2외국어'),
	(51, '외국어', '어학시험'),
	(52, '외국어', '외국어 전체'),
	(53, '과학', '과학일반'),
	(54, '과학', '수학'),
	(55, '과학', '자연과학'),
	(56, '과학', '응용과학'),
	(57, '과학', '과학 전체'),
	(58, '진로/교육/교재', '공부법'),
	(59, '진로/교육/교재', '특목고/자사고'),
	(60, '진로/교육/교재', '대입 수시'),
	(61, '진로/교육/교재', '대입 논술'),
	(62, '진로/교육/교재', '대입 합격수기'),
	(63, '진로/교육/교재', '진로 탐색'),
	(64, '진로/교육/교재', '유학/MBA'),
	(65, '진로/교육/교재', '교재/수험서'),
	(66, '진로/교육/교재', '진로/교육/교재 전체'),
	(67, '컴퓨터/IT', 'IT 비즈니스'),
	(68, '컴퓨터/IT', '개발/프로그래밍'),
	(69, '컴퓨터/IT', '컴퓨터/앱 활용'),
	(70, '컴퓨터/IT', 'IT자격증'),
	(71, '컴퓨터/IT', 'IT해외원서'),
	(72, '컴퓨터/IT', '컴퓨터/IT 전체'),
	(73, '건강/다이어트', '다이어트/운동/스포츠'),
	(74, '건강/다이어트', '스타일/뷰티'),
	(75, '건강/다이어트', '건강'),
	(76, '건강/다이어트', '건강/다이어트 전체'),
	(77, '가정/생활', '결혼/임신/출산'),
	(78, '가정/생활', '육아/자녀교육'),
	(79, '가정/생활', '취미/요리/기타'),
	(80, '가정/생활', '가정/생활 전체'),
	(81, '어린이/청소년', '유아'),
	(82, '어린이/청소년', '어린이'),
	(83, '어린이/청소년', '청소년'),
	(84, '어린이/청소년', '어린이/청소년 전체'),
	(85, '해외도서', '해외도서 전체'),
	(86, '잡지', '경영/재테크'),
	(87, '잡지', '문학/교양'),
	(88, '잡지', '여성/패션/뷰티'),
	(89, '잡지', '디자인/예술'),
	(90, '잡지', '건강/스포츠'),
	(91, '잡지', '취미/여행/요리'),
	(92, '잡지', '과학/IT'),
	(93, '잡지', '종교'),
	(94, '잡지', '만화'),
	(95, '잡지', '성인(19+)'),
	(96, '잡지', '잡지 전체'),
	(97, '로맨스 e북', '현대물'),
	(98, '로맨스 e북', '역사/시대물'),
	(99, '로맨스 e북', '판타지물'),
	(100, '로맨스 e북', '할리퀸 소설'),
	(101, '로맨스 e북', '19+'),
	(102, '로맨스 e북', 'TL소설'),
	(103, '로맨스 e북', '섹슈얼 로맨스'),
	(104, '로맨스 e북', '하이틴'),
	(105, '로맨스 e북', '로맨스 e북 전체'),
	(106, '로맨스 웹소설', '현대물'),
	(107, '로맨스 웹소설', '역사/시대물'),
	(108, '로맨스 웹소설', '판타지물'),
	(109, '로맨스 웹소설', '로맨스 웹소설 전체'),
	(110, '판타지 e북', '정통 판타지'),
	(111, '판타지 e북', '퓨전 판타지'),
	(112, '판타지 e북', '현대 판타지'),
	(113, '판타지 e북', '게임 판타지'),
	(114, '판타지 e북', '대체 역사물'),
	(115, '판타지 e북', '스포츠물'),
	(116, '판타지 e북', '신무협'),
	(117, '판타지 e북', '전통 무협'),
	(118, '판타지 e북', '판타지 e북 전체'),
	(119, '판타지 웹소설', '정통 판타지'),
	(120, '판타지 웹소설', '퓨전 판타지'),
	(121, '판타지 웹소설', '현대 판타지'),
	(122, '판타지 웹소설', '무협 소설'),
	(123, '판타지 웹소설', '판타지 웹소설 전체'),
	(124, '만화 e북', '국내 순정'),
	(125, '만화 e북', '해외 순정'),
	(126, '만화 e북', '드라마'),
	(127, '만화 e북', '성인'),
	(128, '만화 e북', '할리퀸'),
	(129, '만화 e북', '무협'),
	(130, '만화 e북', '학원'),
	(131, '만화 e북', '액션'),
	(132, '만화 e북', '판타지/SF'),
	(133, '만화 e북', '스포츠'),
	(134, '만화 e북', '코믹'),
	(135, '만화 e북', 'GL'),
	(136, '만화 e북', '공포/추리'),
	(137, '라이트노벨', '국내 라노벨'),
	(138, '만화 e북', '만화 e북 전체'),
	(139, '만화 e북', '만화잡지'),
	(140, '라이트노벨', '해외 라노벨'),
	(141, '라이트노벨', '성인 라노벨'),
	(142, '라이트노벨', 'TL'),
	(143, '라이트노벨', '라이트노벨 전체'),
	(144, '웹툰', '국내 순정'),
	(145, '웹툰', '해외 순정'),
	(146, '웹툰', '드라마'),
	(147, '웹툰', '성인'),
	(148, '웹툰', '액션/무협'),
	(149, '웹툰', '판타지/SF'),
	(150, '웹툰', '스포츠/학원'),
	(151, '웹툰', '코믹'),
	(152, '웹툰', 'GL'),
	(153, '웹툰', '공포/추리'),
	(154, '웹툰', '웹툰 전체'),
	(155, 'BL소설 e북', '현대물'),
	(156, 'BL소설 e북', '판타지물'),
	(157, 'BL소설 e북', '역사/시대물'),
	(158, 'BL 웹소설', '현대물'),
	(159, 'BL소설 e북', 'BL소설 e북 전체'),
	(160, 'BL소설 e북', '해외 소설'),
	(161, 'BL 웹소설', '판타지물'),
	(162, 'BL 웹소설', '역사/시대물'),
	(163, 'BL 웹소설', 'BL 웹소설 전체'),
	(164, 'BL 만화 e북', '국내 만화'),
	(165, 'BL 만화 e북', '해외 만화'),
	(166, 'BL 만화 e북', 'BL 만화 e북 전체'),
	(167, 'BL 웹툰', 'BL 웹툰 전체'),
	(168, 'BL 웹툰', '웹툰');
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
  `a_value` int(11) NOT NULL COMMENT '저자 고유값',
  `review_value` int(11) NOT NULL COMMENT '리뷰 고유값',
  `lib_Round` int(11) DEFAULT NULL COMMENT '내가 현재까지 본 회차',
  KEY `FK_library_memberinfo` (`member_value`),
  KEY `FK_library_book` (`b_value`),
  KEY `FK_library_author` (`a_value`),
  KEY `FK_library_review` (`review_value`),
  CONSTRAINT `FK_library_author` FOREIGN KEY (`a_value`) REFERENCES `author` (`a_value`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_library_book` FOREIGN KEY (`b_value`) REFERENCES `book` (`b_value`) ON DELETE NO ACTION ON UPDATE NO ACTION,
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
  `member_Year` int(11) DEFAULT NULL COMMENT '회원 출생년도',
  `member_Sex` varchar(1) DEFAULT NULL COMMENT '회원 성별',
  `member_SignDate` datetime NOT NULL COMMENT '회원가입일',
  `member_LoginDate` datetime NOT NULL COMMENT '마지막 접속일',
  `member_status` int(11) DEFAULT 0 COMMENT '회원 상태\r\n0 -> 회원 가입상태\r\n1 -> 회원 탈퇴상태',
  PRIMARY KEY (`member_value`),
  UNIQUE KEY `member_Email` (`member_Email`) USING HASH
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;

-- 테이블 데이터 ridi.memberinfo:~2 rows (대략적) 내보내기
DELETE FROM `memberinfo`;
/*!40000 ALTER TABLE `memberinfo` DISABLE KEYS */;
INSERT INTO `memberinfo` (`member_value`, `member_Id`, `member_Pw`, `member_Email`, `member_Name`, `member_Year`, `member_Sex`, `member_SignDate`, `member_LoginDate`, `member_status`) VALUES
	(1, '1234asdf', '12345678qw', 'a@naver.com', 'aaa', 1997, 'm', '2022-01-12 10:18:54', '2022-03-03 10:33:05', 0),
	(2, 'test1', 'asdf1234', 'test@naver.com', 'test', 1997, 'm', '2022-01-14 11:03:40', '2022-01-20 10:13:51', 1);
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
  `a_value` int(11) NOT NULL COMMENT '저자 고유값',
  `review_value` int(11) NOT NULL COMMENT '리뷰 고유값',
  KEY `FK_preference_book` (`b_value`),
  KEY `FK_preference_memberinfo` (`member_value`),
  KEY `FK_preference_author` (`a_value`),
  KEY `FK_preference_review` (`review_value`),
  CONSTRAINT `FK_preference_author` FOREIGN KEY (`a_value`) REFERENCES `author` (`a_value`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_preference_book` FOREIGN KEY (`b_value`) REFERENCES `book` (`b_value`) ON DELETE NO ACTION ON UPDATE NO ACTION,
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
  `member_value` int(11) NOT NULL COMMENT '회원 아이디 고유값'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- 테이블 데이터 ridi.wish:~2 rows (대략적) 내보내기
DELETE FROM `wish`;
/*!40000 ALTER TABLE `wish` DISABLE KEYS */;
INSERT INTO `wish` (`b_value`, `member_value`) VALUES
	(1, 1),
	(1, 0);
/*!40000 ALTER TABLE `wish` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
