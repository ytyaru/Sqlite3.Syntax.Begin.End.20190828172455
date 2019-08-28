SCRIPT_DIR=$(cd $(dirname $0); pwd)
cd "$SCRIPT_DIR"

rm -f a.db
sqlite3 a.db \
"savepoint SP1;" \
"create table T (A int unique);" \
"insert into T values(0);" \
"rollback to SP1;" \
"select * from T;"

sqlite3 a.db "select * from T;"

