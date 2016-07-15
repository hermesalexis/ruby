=begin
Hola Maker,

Tu misión en este reto es definir un método llamado palindrome sobre la clase String de Ruby,
de modo que se pueda invocar sobre cualquier cadena.

Ejemplos:

"anita lava la tina".palindrome? # => true
"hora de irse".palindrome? # => false
=end

class String
  
 def palindrome?
   self.delete("/^ $/").downcase.reverse == self.delete("/^ $/").downcase
 end

end


p "Anita LaVa la tina".palindrome?
