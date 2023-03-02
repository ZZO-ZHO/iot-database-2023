-- 변수사용alter
USE sqldb;

SET @myVal = 5;
SELECT @myVar;

SET @myVar = '가수이름 ==> ';

SELECT @myVar, name
  FROM usertbl
 WHERE height > 170;

SELECT name ,height + @myVar
  FROM usertbl;
  
-- 형변환
SELECT cast(birthYear AS CHAR) FROM usertbl;
SELECT CONVERT(birthYear, CHAR) FROM usertbl;

SELECT cast(adrr AS decimal) FROM usertbl;
SELECT CONVERT(adrr, decimal) FROM usertbl;

SELECT cast('1000' AS decimal) FROM usertbl;

-- 암시적 형변환
SELECT 200 + 300;

SELECT CONCAT('Hello ','world');

SELECT '200' + '300';
SELECT CONCAT('200','300');

/* 내장함수 리스트*/
-- 흐름함수
-- 100 > 200 ? '참' : '거짓'
SELECT IF(100>200, '참', '거짓');

-- NULL은 계산이 오류(결과도 NULL)
SELECT IFNULL(NULL, 0) + 100;

-- NULLIF 는 많이 사용안됨
SELECT NULLIF(100, 100);

-- 쿼리작성시 많이 사용
SELECT name
	 , birthYear
     , addr
     , case addr
	   WHEN '서울' THEN '수도권'
       WHEN '경기' THEN '수도권'
       WHEN '부산' THEN '광역권'
       ELSE '지역권' END	AS '권역'
  FROM usertbl;
  
  -- 문자열 함수
  SELECT ASCII('A'), CHAR(65), ASKII('a');
  SELECT ASKII('안'), CHAR(236);
  
  SELECT CHAR_LENGTH('ABC'), LENGTH('ABC');
  -- UTF-8
  SELECT CHAR_LENGTH('가나다'),LENGTH('가나다');
  
  SELECT REPLACE('Hello World', 'Hello', 'Bye bye');
  
  SELECT INSTR('안녕하세요, 여러분', '여');
  
  SELECT LEFT('ABCDEF',3), RIGHT('ABCDEF',3);
  
  SELECT UPPER('Hello World'),LOWER('Hello World');
  
  -- LTRIM, RTRiM, TRIM
  SELECT LTRIM('         Hello World         ') AS 'ltrim'
	   , RTRIM('         Hello World         ') AS 'rtrim'
       , TRIM('         Hello World         ') AS 'trim';
       
       
SELECT ABS(-10);

SELECT CEILING(4.7); -- 올림
SELECT FLOOR(4.7); -- 내림
SELECT ROUND(4.7); -- 반올림

SELECT MOD(157,10);

SELECT RAND(), FLOOR(1 + (RADN() * 6)); -- 주사위놀이

-- 날짜 및 시간함수
SELECT NOW();
SELECT ADDDATE('2023-03-02', INTERVAL -10 DAY);

SELECT YEAR(NOW());
SELECT DATE(NOW());
SELECT TIME(NOW());
SELECT DAYOFWEEK(NOW());	# 1(일) - 7(토)
SELECT LAST_DAY('2023-02-01');

-- 시스템함수
SELECT USER();
SELECT DATABASE();

-- ROW_COUNT()
USE sqlbd;
UPDATE buytbl SET price = price * 2;
SELECT ROW_COUNT();

SELECT VERSION();