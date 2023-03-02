-- UPDATE & TRANSACTION
START TRANSACTION;

-- 경고 UPDATE rnansdptj WHERE절을뺴면 안댐
UPDATE usertbl_bak
   SET mobile1 = '010'
	 , mobile2 = '66667788'
     , addr = '부산'
 WHERE userID = 'JJY';
     
COMMIT;
ROLLBACK;

-- DELETE
-- WHERE 절이 빠지면
DELETE FROM usertbl_bak
WHERE userID = 'HGS';