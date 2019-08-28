SCRIPT_DIR=$(cd $(dirname $0); pwd)
cd "$SCRIPT_DIR"

for path in `ls -1 | grep .sql | sort`; do
	echo $path
	sqlite3 < $path
done

./auto_rollback_unique_error.sh
./auto_rollback_syntax_error.sh
rm -f a.db
./auto_rollback_unique_error_in_savepoint.sh
./auto_rollback_syntax_error_in_savepoint.sh
./savepoint_can_not_use_outside.sh
./savepoint_can_use_alone.sh
./savepoint_can_use_alone_rollback.sh
./savepoint_can_use_alone_unique_error.sh
./savepoint_can_use_alone_syntax_error.sh

