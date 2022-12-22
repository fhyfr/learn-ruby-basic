# array data types in ruby
# array index is start from zero

set_of_number = [1, 2, 3, 4]

print "#{set_of_number} \n"

# get first and last of array
puts "first number: #{set_of_number.first}"
puts "last number: #{set_of_number.last}"

# get spesific range value
# example
# get two first array
puts "third number: #{set_of_number.take(2)}"

# get three first array
puts "first number: #{set_of_number.take(3)}"

# get total elements on array
puts "total number: #{set_of_number.count}"
puts "length number: #{set_of_number.length}"

# get spesific value of array by index
puts "second number: #{set_of_number[1]}"

# insert new array values with push
# new value will appear in the last index of array
set_of_number.push(5)
print "after push: #{set_of_number} \n"

# insert new array values with unshift
# new value will appear in the first index of array
set_of_number.unshift(0)
print "after unshift: #{set_of_number} \n"

# insert new array with insert for specific index wuth insert
set_of_number.insert(6, 6)
print "after insert: #{set_of_number} \n"

# delete spesific value of array by index with pop
# pop will delete the last value on array
set_of_number.pop
print "after pop: #{set_of_number} \n"

# delete spesific value of array by index with shift
# shift will delete the first value on array
set_of_number.shift
print "after shift: #{set_of_number} \n"





