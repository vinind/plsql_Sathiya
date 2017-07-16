create table customer_id2(digit_no number(5) constraint digit_no_pk primary key,
digit_1 number(5),digit_2 number(5),digit_3 number(5),digit_4 number(5),digit_5 number(5),digit_6 number(5));

create or replace procedure luhn_algorithm2(in_number number)is
v_sum number(5);
begin
insert into customer_id2(digit_no,digit_1,digit_2,digit_3,digit_4,digit_5)
values(1,substr(in_number,1,1),substr(in_number,2,1),substr(in_number,3,1),substr(in_number,4,1),substr(in_number,5,1));
update customer_id2
set digit_2=digit_2*2,digit_4=digit_4*2
where digit_no=1;
select(digit_1+digit_2+digit_3+digit_4+digit_5)*9
into v_sum
from customer_id2
where digit_no=1;
update customer_id2
set digit_6=mod(v_sum,2)
where digit_no=1;     
end;
/
exec luhn_algorithm2(45678);

select * from customer_id2;