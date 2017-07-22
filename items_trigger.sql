create or replace trigger items_trig 
before insert or update on items
for each row
begin
if :new.item_id=null then
select items_sequence.nextval 
into :new.item_id
from dual;
end if;
end;