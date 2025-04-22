declare
f number:=1;
n number;
i number;
begin
n:=&n;
for i in 1..n
loop
f:=f*i;
end loop;
dbms_output.put_line('The factorial of number is ' ||f);
end;
/
