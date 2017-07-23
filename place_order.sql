create or replace procedure place_order(p_item_name varchar2,p_first_name varchar2,p_last_name varchar2,p_phone number)is
v_item_name varchar2(20);
v_first_name varchar2(20);
v_last_name varchar2(20);
v_phone number;
begin
v_item_name:=p_item_name;
v_first_name:=p_first_name;
v_last_name:=p_last_name;
v_phone:=p_phone;
insert_item(v_item_name);
insert_customer(v_first_name,v_last_name,v_phone);
end;