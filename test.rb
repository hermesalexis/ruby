#puts "Me gusta" + " El pastel de manzana"
#puts "parpadeo " * 4 

#puts 12 + 12 
#puts "12" + "12"
#puts "12 + 12"

#puts "12" + 12
#puts "2" * "5"

#puts 'Mi nombre es "HERMES"'
#myString = "..Puedes decir eso de nuevo"
#puts myString
#puts myString

#name = 'Patricia Roxana Jesica Alexandra'
#puts 'Me llamo ' + name + '.'
#puts 'Wow!  "' + name + '" es un nombre realmente largo!'

=begin
var1 = 2
var2 = '5'
puts var1.to_s + var2
puts var1 + var2.to_i
puts '15'.to_f
puts '99.999'.to_f
puts '99.999'.to_i
puts '5 es mi número favorito.'.to_i
puts 'Tu mamá hizo.'.to_f
puts 'fibroso'.to_s
puts 3.to_i

#puts gets
puts 'Hola, ¿Cuál es tu nombre?'
name = gets.chomp
puts '¿Tu nombre es ' + name + '? ¡Es un nombre adorable!'
puts 'Encantado de conocerte, ' + name + '. :)'


var1 = 'parar'
var2 = 'subrayado'
var3 = 'Puedes pronunciar esta oracion'

puts var1.reverse
puts var2.reverse
puts var3.reverse

puts var1
puts var2
puts var3

puts '¿Cuál es tu nombre completo?'
name = gets.chomp
puts '¿Sabes que hay ' + name.length.to_s + ' caracteres en tu nombre, ' + name + '?'

letters = 'aAbBcCdDeE'
puts letters.upcase
puts letters.downcase
puts letters.swapcase
puts letters.capitalize
puts 'a'.capitalize
puts letters

lineWidth = 60
puts('Old Mother Hubbard'.center(lineWidth))
puts('Sat in her cupboard'.center(lineWidth))
puts('Eating her curds an whey,'.center(lineWidth))
puts('When along came a spider'.center(lineWidth))
puts('Which sat down beside her'.center(lineWidth))
puts('And scared her poor shoe dog away.'.center(lineWidth))


puts 5**2
puts 5**0.5
puts 7/2
puts 7%3
puts 365%7


puts((5-2).abs)
puts((2-5).abs)

srand 1111
puts(rand(100))
puts(Math::PI)

comando = ''

while comando != 'adios'
  comando = gets.chomp
  puts comando
  
end
names = ['Ada' , 'Belle' , 'Chris']
puts names
puts names[0]
puts names[1]
lenguajes = ['Inglés', 'Alemán', 'Ruby' , 'Español']

lenguajes.each do |leng|
  puts '¡Me gusta ' + leng + '!'
  puts '¿A ti?'
end

alimentos = ['Arroz' , 'papas', 'carne' , 'sopa']
puts alimentos
puts 
puts alimentos.to_s
puts
puts alimentos.join(', ')

carros = [['c1', 'c2', 'c3'], ['c4' , 'c5' , 'c6']]
puts carros.join(', ')

def numeroEnEspanol numero
 if numero < 0
  return ''
 end

end
class Dado
  

  def initialize
   @lados = ["frontal" , "trasero" , "superior" , "inferior" , "derecho" , "izquierdo"]
  end 

 def rodar
   @numeroMostrado = 1 + rand(6)
 end

 def mostrar
   @numeroMostrado
 end

 def timo
  @lados[1 + rand(5)]
 end

end

dado = Dado.new
puts dado.rodar
puts dado.timo

puts "#{/[A-Z]{3}[0-9]{3}/.match('EKX093')}"
=end


def i_must_have_truth(value)
  raise TypeError, 'You must give me truth' if value == false
end

i_must_have_truth true