create or replace procedure insert_orders(p_order_id number) is
v_count number;
begin
select count(*) into v_count
from orders
where order_id=p_order_id;
if v_count=1 then
insert into orders(order_id,item_id,customer_id,quantity,total_price,status)
values(p_order_id,10,12,3,600,'deliver');
end if;
end insert_orders;