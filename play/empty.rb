require 'pg'
require './../env'

conn = PG.connect dbname: DB_NAME

conn.exec "DELETE FROM #{SCHEMA}.#{TABLE}"
