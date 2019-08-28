SCRIPT_DIR=$(cd $(dirname $0); pwd)
cd "$SCRIPT_DIR"

for path in `ls -1 | grep .sql | sort`; do
	echo $path
	sqlite3 < $path
done

./auto_rollback_unique_error.sh
./auto_rollback_syntax_error.sh
rm -f a.db

