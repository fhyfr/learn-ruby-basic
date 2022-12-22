# object oriented programming (OOP) in ruby
# class
class Vehicle
  # init method, init method will always called if class is created
  def initialize
    puts "initialize method"
  end

  # create other method
  def start_engine()
    puts "starting engine..."
  end

  def stop_engine()
    puts "stopping engine..."
  end
end

# create new object from class
car = Vehicle.new
car.start_engine()
car.stop_engine()

# class with properti and method
class Person
  def initialize(name, age)
    @name, @age = name, age
  end

  def get_biodata()
    puts "Name: #{@name} \n Age: #{@age} \n Hoby: #{@hoby}"
  end
end

firman = Person.new("Firman", 23)
riski = Person.new("Riski", 19)
firman.get_biodata()
riski.get_biodata()


# inheritance in ruby
class Firman < Person 
  def initialize(hoby)
    @hoby = hoby
  end

  def set_name_and_age(name, age)
    @name, @age = name, age
  end
end

firman = Firman.new("Footbal")
firman.set_name_and_age("Firmansah", 23)
firman.get_biodata()