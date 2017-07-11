create table order_calls(item varchar2(20),customer varchar2(15),employee varchar2(20));

declare
item1 varchar2(20);
customer1 varchar2(20);
employee1 varchar2(20);
begin
item1:='chocolate';
customer1:='vijay';
employee1:='sathiya';
insert into order_calls(item,customer,employee)
values(item1,customer1,employee1);
end;
/
declare
item2 varchar2(20);
customer2 varchar2(20);
employee2 varchar2(20);
begin
item2:='iced coffee';
customer2:='leela';
employee2:='vinay';
insert into order_calls(item,customer,employee)
values(item2,customer2,employee2);
end;
/
declare
item3 varchar2(20);
customer3 varchar2(20);
employee3 varchar2(20);
begin
item3:='donuts';
customer3:='meena';
employee3:='martin';
insert into order_calls(item,customer,employee)
values(item3,customer3,employee3);
end;
