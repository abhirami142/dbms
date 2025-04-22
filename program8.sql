declare
n number;
s number:=0;
r number;
begin
n:=&n;
while n>0
loop
r:=n mod 10;
s:=s*10+r;
n:=trunc(n/10);
end loop;
dbms_output.put_line('reverse of the number:'|| s);
end;
/
