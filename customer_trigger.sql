create or replace trigger customer_trig 
before insert or update on customer
for each row
begin
if :new.customer_id=null then
select customer_sequence.nextval 
into :new.customer_id
from dual;
end if;
end;