# functions and parameters on ruby

# function without parameters
def greetings()
    puts "Hello World!"
end

greetings()

# function with parameters
def square_area(side)
    return side * side
end

squareAreaA = square_area(4)
squareAreaB = square_area(3)
puts "Area of A square is #{squareAreaA}"
puts "Area of B square is #{squareAreaA}"

# rest or splat parameters (*) in ruby
def order_pizza(*pizzas)
    if pizzas.count == 1
        puts "1 pizza!"
    elsif pizzas.count == 2
       puts "2 pizzas!"
    elsif pizzas.count == 3
        puts "3 pizzas!"
    else
        print pizzas
    end
end

order_pizza("Big pizza A")
order_pizza("Big pizza A", "Big pizza B")
order_pizza("Big pizza A", "Big pizza B", "Big pizza C")
order_pizza("Big pizza A", "Big pizza B", "Big pizza C", "Big pizza D")