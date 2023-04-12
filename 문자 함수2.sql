SELECT first_name, LPAD(first_name, 15, '*'), salary, LPAD(salary, 10, '*')
FROM EMPLOYEES
WHERE department_id = 10;

SELECT first_name, RPAD(first_name, 15, '*'), salary, RPAD(salary, 10, '*')
FROM EMPLOYEES
WHERE department_id = 10;

--employees ���̺��� 30�� �μ��� ����� ���Ͽ�
--������ ������ 'P'�� �����ϰ� �޿� �� ������ 1�� �����Ͽ� ��ȸ
SELECT job_id, LTRIM(job_id, 'P'), salary, LTRIM(salary, 1) FROM EMPLOYEES
WHERE department_id = 30;

--employees ���̺��� 30�� �μ��� ����� ���Ͽ�
--������ ������ 'K'�� �����ϰ� �޿� �� ������ 0�� �����Ͽ� ��ȸ
SELECT job_id, RTRIM(job_id, 'K'), salary, RTRIM(salary, 0) FROM EMPLOYEES
WHERE department_id = 30;

--employee ���̺��� 30�� �μ��� ����� ���Ͽ�
--��� ������ 'CO'��  '*$'�� �����Ͽ� ��ȸ
--(REPLACE �Լ� �̿�, ����� �������� ��Ī�� ��������Ÿ�������� ó��)
SELECT job_id, REPLACE(job_id, 'CO', '*$') ��������Ÿ���� FROM EMPLOYEES
WHERE department_id = 30;

--employee ���̺��� 30�� �μ��� ����� ���Ͽ�
--��� ������ 'CO'��  '*$'�� �����Ͽ� ��ȸ
--(TRANSLATE �Լ� �̿�, ����� �������� ��Ī�� ��������Ÿ�������� ó��)
SELECT job_id, TRANSLATE(job_id, 'CO', '*$') ��������Ÿ���� FROM EMPLOYEES
WHERE department_id = 30;

SELECT TRIM(LEADING 'A' FROM 'AABDCADDA') ���1,
       TRIM('A' FROM 'AABDCADDA') ���2,
       TRIM(TRAILING 'A' FROM 'AABDCADDA') ���3
FROM DUAL;