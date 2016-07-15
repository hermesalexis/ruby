class Perro
  attr_accessor :name
  def initialize(name)
    @name = name
  end


end

pepe = Perro.new("Pepe")
max = Perro.new("Max")

p pepe.name
p max.name

pepe.name = "Maya"
p pepe.name