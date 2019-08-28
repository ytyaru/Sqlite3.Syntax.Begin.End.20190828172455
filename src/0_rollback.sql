begin;
create table T(A int);
insert into T values(0);
rollback;
select * from T;

