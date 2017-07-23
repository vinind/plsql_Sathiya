create or replace procedure insert_item(p_item_name varchar2) is
v_count number;
begin
select count(*) into v_count
from items
where item_name=p_item_name;
if v_count=0 then
insert into items(item_id,item_name,price,description)
values(null,p_item_name,660,'healthy');
else
update items
set price=price+51
where item_name=p_item_name;
end if;
end insert_item;