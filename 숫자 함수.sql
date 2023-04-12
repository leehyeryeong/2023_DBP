--ROUND
SELECT ROUND(4567.678) ���1, ROUND(4567.678, 0) ���2,
ROUND(4567.678, 2) ���3, ROUND(4567.678, -2) ���4
FROM DUAL;

--TRUNC
SELECT TRUNC(4567.678) ���1, TRUNC(4567.678, 0) ���2,
TRUNC(4567.678, 2) ���3, TRUNC(4567.678, -2) ���4
FROM DUAL;

--POWER, CEIL, FLOOR
SELECT POWER(2, 10) ���1, CEIL(4.8) ���2, FLOOR(4.8) ���3
FROM DUAL;

--POWER, CEIL, FLOOR
SELECT POWER(2, 10) ���1, CEIL(4.1) ���2, FLOOR(4.1) ���3
FROM DUAL;

--employees ���̺��� �μ���ȣ�� 20�� �������
--�޿��� �޿��� 300���� ���� �������� ��ȸ
SELECT salary, MOD(salary, 300), department_id FROM EMPLOYEES
WHERE department_id = 20;