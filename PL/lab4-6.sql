create trigger emptri1 after update or delete on emp1
for each row
declare
op varchar2(15); id number; name char(12); sal number; dno number;
begin
	if updating then op := 'update';
	end if;
	if deleting  then op := 'delete';
	end if;
	empno:= :old.empno;
	name := :old.name;
	age := :old.age;
	insert into audipersinfo values(empno,name,age,op,sysdate);
end;
/