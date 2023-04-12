--오라클의 날짜/시간 포맷 조회
SELECT value FROM nls_session_parameters
WHERE parameter = 'NLS_DATE_FORMAT';

SELECT value FROM nls_session_parameters
WHERE parameter = 'NLS_TIMESTAMP_FORMAT';

SELECT value FROM nls_session_parameters
WHERE parameter = 'NLS_TIMESTAMP_TZ_FORMAT';

SELECT value FROM nls_session_parameters
WHERE parameter = 'NLS_LANGUAGE';

--오라클의 현재 시간
SELECT SYSDATE FROM dual;

SELECT LOCALTIMESTAMP FROM dual;

SELECT SYSTIMESTAMP FROM dual;

--날짜 계산 결과
SELECT first_name, hire_date, hire_date+3, hire_date+5/24
FROM EMPLOYEES
WHERE department_id = 30;

--오라클의 날짜 포맷 변환
ALTER SESSION SET NLS_DATE_FORMAT = 'YYYY-MM-DD HH24:MI:SS';

--employees 테이블에서 30번 부서의 사원들의
--현재까지의 근무일수가 몇 주 며칠인가를 계산하여 근무일수가 많은 순으로 조회
SELECT department_id, first_name, 
SYSDATE-hire_date 근무일수,
TRUNC((SYSDATE-hire_date)/365) 년,
TRUNC((SYSDATE-hire_date)/30) 월,
TRUNC((SYSDATE-hire_date)/7) 주,
TRUNC(SYSDATE-hire_date) 일
FROM EMPLOYEES
WHERE department_id = 30 ORDER BY SYSDATE-hire_date DESC;