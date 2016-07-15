=begin 
Inicial botellas en 99
preguntar si hay botellas 
  si hay imprimir verso
   99 bottles of beer on the wall, 99 bottles of beer .
   Take one down, pass it around, 98 bottles of beer on the wall...
  sino 
    terminar
=end

puts "Bienvenidos a 99 bottles on the wall"

bottles = 99
puts

while bottles >= 0
  puts bottles.to_s + ' bottles of beer on the wall, ' + bottles.to_s + ' bottles of beer .'	
  puts 'Take one down, pass it around, ' + bottles.to_s + ' bottles of beer on the wall...'
  puts
  bottles -= 1 	
end