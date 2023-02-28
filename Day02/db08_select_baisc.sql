-- Active: 1677570407874@@127.0.0.1@3306@sqldb
-- 사용 데이터 베이스 변경
USE homeplus;

-- 한문장 끝일경우;
SELECT * FROM indextbl;
SELECT * FROM homeplus.indextbl;

SELECT * FROM employees.titles; -- 다른 DB의 테이블에서 데이터를 가져올려면

-- 필요한 컬럼만 가져온다
SELECT first_name, last_name FROM indextbl;

USE sqldb;

SELECT userID
     , name
     , birthYear
     , height 
  FROM usertbl
 WHERE name = '김경호';
 
 --  관계연산자
 SELECT *
   FROM usertbl
  WHERE birthYear >= 1970
    AND height >=182;
    
-- 사이의 값을 조회
 SELECT *
   FROM usertbl
  WHERE height >= 180
    and height <= 183;

 SELECT *
   FROM usertbl
  WHERE height between 180 and 183;
  
-- 이산적인 값조건
SELECT *
  FROM usertbl
 WHERE addr = '경남' OR addr = '전남' OR addr = '경북';
 
SELECT *
  FROM usertbl
 WHERE addr in ('경남','전남','경북');
 
 -- 문자열 검색 '뉴스본문안에서 일정단어 검색할때반드시 필요'
 SELECT *
   FROM usertbl
  WHERE name like '%김%';
  
-- 서브쿼리 사용위치
-- 1. 컬럼위치
-- 2. 컬럼위치
-- 3. 컬럼위치
-- 4. 컬럼위치

SELECT name
	 , height
  FROM usertbl
 WHERE height IN (SELECT height FROM usertbl WHERE name LIKE '김경호%');
 
 -- 가상테이블
 SELECT u.userID
	  , u.name
      , (2023 - u.birthYear) AS '나이'
   FROM (
         SELECT userID, name, birthYear, addr
           FROM usertbl
		) AS u
WHERE u.birthYear > 1969;

-- 컬럼에 쓰는 서브쿼리
SELECT b.userID AS ID
	 , (SELECT name FROM usertbl WHERE userID = b.userID) AS '이름'
	 , b.prodName
     , b.price * b.amount AS '판매액'
  FROM buytbl AS b;

  -- 정렬 Order BY //ASC안써도 기본값(오름차순)
SELECT name
       , birthYear
       , height
    FROM usertbl
   WHERE birthYear > 1069
   ORDER BY birthYear ASC, height DESC;
   
-- 중목제거 / 중복제거할 컬럼만
SELECT distinct addr
  FROM usertbl;

-- LIMIT 개수제한
USE homeplus;

SELECT *
FROM indextbl
LIMIT 5;

USE sqldb;
-- 조회하면서 새로운 테이블 생성
-- PK/FK 는 안댐
CREATE TABLE elec_buytbl_new
SELECT num 
     , prodName
     , price
  FROM buytbl
 WHERE groupName = '전자';

