-- 그냥 테이블 접근
SELECT *
  FROM memberTBL;
  
-- 뷰생성
CREATE VIEW uv_memberTBL
	AS
    SELECT memberName, memberAddress
      FROM memberTBL;
      
-- 뷰조회
SELECT *
  FROM uv_membertbl;
  