begin;
create table T(A int);
insert into T values(0);
savepoint SP1;
insert into T values(1);
rollback transaction to savepoint SP1;
release SP1;
insert into T values(2);
end;
select * from T;

