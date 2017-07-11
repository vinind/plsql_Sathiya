create table samp(sno number,sname varchar2(20));

desc samp;
alter table samp drop column sno;
alter table samp add(sno number(5),age number(4),city varchar2(20));
alter table samp add constraint sno_pk primary key(sno);
alter table samp modify age number(5);
alter table samp rename column sname to stu_name;
alter table samp rename to sample;

select * from sample;
create sequence sample_seq
start with 1
increment by 1
maxvalue 50;

insert into sample(stu_name,sno,age,city)
values('john',sample_seq.nextval,24,'chennai');
insert into sample(stu_name,sno,age,city)
values('prabhu',sample_seq.nextval,34,'hyderabad');
insert into sample(stu_name,sno,age,city)
values('sheela',sample_seq.nextval,27,'chennai');
select * from sample;
update sample
set city='banagalore'
where sno=3;
delete from sample
where sno in(2,3);
select * from sample;