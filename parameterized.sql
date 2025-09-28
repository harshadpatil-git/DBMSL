declare
ed int;
en varchar(20);
sal float;
dept varchar(20);
s float;
cursor c1(s float) is select * from employee1 where salary>s;
begin
open c1(&s);
loop
fetch c1 into ed, en, sal, dept;
exit when c1%NOTFOUND;
dbms_output.put_line(ed||'  '||en||'  ' ||sal||'  '||dept);
end loop;
close c1;
end;
/