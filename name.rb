puts 'Cual es Tú primer nombre?'
name = gets.chomp
puts 'Cual es Tú segundo nombre?'
secondName = gets.chomp
puts 'Cual es Tú primer Apellido?'
lastname = gets.chomp
fullName = name + secondName + lastname
charactersName = fullName.length.to_s


puts 'Hola ' +  name + ' ' + secondName + ' ' + lastname + ' Tu nombre tiene ' + charactersName + ' Caracteres' 