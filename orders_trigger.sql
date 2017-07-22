create or replace trigger order_trig 
before insert or update on orders
for each row
begin
if :new.order_id=null then
select orders_sequence.nextval 
into :new.order_id
from dual;
end if;
end;