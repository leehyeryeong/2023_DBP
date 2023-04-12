--����Ŭ�� ��¥/�ð� ���� ��ȸ
SELECT value FROM nls_session_parameters
WHERE parameter = 'NLS_DATE_FORMAT';

SELECT value FROM nls_session_parameters
WHERE parameter = 'NLS_TIMESTAMP_FORMAT';

SELECT value FROM nls_session_parameters
WHERE parameter = 'NLS_TIMESTAMP_TZ_FORMAT';

SELECT value FROM nls_session_parameters
WHERE parameter = 'NLS_LANGUAGE';

--����Ŭ�� ���� �ð�
SELECT SYSDATE FROM dual;

SELECT LOCALTIMESTAMP FROM dual;

SELECT SYSTIMESTAMP FROM dual;

--��¥ ��� ���
SELECT first_name, hire_date, hire_date+3, hire_date+5/24
FROM EMPLOYEES
WHERE department_id = 30;

--����Ŭ�� ��¥ ���� ��ȯ
ALTER SESSION SET NLS_DATE_FORMAT = 'YYYY-MM-DD HH24:MI:SS';

--employees ���̺��� 30�� �μ��� �������
--��������� �ٹ��ϼ��� �� �� ��ĥ�ΰ��� ����Ͽ� �ٹ��ϼ��� ���� ������ ��ȸ
SELECT department_id, first_name, 
SYSDATE-hire_date �ٹ��ϼ�,
TRUNC((SYSDATE-hire_date)/365) ��,
TRUNC((SYSDATE-hire_date)/30) ��,
TRUNC((SYSDATE-hire_date)/7) ��,
TRUNC(SYSDATE-hire_date) ��
FROM EMPLOYEES
WHERE department_id = 30 ORDER BY SYSDATE-hire_date DESC;