=begin
 1. Preguntar por el año de inicio
 2. Preguntar por el año de fin
 3. Mientras año inicio sea menor o igual al final
      Si el año inicio es divisible por 4
        Si año inicio es divisible por 100
         Si año inicio es divisible por 400
           Imprimir año inicio
 4. Sumar año inicio
=end

puts 'Por favor ingrese el año inicial:'
initialYear = gets.chomp.to_i
puts 'Por favor ingrese el año final:'
finalYear = gets.chomp.to_i

while initialYear <= finalYear
	if initialYear % 4 == 0
	  if initialYear % 100 == 0
	    if initialYear % 400 == 0
	       puts initialYear.to_s		
	    end
	  else
	    puts initialYear.to_s		  	
	  end

	end
	initialYear += 1
end