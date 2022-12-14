-- 1. DEPT_ID �� LOCATION_ID�� NULLABLE�� NO(�� NULL�� �Ұ���)���� ���̺� ����
CREATE TABLE DEPARTMENT(
    DEPT_ID CHAR(2) NOT NULL,
    DEPT_TITLE VARCHAR2(35),
    LOCATION_ID CHAR(2) NOT NULL
);

-- 2. DEPT_ID�� �μ��ڵ�, DEPT_TITLE�� �μ���, LOCATION_ID�� �����ڵ��� �÷��� COMMENT�� �߰�
COMMENT ON COLUMN DEPARTMENT.DEPT_ID IS '�μ��ڵ�';
COMMENT ON COLUMN DEPARTMENT.DEPT_TITLE IS '�μ���';
COMMENT ON COLUMN DEPARTMENT.LOCATION_ID IS '�����ڵ�';

-- 3. ���̺� �� �߰�
-- ���� ������ �߰�
INSERT INTO DEPARTMENT(DEPT_ID, DEPT_TITLE, LOCATION_ID)
VALUES('D1', '�λ������', 'L1');
INSERT INTO DEPARTMENT(DEPT_ID, DEPT_TITLE, LOCATION_ID)
VALUES('D2', 'ȸ�������', 'L1');
INSERT INTO DEPARTMENT(DEPT_ID, DEPT_TITLE, LOCATION_ID)
VALUES('D9', '�ѹ���', 'L1');
-- ������ ������ �߰� (���߿� ��������..) �Ʒ� ���� �� Mysql �����ΰŰ���
INSERT INTO DEPARTMENT(DEPT_ID, DEPT_TITLE, LOCATION_ID)
VALUES
('D1', '�λ������', 'L1'),
('D2', 'ȸ�������', 'L1'),
('D3', '�����ú�', 'L1'),
('D4', '����������', 'L1'),
('D5', '�ؿܿ���1��', 'L2'),
('D6', '�ؿܿ���2��', 'L3'),
('D7', '�ؿܿ���3��', 'L4'),
('D8', '���������', 'L5'),
('D9', '�ѹ���', 'L1');

SELECT * FROM DEPARTMENT;
