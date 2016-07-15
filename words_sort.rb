=begin
 1. Solicitar al usuario que ingrese palabras
    Si el usuario ingresa Enter 
       Ordenar Arreglo
       mostrar palabras en orden alfabético
       Terminar
    De lo contrario
       Agregar palabra al arreglo
       ir al punto 1.
=end

dictionary = []
word = 'z'
while word != "" #Enter
  puts "Ingrese una palabra:"	
  word = gets.chomp
  if word !=""
	   dictionary.push word.downcase	
  end
end


puts dictionary.sort.join(', ')
