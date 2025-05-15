create user p1 identified by 12345;

User created.

SQL> grant all privileges to p1;

Grant succeeded.

SQL> exit;
Disconnected from Oracle Database 11g Express Edition Release 11.2.0.2.0 - 64bit Production
root@user:/home/cec# sqlplus p1 as sysdba

SQL*Plus: Release 11.2.0.2.0 Production on Thu May 15 14:53:31 2025

Copyright (c) 1982, 2011, Oracle.  All rights reserved.

Enter password: 
ERROR:
ORA-01031: insufficient privileges


Enter user-name: p1
Enter password: 

Connected to:
Oracle Database 11g Express Edition Release 11.2.0.2.0 - 64bit Production

SQL> desc customer;
ERROR:
ORA-04043: object customer does not exist


SQL> create table customer(id varchar(10),name varchar(15),age int^C

SQL> create table customer(id varchar(10),name varchar(15),age integer,salary integer);

Table created.

SQL> desc customer;
 Name					   Null?    Type
 ----------------------------------------- -------- ----------------------------
 ID						    VARCHAR2(10)
 NAME						    VARCHAR2(15)
 AGE						    NUMBER(38)
 SALARY 					    NUMBER(38)

SQL> @trigger1.sql
create or replace trigger t1 before insert or update or delete on cust for each row when(new.id>0)
                                                                  *
ERROR at line 1:
ORA-00942: table or view does not exist


SQL> @trigger1.sql

Trigger created.

SQL> set serveroutput on
SQL> insert into customer values(1001,'anjali',25,40000);
old salary
new salary40000
salary difference

1 row created.

SQL> select * from customer;

ID	   NAME 		  AGE	  SALARY
---------- --------------- ---------- ----------
1001	   anjali		   25	   40000

SQL> insert into customer values(1002,'ambili',28,45000);
old salary
new salary45000
salary difference

1 row created.

SQL> insert into customer values(1003,'anil',32,50000);
old salary
new salary50000
salary difference

1 row created.

SQL> select * from customer;

ID	   NAME 		  AGE	  SALARY
---------- --------------- ---------- ----------
1001	   anjali		   25	   40000
1002	   ambili		   28	   45000
1003	   anil 		   32	   50000

SQL> update customer set age=23 where id=1001;
old salary40000
new salary40000
salary difference0

1 row updated.

SQL> select * from customer;

ID	   NAME 		  AGE	  SALARY
---------- --------------- ---------- ----------
1001	   anjali		   23	   40000
1002	   ambili		   28	   45000
1003	   anil 		   32	   50000

SQL> update customer set salary=60000 where id=1003;
old salary50000
new salary60000
salary difference10000

1 row updated.

SQL> select * from customer;

ID	   NAME 		  AGE	  SALARY
---------- --------------- ---------- ----------
1001	   anjali		   23	   40000
1002	   ambili		   28	   45000
1003	   anil 		   32	   60000

SQL> 

