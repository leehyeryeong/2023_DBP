--오늘의 날짜를 일, 월, 년도 순으로 출력
SELECT EXTRACT(day from SYSDATE) 일자, EXTRACT(month from SYSDATE) 월, EXTRACT(year from SYSDATE) 년도
FROM DUAL;

SELECT SYSTIMESTAMP A, EXTRACT(HOUR FROM SYSTIMESTAMP) B, EXTRACT(HOUR FROM LOCALTIMESTAMP) C FROM DUAL;

SELECT SYSTIMESTAMP A, EXTRACT(HOUR FROM SYSTIMESTAMP) B, TO_CHAR(SYSTIMESTAMP, 'HH24') C FROM DUAL;

SELECT SYSTIMESTAMP A, EXTRACT(HOUR FROM SYSTIMESTAMP) B, EXTRACT(HOUR FROM CAST(SYSTIMESTAMP AS TIMESTAMP)) C FROM DUAL;

SELECT SYSTIMESTAMP, EXTRACT(HOUR FROM SYSTIMESTAMP) h1,
EXTRACT(HOUR FROM SYSTIMESTAMP)+
EXTRACT(TIMEZONE_HOUR FROM SYSTIMESTAMP) h2,
EXTRACT(TIMEZONE_MINUTE FROM SYSTIMESTAMP) h3
FROM dual;

--employees 테이블에서 사원 이름, 입사일자, 입사년도(HIRE_YEAR), 입사일자(HIRE_DAY) 조회
SELECT first_name, hire_date, EXTRACT(YEAR FROM hire_date) HIRE_YEAR, EXTRACT(DAY FROM hire_date) HIRE_DAY
FROM EMPLOYEES;

--employees 테이블에서 30번 부서원의 
--이름, 입사일자, 현재날짜, 현재까지의 근무월수(M_BETWEEN), 현재까지의 근무월수(T_M_BETWEEN)을
--계산하여 M_BETWEEN 순으로 조회
SELECT first_name, hire_date, SYSDATE, MONTHS_BETWEEN(SYSDATE, hire_date) M_BETWEEN,
TRUNC(MONTHS_BETWEEN(SYSDATE, hire_date)) T_M_BETWEEN 
FROM EMPLOYEES
WHERE department_id = 30
ORDER BY M_BETWEEN;

--employees 테이블에서 10번과 30번 부서원의
--이름, 입사일자, 입사일자로부터 5개월이 지난 후의 날짜(add_mon)를 계산하여
--입사일자의 최신순으로 조회
SELECT first_name, hire_date, ADD_MONTHS(hire_date, 5) "add_mon" 
FROM EMPLOYEES
WHERE department_id IN (10, 30)
ORDER BY hire_date DESC;

--employees 테이블에서 30번 부서원의 
--이름, 입사일자, 입사일자로부터 돌아오는 월요일(nd_Mon), 입사일자로부터 돌아오는 금요일(nd_Fri)을
--입사일자의 최신순으로 조회
SELECT first_name, hire_date, NEXT_DAY(hire_date, '월') "nd_Mon", NEXT_DAY(hire_date, '금') "nd_Fri"
FROM EMPLOYEES
WHERE department_id = 30
ORDER BY hire_date DESC;