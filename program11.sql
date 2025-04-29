declare
i number;
j number;
c number:=0;
begin
dbms_output.put_line('Prime numbers between 2 to 100');
for i in 2..100
loop
c:=0;
for j in 1..i
loop
if mod(i,j)=0
then
c:=c+1;
end if;
end loop;
if c=2
then 
dbms_output.put_line(i);
end if;
end loop;
end;
/

