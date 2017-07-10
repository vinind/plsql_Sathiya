create table starbucks_menu(menu varchar2(20));
/
declare
menu1 varchar2(20);
begin
menu1:='iced coffee';
insert into starbucks_menu(menu)
values(menu1);
end;
/
declare
menu2 varchar2(20);
begin
menu2:='chocolate';
insert into starbucks_menu(menu)
values(menu2);
end;
/
declare
menu3 varchar2(20);
begin
menu3:='donuts';
insert into starbucks_menu(menu)
values(menu3);
end;


