SCRIPT_DIR=$(cd $(dirname $0); pwd)
cd "$SCRIPT_DIR"

rm -f a.db
sqlite3 a.db \
"begin transaction;" \
"create table T (A int);" \
"insert into T values(0);" \
"aaaaaaaaaaaaaaaaa" \
"insert into T values(1);" \
"commit;" \
"select * from T;"

sqlite3 a.db "select * from T;"

