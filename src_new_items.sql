create sequence src_items_seq
start with 40
increment by 10
maxvalue 500;
/
declare
v_item_name varchar2(20);
v_price number;
v_description varchar2(20);
begin
v_item_name:='iced coffee';
v_price:=100;
v_description:='tasty';
insert into items(item_id,item_name,price,description)
values(src_items_seq.nextval,v_item_name,v_price,v_description);
v_item_name:='cookies';
v_price:=150;
v_description:='yummy';
insert into items(item_id,item_name,price,description)
values(src_items_seq.nextval,v_item_name,v_price,v_description);
v_item_name:='orange juice';
v_price:=75;
v_description:='pulppy';
insert into items(item_id,item_name,price,description)
values(src_items_seq.nextval,v_item_name,v_price,v_description);
end;
/
select * from items;