def fizz_buzz(number)
  if number % 3 == 0
    "fizz"
  elsif number % 5 == 0
    "fizzbuzz"
  else
    number
  end
end

puts "#{fizz_buzz(15)}"