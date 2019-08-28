SCRIPT_DIR=$(cd $(dirname $0); pwd)
cd "$SCRIPT_DIR"

rm -f a.db
sqlite3 a.db \
"begin transaction;" \
"create table T (A int unique);" \
"insert into T values(0);" \
"savepoint SP1;" \
"aaaaaaaaaaaaaaaaa" \
"release SP1;" \
"insert into T values(1);" \
"commit;" \
"select * from T;"

sqlite3 a.db "select * from T;"

