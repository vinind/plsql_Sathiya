create sequence customer_sequence
start with 10
increment by 1
maxvalue 500;

insert into customer(customer_id,first_name,last_name,phone,email,address)
values(customer_sequence.nextval,'raj','kumar',5218564875,'raj@gm','12 N49 st');

insert into customer(customer_id,first_name,last_name,phone,email,address)
values(customer_sequence.nextval,'prakash','nathan',4318564875,'praka@gm','345 south st');



