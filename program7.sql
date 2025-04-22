declare
	n number;
	s number:=0;
	rem number;
begin
	n:=&n;
	while n>0
	loop
		rem:=n mod 10;
		s:=s+rem;
		n:=floor(n/10);
	end loop;
	dbms_output.put_line('sum of digits: '||s);
end;
/
