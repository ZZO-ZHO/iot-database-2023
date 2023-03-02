SELECT *
FROM buytbl;

-- inner join
SELECT *
  FROM buytbl
INNER JOIN usertbl
	ON buytbl.userID = usertbl.userID;
    
SELECT b.num, b.userID, b.prodName
	 , u.name, u.addr, u.birthYear
  FROM buytbl AS b
 INNER JOIN usertbl AS u
    ON b.userID = u.userID
 ORDER BY b.num DESC;