
#¿Cómo representamos una carta? Figura y valor.
#¿Cómo representamos una baraja? 52 Cartas.
#¿Cómo representamos las cartas que tiene el jugador y el repartidor?

class Card
  attr_reader :suit, :value

  def initialize(suit, value)
  	@suit = suit
  	@value = value
  end

  def value
  	return 10 if ["J", "Q", "K"].include?(@value) #Devuelve el valor de la carta
  	return 11 if @value == "A"
  	return @value
  end

  def to_s
   "#{@value}.#{@suit}"
  end

end

class Deck
  attr_reader :cards

  def initialize
  	@cards = []
  	build_cards
  end

  def take! #Tomá una carta
   @cards.shift #Toma el primer el elemnto de un arreglo y lo va eliminando del mismo
  end

  private
    def build_cards
      [:clubs, :diamonds, :spades, :hearts].each do |suit|
        (2..10).each do |number|
          @cards << Card.new(suit, number) #Se inserta un elemnto en el array, igual que array.push
        end

        ["J", "Q", "K", "A"].each do |face|
       	  @cards << Card.new(suit, face)
        end
      end
       @cards.shuffle!	
    end

end

class Hand
  attr_reader :cards

  def initialize(deck)
    @deck = deck
    @cards = []
  end
   
  def hit! #Cuando el jugador pide carta !lleva porque cambia la estructura del objeto
   @cards << @deck.take! #Toma una carta de la baraja
  end
  
  def value
  	val = 0
  	@cards.each do |card|
      val += card.value
  	end
  	val #retorna val, ruby retorna la última línea que se ejecute
  end
   
  def to_s
  	str = ""
  	@cards.each do |card|
  	  str += "#{card}   "
  	end
  	str.strip #Elimina espacios en blanco a la iz y der cadena
  end
end

=begin
Este programa consiste en el juego BlackJack
Pseudocódigo
********************************************
1. Repartir las cartas.
2. Preguntar al usuario si desea carta o se planta
    Si pide carta
      Si se pasa, ir al punto 4
      De lo contrario volver al punto 2
    Si se planta
      Ir al punto 3
3. Determinar el valor que tiene el repartidor
   Si es < 17, entregar otra carta
      Si se pasa, ir al punto 4
      De lo contrario, volver al punto 3
   De lo contrario
      Ir al punto 4
4. Determinar el ganador.
    Si el usuario se pasó, gana el repartidor.
    Si el repartidor se pasó, gana el usuario
    Si tienen el mismo valor, quedaron empatados
    Si el repartidor tiene más que el usuario, gana el repartidor.
    De lo contrario gana el usuario.
5. Volver al punto 1 (Nuevo Juego)

=end


deck = Deck.new
dealer = Hand.new(deck)
player = Hand.new(deck)

player.hit!
player.hit!
dealer.hit!

puts "Repartidor: #{dealer} (#{dealer.value})" #se muestra el juego del repartidor

if player.value == 21 
   puts "Jugador:    #{player} (BJ)"	
else
   puts "Jugador:    #{player} (#{player.value})"
end

puts
puts "Tu turno:"

while player.value < 21
  print "  ¿Carta(C) o planas(P)? "
  option = gets.chomp # se captura el dato ingresado por el usuario
  if option == "C"
    player.hit!
    puts "  #{player} (#{player.value})"
    puts
  elsif option == "P"
  	break
  end	
end


if player.value <= 21
  puts
  puts "Turno del repartidor:"
  dealer.hit!
  if dealer.value == 21
    puts " #{dealer} (BJ)"
  else	
  	puts " #{dealer} (#{dealer.value})"
  end

  while dealer.value < 17
  	dealer.hit!
  	puts "  #{dealer} (#{dealer.value})"
  end
end

puts
if player.value > 21
  puts "Perdiste :("
elsif dealer.value > 21
  puts "Ganaste :)"
elsif dealer.value == player.value
  puts "Empatados =="
elsif dealer.value > player.value
  puts "Perdiste :("
else
  puts "Ganaste :)"
end