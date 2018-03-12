require 'pg'
require './../env'

conn = PG.connect dbname: DB_NAME

res  = conn.exec "SELECT * from #{SCHEMA}.#{TABLE}"

res.each { |name|
  str = name['firstname'].strip + ' ' + name['lastname'].strip
  p str
}
