=begin
 1. recorrer el arreglo y preguntar para cada elemento
    Si el numéro parámetro es igual al numero actual del arreglo actual
      contar
     De lo contrario
      continuar
=end

def count_matches (array , number)
  count = 0
	array.each do |n|
	  if number == n
	  	count+=1
	  end
	end
	count
end

veces = count_matches([1,2,2,3,2,5,6] , 2)
puts "Numéro de veces  #{veces}"