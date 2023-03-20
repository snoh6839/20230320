CREATE TABLE test_member (
  mem_no INT PRIMARY KEY AUTO_INCREMENT,
  men_name VARCHAR(50)
);
-- 
INSERT INTO test_member(men_name)
VALUES ('박병주');
INSERT INTO test_member(men_name)
VALUES ('박상준');
-- 
SELECT *
FROM test_member

-- delete로 날리면 날린 번호는 다시 생기지 않고 순서를 뛰어넘고 들어감
-- truncate로 통으로 날린후 새로 넣어줘야 순서대로 넣을 수 있음