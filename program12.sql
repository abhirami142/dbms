declare
str varchar(20):='&str';
len integer;
str1 varchar(20);
begin
len:=length(str);
for i in reverse 1..len
loop
str1:=str1||substr(str,i,1);
end loop;
dbms_output.put_line('reverse is::'||str1);
end;
/
