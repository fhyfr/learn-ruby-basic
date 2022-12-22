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

# access level in class
# public, protected, private

# public can be access outside class
# private cannot be access outside class but only inside the class
# protected only can be access inside the class and child class
class Animal
  def initialize(name)
    @name = name
  end

  # public method
  def get_name()
    puts "Animal name: #{@name}"
  end

  # protected method
  def update_name(name)
    @name = name
  end

  protected :update_name
end

tiger = Animal.new("Tiger")
# tiger.update_name("Bird") # it will be error because method is protected
tiger.get_name()

class Dolpin < Animal
  # private method
  def set_number_of_legs(legs)
    @legs = legs
    puts "Legs: #{legs}"
  end

  def get_full_details()
    update_name(@name)
    puts "Name: #{@name}, Legs: #{@legs}"
  end

  private :set_number_of_legs
end

dolpin = Dolpin.new("Dolpin")
# dolpin.set_number_of_legs(2) # it will be error because method is private
dolpin.get_full_details()

