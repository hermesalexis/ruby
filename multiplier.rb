=begin
1. Solicitar dos argumentos a. arreglo b. número
2. Multiplicar cada elemento del arreglo por el número solicitado


=end

def multiplier(array , number)
	arrayR = []
	array.each	do |element|
	  arrayR.push number * element	
	end
	arrayR
end

a1 = [1 , 2 , 3]

a2 = multiplier(a1 , 3)
puts a2.to_s