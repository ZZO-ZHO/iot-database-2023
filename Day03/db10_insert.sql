-- INSERT
INSERT INTO usertbl
(userID, name, birthYear, addr, mobile1, mobile2, height, mDate)
VALUES
('JJY','정재영',1999,'부산usertbluserIDuserIDuserID','010','12345678',165,'2023-03-02');

INSERT INTO usertbl
(userID, name, birthYear, addr, mobile1, mobile2, height, mDate)
VALUES
('HGS','홍길순',2000,'한양','010','12341234',160,'2023-03-02');

-- 입력하지 않을때는 NULL 입력
INSERT INTO usertbl
(userID, name, birthYear, addr, mobile1, mobile2, height, mDate)
VALUES
('HGS','홍길순',2000,'한양',NULL ,NULL ,NULL ,NULL );

-- 입력하지 않을때는 NULL과 컬럼 생략가능
INSERT INTO usertbl
(userID, name, birthYear, addr)
VALUES
('HGS','홍길순',2000,'한양');

-- 컬럼 지정가능 (입력할값의 순서와 컬럼 일치시키기)
INSERT INTO usertbl VALUES
('HGS','홍길순',2000,'한양','010','12341234',160,'2023-03-02');

-- AUTO_INSERT의 경우 필드값을 입력하지 않아도됨
INSERT INTO buytbl
(userID, prodName, groupName, price,amount)
VALUES
('SMG','노트북','전자',5000000, 1);