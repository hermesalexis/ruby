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

puts dictionary.to_s
i = 1
aux =''
while i < dictionary.length
   j = 0
   while j < dictionary.length - i
   	 if dictionary[j] > dictionary[j+1]
   	 	aux = dictionary[j+1]
   	 	dictionary[j+1] = dictionary[j]
   	 	dictionary[j] = aux
   	 end
   	 j+=1
   end
   i+=1	
end

puts dictionary.to_s
