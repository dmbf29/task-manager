class Dinosaur
  attr_reader :type, :age
  attr_writer :age
  def initialize(type, age)
    @type = type
    @age = age
    @extinct = true
  end

  def self.eras
    ["jurassic", "mesozoic"]
  end

  # def type
  #   @type
  # end

  def birthday
    @age += 1
  end
end


t_rex = Dinosaur.new("t-rex", 5)
puts t_rex.type
puts "#{t_rex.type} is #{t_rex.age} years old"
puts "#{t_rex.type} is having a birthday"
puts "We need to celebrate"
t_rex.age = t_rex.age + 1
puts "#{t_rex.type} is #{t_rex.age} years old"

p Dinosaur.eras



