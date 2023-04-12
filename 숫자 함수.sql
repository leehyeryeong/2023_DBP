--ROUND
SELECT ROUND(4567.678) 결과1, ROUND(4567.678, 0) 결과2,
ROUND(4567.678, 2) 결과3, ROUND(4567.678, -2) 결과4
FROM DUAL;

--TRUNC
SELECT TRUNC(4567.678) 결과1, TRUNC(4567.678, 0) 결과2,
TRUNC(4567.678, 2) 결과3, TRUNC(4567.678, -2) 결과4
FROM DUAL;

--POWER, CEIL, FLOOR
SELECT POWER(2, 10) 결과1, CEIL(4.8) 결과2, FLOOR(4.8) 결과3
FROM DUAL;

--POWER, CEIL, FLOOR
SELECT POWER(2, 10) 결과1, CEIL(4.1) 결과2, FLOOR(4.1) 결과3
FROM DUAL;

--employees 테이블에서 부서번호가 20인 사원들의
--급여와 급여를 300으로 나눈 나머지를 조회
SELECT salary, MOD(salary, 300), department_id FROM EMPLOYEES
WHERE department_id = 20;