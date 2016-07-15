=begin
1.Solicitar Cadena de texto (String) y número (length) 
  Si longitud de cadena > length
    cortar cadena
  De lo contrario
    completar cadena con espacios
=end

def adjust_text(cadena , longitud)
   if cadena.length > longitud
     cadena.slice(0 , longitud) 	
   else
     cadena + " "* (longitud - cadena.length)
   end
  
end

cadena = adjust_text("Hola" , 10)

puts cadena.chomp + cadena.length.to_s