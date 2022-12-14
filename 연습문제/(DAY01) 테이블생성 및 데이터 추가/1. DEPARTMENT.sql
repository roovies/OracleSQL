-- 1. DEPT_ID 및 LOCATION_ID는 NULLABLE이 NO(즉 NULL값 불가능)으로 테이블 생성
CREATE TABLE DEPARTMENT(
    DEPT_ID CHAR(2) NOT NULL,
    DEPT_TITLE VARCHAR2(35),
    LOCATION_ID CHAR(2) NOT NULL
);

-- 2. DEPT_ID는 부서코드, DEPT_TITLE는 부서명, LOCATION_ID는 지역코드라는 컬럼에 COMMENT를 추가
COMMENT ON COLUMN DEPARTMENT.DEPT_ID IS '부서코드';
COMMENT ON COLUMN DEPARTMENT.DEPT_TITLE IS '부서명';
COMMENT ON COLUMN DEPARTMENT.LOCATION_ID IS '지역코드';

-- 3. 테이블에 값 추가
-- 단일 데이터 추가
INSERT INTO DEPARTMENT(DEPT_ID, DEPT_TITLE, LOCATION_ID)
VALUES('D1', '인사관리부', 'L1');
INSERT INTO DEPARTMENT(DEPT_ID, DEPT_TITLE, LOCATION_ID)
VALUES('D2', '회계관리부', 'L1');
INSERT INTO DEPARTMENT(DEPT_ID, DEPT_TITLE, LOCATION_ID)
VALUES('D9', '총무부', 'L1');
-- 여러개 데이터 추가 (나중에 공부하자..) 아래 적은 건 Mysql 전용인거같음
INSERT INTO DEPARTMENT(DEPT_ID, DEPT_TITLE, LOCATION_ID)
VALUES
('D1', '인사관리부', 'L1'),
('D2', '회계관리부', 'L1'),
('D3', '마케팅부', 'L1'),
('D4', '국내영업부', 'L1'),
('D5', '해외영업1부', 'L2'),
('D6', '해외영업2부', 'L3'),
('D7', '해외영업3부', 'L4'),
('D8', '기술지원부', 'L5'),
('D9', '총무부', 'L1');

SELECT * FROM DEPARTMENT;
