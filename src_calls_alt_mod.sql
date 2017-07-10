desc calls;
alter table calls
modify status varchar2(25);
update calls
set call_id=10
where employee_id=100;