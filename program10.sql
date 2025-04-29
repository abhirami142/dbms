declare
n number;
i number;
c number:=0;
begin
n:=&n;
FOR i IN 1..n
loop
if mod(n,i)=0
then
c:=c+1;
end if;
end loop;
if c=2
then
dbms_output.put_line(n|| ' is a prime number ');
else 
dbms_output.put_line(n|| ' is not a prime number ');
end if;
end;
/
