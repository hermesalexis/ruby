=begin
Tu misión en este reto es crear un método que reciba un arreglo y retorne una cadena 
que contenga una frase con los elementos del arreglo.

La frase se debe componer siguiendo las reglas del idioma español: 
los elementos se separan por coma (,), excepto los últimos dos que se separan con la letra y. 
Es decir ['hugo', 'paco', 'luis'] 
se convertirían en la frase "hugo, paco y luis".


phrase(['uno', 'dos', 'tres']) # => "uno, dos y tres"
phrase(['uno', 'dos']) # => "uno y dos"
phrase(['uno']) # => "uno"
phrase([]) # => ""

 1. Preguntar por la longitud del arreglo
    Si longitud del arreglo es cero
       retornar ""
    Si longitud del arreglo es uno
       retornar la palabra
    de lo contrario
       Preguntar si es la penultima palabra
        concatenar " y " + palabra
       De lo contrario
         concatenar palabra + ", "

Solución
         def phrase(arr)
           if arr.length == 0
             return ""
           elsif arr.length == 1
             return arr[0]
           else
             return "#{arr[0...-1].join(', ')} y #{arr[-1]}"
           end
         end         

=end

def phrase(arr)
  phrase = ""
  case 
  when arr.empty?
    phrase
  when arr.size == 1
  	phrase = arr.last
  else
  	i = 0
  	arr.each do |word| 
  	  if i == arr.size - 2 
  	    phrase += word + " y " 
  	  elsif i == arr.size - 1
  	    phrase += word
  	  else
  	    phrase += word + ", "
  	  end
  	  i += 1 
  	end
  end
  return phrase
end


def phrase(arr)
	
end

p phrase(['uno'])
