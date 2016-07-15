=begin
/[A-Z]{3}[0-9]{3}/.match(plate).include? 
{/[A-Z]{3}[0-9]{3}/.match('EKX093')}
En el archivo solution.rb escribe un método llamado is_plate?
 que reciba un argumento llamado string, y retorne true si la cadena 
es una placa de un vehículo, o false de lo contrario.

is_plate?("") #=> false
is_plate?("MVV387") #=> true
is_plate?("mvv387") #=> false

=end

def is_plate?(plate)
  /^[A-Z]{3}[0-9]{3}$/.match(plate)? true : false
end

puts "#{is_plate?("EWZ548")}"