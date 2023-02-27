-- employees DB의 employees 테이블에서 데이터 10개만 가져오기
CREATE TABLE indexTBL(
	first_name VARCHAR(14),
    last_name VARCHAR(16),
    hire_date DATE
);

INSERT INTO indexTBL
	SELECT first_name, last_name, hire_date
      FROM employees.employees
     LIMIT 300000;
     
SELECT * FROM indexTBL
 WHERE first_name = 'Mary';
 
 -- indexTBL에 first_name에 인덱스 생성alter
 CREATE INDEX idx_indexTBL_firstname
		   ON indexTBL(first_name);