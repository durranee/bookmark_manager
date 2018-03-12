str = 'Agnes Donat, Paola Schiaffino,
Noelle Legrain, Raefe Newton-Jones,
Julian Ng, Reena Koudi,
Irfan Durrani, Richard Hewitt,
Hemesh Unka, Somayeh Alimohammadi,
Giacomo Ninniri, Thomas Duffy,
George Drayson, Tom Betts,
Daniel Campos, Vivian Allen,
Cindy Liu, Flying Solo,
Christopher Ly, Alejandro Pitarch-Olivas,
Chiaki Mizuta, Alexandra Mccarroll,
Charlene Bastians, Alfie Darko,
Antonio Ciniglio, Ammar Arjomand'

arr = str.split(',')
arr2 = []

arr.each { |elem|
   arr2.push(elem.gsub("\n",'').strip.split(' '))
}

require 'pg'
require './env'

conn = PG.connect dbname: DB_NAME

arr2.each { |person|
  conn.exec "INSERT INTO friends.test VALUES ('#{person[0]}','#{person[1]}')"
}
