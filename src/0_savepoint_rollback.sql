begin;
savepoint SP1;
create table T(A int);
insert into T values(0);
rollback transaction to savepoint SP1;
select * from T;

