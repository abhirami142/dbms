DECLARE
    str   VARCHAR2(20) := '&str';  
    len   INTEGER;
    str1  VARCHAR2(20) := '';      
BEGIN
    len := LENGTH(str);

    FOR i IN REVERSE 1..len LOOP
        str1 := str1 || SUBSTR(str, i, 1);
    END LOOP;

    IF str = str1 THEN
        DBMS_OUTPUT.PUT_LINE('The string is a palindrome.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('The string is not a palindrome.');
    END IF;
END;
/

