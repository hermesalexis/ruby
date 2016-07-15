def order(array , reverse=false)
	if reverse == true
       array.sort.reverse
    else
		array.sort 
	end
end

puts "Orden #{order([1, 2, 3,5,20,3,6,7,8], true)}" #=> [3, 2, 1]
puts "Orden #{order([5, 2, 1, 3, 4])}" #=> [1, 2, 3, 4, 5]