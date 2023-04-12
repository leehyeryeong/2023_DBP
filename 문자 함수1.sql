SELECT * FROM tab;

--employees 테이블에서 부서번호가 10번인 사원의
--사원번호, 이름, 이름(모두 소문자로), 업무(첫글자는 대문자, 나머지는 소문자) 조회
SELECT employee_id, first_name, LOWER(job_id), INITCAP(job_id) 
FROM EMPLOYEES WHERE department_id=10;

SELECT employee_id, first_name, job_id, CONCAT(employee_id, first_name) FIRST_NAME,
CONCAT(first_name, employee_id) E_EMPLOYEE_ID, CONCAT(first_name, job_id) E_JOB FROM EMPLOYEES
WHERE department_id = 10;

--employees 테이블에서 이름의 첫 글자가 'K'보다 크고 'Y'보다 작은 사원의
--사원번호, 이름, 업무, 급여, 부서번호 조회하여 이름 순으로 정렬
SELECT employee_id, first_name, job_id, salary, department_id FROM EMPLOYEES
WHERE SUBSTR(first_name, 1, 1) > 'K' AND SUBSTR(first_name, 1, 1) < 'Y'
ORDER BY first_name;

--employees 테이블에서 이름의 첫 글자가 'K' 이상 'Y' 이하인 사원의
--사원번호, 이름, 업무, 급여, 부서번호 조회하여 이름 순으로 정렬
SELECT employee_id, first_name, job_id, salary, department_id FROM EMPLOYEES
WHERE SUBSTR(first_name, 1, 1) BETWEEN 'K' AND 'Y'
ORDER BY first_name;

--employees 테이블에서 이름의 첫 글자가 'K' 혹은 'k' 이상 'Y' 혹은 'y' 이하인 사원의
--사원번호, 이름, 업무, 급여, 부서번호 조회하여 이름 순으로 정렬
SELECT employee_id, first_name, job_id, salary, department_id FROM EMPLOYEES
--WHERE (SUBSTR(first_name, 1, 1) BETWEEN 'K' AND 'Y')
--OR (SUBSTR(first_name, 1, 1) BETWEEN 'k' AND 'y')
--WHERE SUBSTR(INITCAP(first_name), 1, 1) BETWEEN 'K' AND 'Y'
WHERE LOWER(SUBSTR(first_name, 1, 1)) BETWEEN 'k' AND 'y'
ORDER BY first_name;

--employees 테이블에서 부서가 20번인 사원의
--사원번호, 이름, 이름의 자릿수, 급여, 급여의 자릿수 조회
SELECT employee_id, first_name, LENGTH(first_name), salary, LENGTH(salary)
FROM EMPLOYEES WHERE department_id = 20;

--employees 테이블에서 이름 중 'a'자의 위치를 조회
SELECT INSTR(first_name, 'a'), first_name FROM EMPLOYEES;

SELECT first_name, SUBSTR(first_name, 1, 3), SUBSTR(first_name, 3),
SUBSTR(first_name, -3, 2) FROM EMPLOYEES
WHERE department_id = 10;

--현재 DB의 한글의 BYTE 수 조회
SELECT parameter, value
FROM nls_database_parameters
WHERE parameter = 'NLS_CHARACTERSET';

SELECT '+'||SUBSTRB('I am here with you', 5, 3)||'+' 결과1, '+'||SUBSTR('나 여기 있어', 5, 3)||'+' 결과2,
'+'||SUBSTRB('나 여기 있어', 5, 4)||'+' 결과3
FROM DUAL;

SELECT '+'||SUBSTRB('I am here with you', 5, 3)||'+' 결과1, '+'||SUBSTR('나 여기 있어', 5, 3)||'+' 결과2,
'+'||SUBSTRB('나 여기 있어', 5, 4)||'+' 결과3
FROM EMPLOYEES;