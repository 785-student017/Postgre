--select * from employee;
--select emp_name, birthday, sal from employee;
--SELECT 'íSìñé“ ' || emp_name || ' ÇÃíaê∂ì˙ÇÕ ' || birthday || ' Ç≈Ç∑' AS íaê∂ì˙ FROM employee;

-- SELECT emp_name, to_char(birthday, 'FMDay, FMMonth DD, YYYY') FROM employee;

--SELECT emp_name, to_char(sal, '9G999G999D99') FROM employee;
--select emp_name, sal, comm, sal + coalesce(comm, 0) from employee;
select emp_name, sal + 1, comm, sal + coalesce(comm, 0) from employee;