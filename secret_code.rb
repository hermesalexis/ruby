=begin
Hola Maker,

Tu misión en este reto es escribir una función llamada secret_code que recibe una cadena de texto
 y retorna el código secreto que viene en la cadena.

¿Cómo descifrar el código secreto? Dentro del texto vienen algunos números en palabras en Inglés: 
one, two, three, four, five, six, seven, eight y nine. Reemplaza las palabras por los números 
correspondientes y súmalos. El resultado es el número secreto que deberás retornar.

Ejemplos:

secret_code("one on one") #=> 2
secret_code("five monkeys in three farms") #=> 8
secret_code("") #=> 0
secret_code("fivethreeone") #=> 0
Nota: Fíjate que los números deben ser una palabra completa, no estar dentro de una palabra 
como el último ejemplo.

 1. Convertir string a array
 2. Analizar array y preguntar.
   Si el array esta vacío ""
    retorna 0
   si no encuentra palabras con números
    retornar 0
   si encuentra alguna palabra con número 
     acumularla
solución
def secret_code(phrase)
  numbers = { 'one' => 1, 'two' => 2, 'three' => 3, 'four' => 4, 'five' => 5, 'six' => 6, 'seven' => 7, 'eight' => 8, 'nine' => 9 }

  value = 0
  phrase.split(/\W/).each do |word|
    value += numbers[word] if numbers[word]
  end

  value
end
=end




def secret_code(string)
  numbers = {:one => 1, :two => 2, :three => 3, :four => 4, :five => 5, :six => 6, :seven => 7,
            :eight => 8, :nine => 3}
  arr_cadena = string.split(/\W/) #"Extrae palabras de un string (ejemplo .hola queda . y hola)"
  value= 0
   	arr_cadena.each do|word|
      value+= numbers[word.to_sym] if numbers[word.to_sym]
    end
  value
end


p secret_code("one on one.")