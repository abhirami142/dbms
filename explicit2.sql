declare
cid customer.id%type;
cname customer.name%type;
csalary customer.salary%type;
cursor c1 is select id,name,salary from customer;
begin
open c1;
loop
fetch c1 into cid,cname,csalary;
exit when c1%notfound;
if cid=1001 then
csalary:=csalary + 1000;
elsif cid=1002 then
csalary:=csalary + 2000;
elsif cid=1003 then
csalary:=csalary + 5000;
end if;
update customer set salary = csalary where id=cid;
dbms_output.put_line(cid||' '||cname||' '||csalary);
end loop;
close c1;
end;
/
