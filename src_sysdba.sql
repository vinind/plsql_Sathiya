create user sathiya identified by pass123;
grant connect to sathiya;
grant select on hr.employees to sathiya;
grant all privileges to sathiya;
/
create user vinay1 identified by pass123;
grant connect to vinay1;
grant all privileges to vinay1;
/
create user martin identified by pass123;
grant connect to martin;
grant all privileges to martin;
/
create table sales(employees varchar2(15) not null,customer varchar2(10),orders varchar2(20));
/
select * from sales;
insert into sales(employees,customer,orders)
values('sathiya','raja','iced coffee');
/
insert into sales(employees,customer,orders)
values('vinay1','kumar','smoothies');
/
insert into sales(employees,customer,orders)
values('martin','peter','chocolate');
/
insert into sales(employees,customer,orders)
values('vinay1','shaik','kids drink');
/
insert into sales(employees,customer,orders)
values('sathiya','leela','cold juice');
/
select * from sales;