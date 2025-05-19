create or replace trigger t2 after insert on purchase for each row 
when(new.noofitem>0)
begin
update stock set stock_available = stock_available-:new.noofitem where item =:new.item;
dbms_output.put_line('stock updated');
end;
/
