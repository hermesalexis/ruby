#Fizzbuzz

=begin
Si un número es divisible por 3 debe devolver "Fizz"
Si un número es divisible por 5 debe devolver "buzz"
Si un número es divisible por 3 y por 5 debe devolver Fiz y buzz
=end

def assert(truthiness)
  raise "Tú codigo tiene errores" unless truthiness
end

class Fizzbuzz

  def initialize(prime1=3, prime2=5, range=1..100)
    @prime1 = prime1
    @prime2 = prime2	
    @range = range
  end


  def fizzify(number)
    #number % 3 == 0 ? "fizz" : (number % 5 == 0 ? "buzz" : number)
    case 
    when number % (@prime1 * @prime2) == 0
      "fizzbuzz"
    when number % @prime1 == 0
      "fizz"	
    when number % @prime2 == 0
      "buzz"
    else
      number	
    end
    
  end

   def run
   	result = []
   	@range.each do |i|
   	  result << fizzify(i)
   	end
   	result
   end

end


fizzbuzz = Fizzbuzz.new
assert(fizzbuzz.fizzify(3) == "fizz")
assert(fizzbuzz.fizzify(5) == "buzz")
assert(fizzbuzz.fizzify(15) == "fizzbuzz")
assert(fizzbuzz.run.length == 100)

