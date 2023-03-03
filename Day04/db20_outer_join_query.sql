-- 쇼핑몰에 가입하고 물건을 한번도 구매하지않은 회원까지 모두 출력
SELECT u.*
	 , b.prodName
	 , b.groupName
     , b.price
     , b.amount
  FROM usertbl as u
  LEFT OUTER JOIN buytbl AS b
    ON u.userID = b.userID
 WHERE b.userID IS NULL;
 
 -- 학생중 동아리에 가입하지 않은 학생
 SELECT s.stdName, s.addr
	  , j.num, j.clubName
   FROM stdtbl AS s
   LEFT OUTER JOIN stdclubtbl AS j
	 ON s.stdName = j.stdName
  INNER JOIN clubtbl AS c
	 ON c.clubName = j.clubName;
     
-- IN 조건이 만족
-- NOT IN 조건이 만족하지 않는것
SELECT name
	 , height
  FROM usertbl
 WHERE height NOT IN(SELECT height
					   FROM usertbl
                       WHERE name LIKE '김경호%');