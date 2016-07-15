=begin
 1. Solicitar al usuario el título de la tabla
 2. Solicitar información de páginas y nombres de capitulo
 3. Preguntar si desea continuar.
    Si usuario presiona enter 
      termina programa
    De lo contrario
      ir a paso 2.

=end

contentTable = []
content = 'z'
lineWidth = 40
puts "Por favor ingrese el título de la Tabla"
content = gets.chomp
puts
puts "Por favor Ingrese su contenido eje: pg24. INTRODUCCIÓN" 
puts "Pulse la tecla ENTER PARA TERMINAR"
puts
while content != ""
 contentTable.push content
 content = gets.chomp	
end

i = 0

while i < contentTable.length
	if i == 0
	  puts contentTable[i].center lineWidth 	
	  puts
	else
      puts contentTable[i].ljust lineWidth
	end
	i += 1
end