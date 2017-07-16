create sequence items_sequence
start with 10
increment by 5
maxvalue 1000;

insert into items(item_id,item_name,price,description)
values(items_sequence.nextval,'iced coffee',300,'drinkable');

insert into items(item_id,item_name,price,description)
values(items_sequence.nextval,'chocolates',420,'eatable');