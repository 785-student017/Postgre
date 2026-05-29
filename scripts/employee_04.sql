--select * from employee;
--select emp_name, birthday, sal from employee;
--SELECT '?¿½S?¿½?¿½?¿½?¿½ ' || emp_name || ' ?¿½Ì’a?¿½?¿½?¿½?¿½?¿½?¿½ ' || birthday || ' ?¿½Å‚ï¿½' AS ?¿½a?¿½?¿½?¿½?¿½ FROM employee;

-- SELECT emp_name, to_char(birthday, 'FMDay, FMMonth DD, YYYY') FROM employee;

--SELECT emp_name, to_char(sal, '9G999G999D99') FROM employee;
--select emp_name, sal, comm, sal + coalesce(comm, 0) from employee;
--select emp_name, sal + 1, comm, sal + coalesce(comm, 0) from employee;

-- SELECT emp_name,
    --        CASE
    --        WHEN gender = 1 THEN '’j«'
    --        ELSE '—«'
    --        END AS «•Ê
-- FROM employee;

-- SELECT
--     emp_name AS ’S“–ŽÒ–¼,
--     birthday AS ¶”NŒŽ“ú,
--     sal AS ‹‹—^Šz,
--     comm AS ƒRƒ~ƒbƒVƒ‡ƒ“,
--     sal +
--     CASE
--         WHEN comm IS NULL THEN 0
--         ELSE comm
--     END AS ŒŽŽû
-- FROM employee;

-- SELECT
    --     emp_name,
    --     birthday,
    --     sal,
    --     comm,
    --        sal +
    --     CASE
    --         WHEN comm IS NULL THEN 0
    --         ELSE comm
    --     END AS ŒŽŽû
-- FROM employee;

-- select * from employee order by hiredate asc;

-- select * from employee order by sal desc;

-- select 
    -- emp_name, birthday, sal, comm, sal + 
    -- CASE
    -- when comm is  null then 0
    -- else comm
    -- end as ŒŽŽû
-- from employee
-- order by 5 desc;

-- SELECT
    --     emp_name AS ’S“–ŽÒ–¼,
    --     sal AS ‹‹—^Šz
    -- FROM employee
-- WHERE sal >= 2000;

-- SELECT
    --     emp_name AS ’S“–ŽÒ–¼,
    --     sal AS ‹‹—^Šz
    -- FROM employee
-- WHERE gender = 2;

-- SELECT
    --     emp_name AS ’S“–ŽÒ–¼,
        --     sal AS ‹‹—^Šz
    -- FROM employee
    -- WHERE emp_name = 'ˆÀ•” O]';

-- SELECT
    --     emp_name AS ’S“–ŽÒ–¼,
    --     sal AS ‹‹—^Šz,
    --     birthday AS ¶”NŒŽ“ú
    -- FROM employee
-- WHERE birthday >= '1980-01-01';

-- SELECT
    --     emp_name AS ’S“–ŽÒ–¼,
    --     sal AS ‹‹—^Šz
    -- FROM employee
-- WHERE sal BETWEEN 2000 AND 3000;

-- select
    -- sal,
    -- emp_id
    -- from employee
-- WHERE emp_id = 2 or emp_id = 4 or emp_id = 7

-- select 
    -- emp_name,
    -- sal
    -- gender
    -- from employee
 -- WHERE sal >= 2000 or gender = 2

-- select
    --     emp_name,
    --     sal
    --     gender
    -- from employee
    -- WHERE
    -- sal >= 2000 and sal <= 3000 or gender = 2

-- SELECT
    --     emp_name,
    --     sal
    -- FROM employee
-- WHERE sal BETWEEN 2000 AND 3000;

-- SELECT
    --     emp_name,
    --     sal
    -- FROM employee
    -- WHERE sal BETWEEN 2000 AND 3000
--    OR gender = 2;

-- SELECT *
    -- FROM customer
    -- WHERE address LIKE '‘åãŽs%';

-- SELECT *
--     FROM customer
-- WHERE address LIKE '%‘åã%';

-- SELECT *
 --     FROM customer
-- WHERE address LIKE '%“Œ‹ž“s%';

-- SELECT *
 --     FROM customer
-- WHERE cust_name LIKE '_“c%' and cust_name like '_Žq%';

-- select * from employee
 --     WHERE comm is not null;

-- SELECT *
 --     FROM product
-- WHERE cost >= 20000;

-- SELECT cust_id, cust_name
    -- FROM customer
-- WHERE fax IS NULL;

-- SELECT cust_id, cust_name, tel
    -- FROM customer
    -- WHERE tel NOT LIKE '03%'
--   AND tel NOT LIKE '06%';

-- SELECT count(*) from employee;

-- SELECT count(*), sum(sal)
-- from employee;

-- select 
--     count(*) - count(comm) from employee;

-- select
--     dept_id,
--     count(*),
--     sum(sal),
--     avg(sal),
--     min(sal),
--     max(sal)
-- from employee
-- group by dept_id
-- ;

-- select
-- gender,
-- count(*)
-- from employee
-- group by gender
-- order by gender
-- ;

-- select
--     dept_id,
--     gender,
--     count(*),
--     avg(sal)
-- from employee
-- group by dept_id, gender
-- order by dept_id, gender
-- ;

-- select
--     dept_id,
--     sum(sal),
--     avg(sal),
--     min(sal),
--     max(sal)
-- from employee
-- group by dept_id
-- order by dept_id
-- ;

select
max(sal)
from employee
group by dept_id
having sum(sal) <= 5000
order by dept_id
;