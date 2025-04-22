declare
l integer;
b integer;
h integer;
v integer;
begin
l:=&l;
b:=&b;
h:=&h;
v:=(l*b*h);
dbms_output.put_line('volume of cuboid  is ' ||v);
end;
/
