create table customers(cust_name varchar2(20));
/
declare
cust1 varchar2(20);
begin
cust1:='vijay';
insert into customers(cust_name)
values(cust1);
end;
/
declare
cust2 varchar2(20);
begin
cust2:='leela';
insert into customers(cust_name)
values(cust2);
end;
/
declare
cust3 varchar2(20);
begin
cust3:='meena';
insert into customers(cust_name)
values(cust3);
end;

