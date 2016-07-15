class Car
  attr_reader :velocity 

  def initialize(velocity=0)
    @velocity = velocity
  end


  def accelerate(vel=1)
    vel > 0 ? @velocity += vel : @velocity
  end

  def break(br=1)
  	br > 0 ? @velocity -= br : @velocity
  end

end

class Bus < Car

end

car = Car.new
p car.velocity # => 0

car.accelerate
p car.velocity # => 1


car.accelerate(2)
p car.velocity # => 3

car.break
p car.velocity # => 2

car.break(2)
p car.velocity # => 0

bus = Bus.new
p bus.velocity # => 0

bus.accelerate
p bus.velocity # => 1


bus.accelerate(2)
p bus.velocity # => 3

bus.break
p bus.velocity # => 2

bus.break(2)
p bus.velocity # => 0