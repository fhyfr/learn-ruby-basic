# loop in ruby
# looping with while
# example of while
counter = 1
while counter <= 4
  puts "counter is #{counter}"
  counter += 1
end

# looping with until, until is opposite of while
# example of until
counter = 5
until counter <= 0
  puts "counter is #{counter}"
  counter -= 1
end

# looping with for...in
# example of for...in
set_of_number = [1, 2, 3, 4]
for value in set_of_number
  puts "value of number is #{value}"
end

# simple looping with times
# example of times
3.times do
  print "work "
end

print "\n"
# looping with each
# example of each
set_of_number.each do |number|
  puts "number: #{number}"
end
# shorthand of each
puts "-------------------------"
set_of_number.each { |number| puts "number: #{number}"}