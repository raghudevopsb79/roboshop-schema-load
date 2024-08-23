if [ -z "$DB_TYPE" ]; then
  echo DB_TYPE Input is missing
  exit 1
fi

mkdir /app
cd /app
git clone $APP_GIT_URL .

if [ "${DB_TYPE}" == "mongo" ]; then
  for file in $SCHEMA_FILE ; do
    mongosh --host $DB_HOST </app/db/$file.js
  done

fi

if [ "${DB_TYPE}" == "mysql" ]; then
  for file in $SCHEMA_FILE ; do
    mysql -h $DB_HOST -u${DB_USER} -p${DB_PASS} < /app/db/$file.sql
  done
fi


