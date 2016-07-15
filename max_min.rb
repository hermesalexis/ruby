=begin
Tu misión en este reto es definir dos funciones, una llamada maximo y otra minimo,
 que reciben un número variable de argumentos (números) 
y retornan el máximo y el mínimo respectivamente.
=end

def maximo(*args)
  args.max
end

def minimo(*args)
  args.min	
end



puts "Máximo: #{maximo(5, 10, 20, 30, 40)} Mínimo: #{minimo(5, 10, 20, 30, 40)}"