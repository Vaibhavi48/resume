create or replace function incr(eno number)return number is
s emp1.sal%type;
incr number;
begin
select sal into s from emp1 where empno=eno;
if s<=2000 then
incr:=s*30/100;
elsif s>2000 and s<=4000 then
incr:=s*20/100;
else
incr:=s*10/100;
end if;
return incr;
end;
/