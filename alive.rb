=begin
 1. Solicitar argumentos
   a. playerName
   b. points
 2. Si playerName es igual a "ikk" y points > 30 o Si playerName es igual a "gut" y points > 10
       retornar verdadero
    De lo contrario
       retornar Falso

=end

def alive? (playerName , points)
  (playerName == "ikk" and points > 30) or (playerName == "gut" and points > 10) ? true : false
end

puts "#{alive('xx' , 31)}"