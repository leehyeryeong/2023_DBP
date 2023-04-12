SELECT * FROM tab;

--employees ���̺��� �μ���ȣ�� 10���� �����
--�����ȣ, �̸�, �̸�(��� �ҹ��ڷ�), ����(ù���ڴ� �빮��, �������� �ҹ���) ��ȸ
SELECT employee_id, first_name, LOWER(job_id), INITCAP(job_id) 
FROM EMPLOYEES WHERE department_id=10;

SELECT employee_id, first_name, job_id, CONCAT(employee_id, first_name) FIRST_NAME,
CONCAT(first_name, employee_id) E_EMPLOYEE_ID, CONCAT(first_name, job_id) E_JOB FROM EMPLOYEES
WHERE department_id = 10;

--employees ���̺��� �̸��� ù ���ڰ� 'K'���� ũ�� 'Y'���� ���� �����
--�����ȣ, �̸�, ����, �޿�, �μ���ȣ ��ȸ�Ͽ� �̸� ������ ����
SELECT employee_id, first_name, job_id, salary, department_id FROM EMPLOYEES
WHERE SUBSTR(first_name, 1, 1) > 'K' AND SUBSTR(first_name, 1, 1) < 'Y'
ORDER BY first_name;

--employees ���̺��� �̸��� ù ���ڰ� 'K' �̻� 'Y' ������ �����
--�����ȣ, �̸�, ����, �޿�, �μ���ȣ ��ȸ�Ͽ� �̸� ������ ����
SELECT employee_id, first_name, job_id, salary, department_id FROM EMPLOYEES
WHERE SUBSTR(first_name, 1, 1) BETWEEN 'K' AND 'Y'
ORDER BY first_name;

--employees ���̺��� �̸��� ù ���ڰ� 'K' Ȥ�� 'k' �̻� 'Y' Ȥ�� 'y' ������ �����
--�����ȣ, �̸�, ����, �޿�, �μ���ȣ ��ȸ�Ͽ� �̸� ������ ����
SELECT employee_id, first_name, job_id, salary, department_id FROM EMPLOYEES
--WHERE (SUBSTR(first_name, 1, 1) BETWEEN 'K' AND 'Y')
--OR (SUBSTR(first_name, 1, 1) BETWEEN 'k' AND 'y')
--WHERE SUBSTR(INITCAP(first_name), 1, 1) BETWEEN 'K' AND 'Y'
WHERE LOWER(SUBSTR(first_name, 1, 1)) BETWEEN 'k' AND 'y'
ORDER BY first_name;

--employees ���̺��� �μ��� 20���� �����
--�����ȣ, �̸�, �̸��� �ڸ���, �޿�, �޿��� �ڸ��� ��ȸ
SELECT employee_id, first_name, LENGTH(first_name), salary, LENGTH(salary)
FROM EMPLOYEES WHERE department_id = 20;

--employees ���̺��� �̸� �� 'a'���� ��ġ�� ��ȸ
SELECT INSTR(first_name, 'a'), first_name FROM EMPLOYEES;

SELECT first_name, SUBSTR(first_name, 1, 3), SUBSTR(first_name, 3),
SUBSTR(first_name, -3, 2) FROM EMPLOYEES
WHERE department_id = 10;

--���� DB�� �ѱ��� BYTE �� ��ȸ
SELECT parameter, value
FROM nls_database_parameters
WHERE parameter = 'NLS_CHARACTERSET';

SELECT '+'||SUBSTRB('I am here with you', 5, 3)||'+' ���1, '+'||SUBSTR('�� ���� �־�', 5, 3)||'+' ���2,
'+'||SUBSTRB('�� ���� �־�', 5, 4)||'+' ���3
FROM DUAL;

SELECT '+'||SUBSTRB('I am here with you', 5, 3)||'+' ���1, '+'||SUBSTR('�� ���� �־�', 5, 3)||'+' ���2,
'+'||SUBSTRB('�� ���� �־�', 5, 4)||'+' ���3
FROM EMPLOYEES;