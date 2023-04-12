SELECT first_name, LPAD(first_name, 15, '*'), salary, LPAD(salary, 10, '*')
FROM EMPLOYEES
WHERE department_id = 10;

SELECT first_name, RPAD(first_name, 15, '*'), salary, RPAD(salary, 10, '*')
FROM EMPLOYEES
WHERE department_id = 10;

--employees 테이블에서 30번 부서의 사원에 대하여
--담당업무 좌측에 'P'를 삭제하고 급여 중 좌측의 1을 삭제하여 조회
SELECT job_id, LTRIM(job_id, 'P'), salary, LTRIM(salary, 1) FROM EMPLOYEES
WHERE department_id = 30;

--employees 테이블에서 30번 부서의 사원에 대하여
--담당업무 우측에 'K'를 삭제하고 급여 중 우측의 0을 삭제하여 조회
SELECT job_id, RTRIM(job_id, 'K'), salary, RTRIM(salary, 0) FROM EMPLOYEES
WHERE department_id = 30;

--employee 테이블에서 30번 부서의 사원에 대하여
--담당 업무에 'CO'를  '*$'로 수정하여 조회
--(REPLACE 함수 이용, 변경된 데이터의 별칭은 업무데이타변경으로 처리)
SELECT job_id, REPLACE(job_id, 'CO', '*$') 업무데이타변경 FROM EMPLOYEES
WHERE department_id = 30;

--employee 테이블에서 30번 부서의 사원에 대하여
--담당 업무에 'CO'를  '*$'로 수정하여 조회
--(TRANSLATE 함수 이용, 변경된 데이터의 별칭은 업무데이타변경으로 처리)
SELECT job_id, TRANSLATE(job_id, 'CO', '*$') 업무데이타변경 FROM EMPLOYEES
WHERE department_id = 30;

SELECT TRIM(LEADING 'A' FROM 'AABDCADDA') 결과1,
       TRIM('A' FROM 'AABDCADDA') 결과2,
       TRIM(TRAILING 'A' FROM 'AABDCADDA') 결과3
FROM DUAL;