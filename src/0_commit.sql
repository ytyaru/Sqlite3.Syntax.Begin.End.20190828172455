begin;
create table T(A int);
insert into T values(0);
commit;
select * from T;

