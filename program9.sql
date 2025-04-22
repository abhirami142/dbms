declare
	n number;
	s number:=0;
	rem number;
	c number;
begin
	n:=&n;
	c:=n;
	while n>0
	loop
		rem:=n mod 10;
		s:=s*10+rem;
		n:=trunc(n/10);
	end loop;
	if c=s
	then 
		dbms_output.put_line(c||' is palindrome');
	else
		dbms_output.put_line(c||' is not palindrome');
	end if;
end;
/
