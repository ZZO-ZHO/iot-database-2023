-- 테이블 생성쿼리
CREATE TABLE producttbl(
	productname NVARCHAR(20) PRIMARY KEY,
    cost INT NOT NULL,
    makeDATE DATE,
    company NVARCHAR(20),
    amount INT NOT NULL
    
);