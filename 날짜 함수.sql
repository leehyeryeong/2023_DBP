--������ ��¥�� ��, ��, �⵵ ������ ���
SELECT EXTRACT(day from SYSDATE) ����, EXTRACT(month from SYSDATE) ��, EXTRACT(year from SYSDATE) �⵵
FROM DUAL;

SELECT SYSTIMESTAMP A, EXTRACT(HOUR FROM SYSTIMESTAMP) B, EXTRACT(HOUR FROM LOCALTIMESTAMP) C FROM DUAL;

SELECT SYSTIMESTAMP A, EXTRACT(HOUR FROM SYSTIMESTAMP) B, TO_CHAR(SYSTIMESTAMP, 'HH24') C FROM DUAL;

SELECT SYSTIMESTAMP A, EXTRACT(HOUR FROM SYSTIMESTAMP) B, EXTRACT(HOUR FROM CAST(SYSTIMESTAMP AS TIMESTAMP)) C FROM DUAL;

SELECT SYSTIMESTAMP, EXTRACT(HOUR FROM SYSTIMESTAMP) h1,
EXTRACT(HOUR FROM SYSTIMESTAMP)+
EXTRACT(TIMEZONE_HOUR FROM SYSTIMESTAMP) h2,
EXTRACT(TIMEZONE_MINUTE FROM SYSTIMESTAMP) h3
FROM dual;

--employees ���̺��� ��� �̸�, �Ի�����, �Ի�⵵(HIRE_YEAR), �Ի�����(HIRE_DAY) ��ȸ
SELECT first_name, hire_date, EXTRACT(YEAR FROM hire_date) HIRE_YEAR, EXTRACT(DAY FROM hire_date) HIRE_DAY
FROM EMPLOYEES;

--employees ���̺��� 30�� �μ����� 
--�̸�, �Ի�����, ���糯¥, ��������� �ٹ�����(M_BETWEEN), ��������� �ٹ�����(T_M_BETWEEN)��
--����Ͽ� M_BETWEEN ������ ��ȸ
SELECT first_name, hire_date, SYSDATE, MONTHS_BETWEEN(SYSDATE, hire_date) M_BETWEEN,
TRUNC(MONTHS_BETWEEN(SYSDATE, hire_date)) T_M_BETWEEN 
FROM EMPLOYEES
WHERE department_id = 30
ORDER BY M_BETWEEN;

--employees ���̺��� 10���� 30�� �μ�����
--�̸�, �Ի�����, �Ի����ڷκ��� 5������ ���� ���� ��¥(add_mon)�� ����Ͽ�
--�Ի������� �ֽż����� ��ȸ
SELECT first_name, hire_date, ADD_MONTHS(hire_date, 5) "add_mon" 
FROM EMPLOYEES
WHERE department_id IN (10, 30)
ORDER BY hire_date DESC;

--employees ���̺��� 30�� �μ����� 
--�̸�, �Ի�����, �Ի����ڷκ��� ���ƿ��� ������(nd_Mon), �Ի����ڷκ��� ���ƿ��� �ݿ���(nd_Fri)��
--�Ի������� �ֽż����� ��ȸ
SELECT first_name, hire_date, NEXT_DAY(hire_date, '��') "nd_Mon", NEXT_DAY(hire_date, '��') "nd_Fri"
FROM EMPLOYEES
WHERE department_id = 30
ORDER BY hire_date DESC;