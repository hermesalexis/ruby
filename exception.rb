class Person
  attr_reader :name

  def initialize(name)
    self.name = name
  end

  # nuestro propio método de escritura para name
  def name=(name)
    raise ArgumentError, "El nombre no puede ser vacío" if name.nil?
    @name = name
  end
end

p = Person.new("Juan")
p.name = "Pedro" # no lanza excepción
p.name = nil # lanza ArgumentError
p.name = "" # lanza ArgumentError
