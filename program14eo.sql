DECLARE
    n number;  
BEGIN
    n := &n;  

    IF mod(n, 2) = 0 
    then
        DBMS_OUTPUT.PUT_LINE(n || ' is an even number.');
    ELSE
        DBMS_OUTPUT.PUT_LINE(n || ' is an odd number.');
    END IF;
END;
/

