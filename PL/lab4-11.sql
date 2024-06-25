create or replace procedure raise_salary(eno in number,inc out number)is
s emp1.sal%type;
salnull exception;
begin 
select sal into s from emp1 where empno=eno;
if s is null then
raise salnull;
end if;
inc:=s*20/100;
update emp1 set sal=sal+inc where empno=eno;
exception
when no_data_found then
 dbms_output.put_line('Employee does not exist');
when salnull then
 dbms_output.put_line('Employee salary is null');
end;
/