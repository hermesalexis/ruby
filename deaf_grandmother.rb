=begin
1. Escribir mensaje a la abuela sorda
   
2. Mientras contador de adios menor o igual que 3
    Mientras mensaje sea 'ADIOS' y contador menor que 3
      sumar contador de adios

   Si mensaje esta mayusculas
      reponder NO, ¡NO DESDE 1938!.(EL año debe ser aleatorio entre 1930 y 1950)
      volver al punto 1 
   De lo contrario
    responder HUH?! ¡HABLA MAS FUERTE, HIJO!     
      volver al punto 1
=end

message = ''
cont_goodbye = 1

while(cont_goodbye < 3)
  message = gets.chomp
   
   while (message == 'ADIOS' and cont_goodbye < 3)
   	  cont_goodbye += 1
   	  message = gets.chomp
   	  if message != 'ADIOS'
   	  	 cont_goodbye = 0
   	  end
   end

 if (message != 'ADIOS') 
	 if (message.upcase == message)
	  	 year = 1930 + rand(21)
	  	 puts "NO, ¡NO DESDE #{year}!."
	 else
	  	 puts "HUH?! ¡HABLA MAS FUERTE, HIJO!"
	 end
 end

end