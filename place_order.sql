create or replace procedure place_order(p_item_id number) is
v_count number;
v_customer_id customer.customer_id%type:=&v_id;
v_first_name customer.first_name%type:=&v_fn;
v_last_name customer.last_name%type:=&v_ln;
v_phone customer.phone%type:=&v_ph;
v_email customer.email%type:=&v_em;
v_address customer.address%type:=&v_ad;
begin
select count(*) into v_count
from items
where item_id=p_item_id;
if v_count=0 then
insert into items(item_id,item_name,price,description)
values(p_item_id,'cookies',600,'healthy');
else
update items
set price=price+51
where item_id=p_item_id;
end if;
insert into customer(customer_id,first_name,last_name,phone,email,address)
values(v_customer_id,v_first_name,v_last_name,v_phone,v_email,v_address);
end;