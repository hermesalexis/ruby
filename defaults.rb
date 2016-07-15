=begin 
Escribe una función llamada defaults que recibe un único parámetro (un hash). 
La función debe retornar el mismo hash pero con los siguientes cambios:

Si el hash no tiene la llave :temperature, asignarle el valor de 10.
Si el hash no tiene la llave :altitude, asignarle el valor de 12000.
Si el hash no tiene la llave :pressure, asignarle el valor de 500.
=end

def default(hash)
  if not(hash.include?(:temperature))
  	hash[:temperature] = 10
  end

  if not(hash.include?(:altitude))
  	hash[:altitude] = 120000
  end

  if not(hash.include?(:pressure))
  	hash[:pressure] = 500
  end
  
  hash	
  
end

h = {:temperature => 20, :altitude => 2}

h = default(h)

puts  h