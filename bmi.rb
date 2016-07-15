=begin
Programa que calcula el IMC de una persona
-------------------------------------------
 1.Solicitar el peso de la persona.
 2.Solicitar la estarura de la persona.
 3.Calcular el IMC.
 4.Determinar si la persona esta baja de peso, normal o con sobrepeso
  4.1 Si el IMC < 18.5 está baja de peso
  4.2 Si el IMC está entre 18.5 y 24.99 está normal.
  4.3 Si el IMC es >= 25, tiene sobre peso
 5.Imprimir el resultado
=end

print "Ingresa Tú peso (Kg): "
weight = gets.chomp.to_f

print "Ingrega Tú estatua (metros): "
height = gets.chomp.to_f
bmi = weight / height ** 2

puts # space

print "#{bmi.round(2)} "

if bmi < 18.5
 puts "(BAJA DE PESO("
elsif bmi < 25 
 puts "(NORMAL)"
else
 puts "(SOBREPESO)"
end
	