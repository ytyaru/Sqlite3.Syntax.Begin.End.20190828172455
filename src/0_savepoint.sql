begin;
savepoint SP1;
create table T(A int);
insert into T values(0);
release SP1;
end;
select * from T;

