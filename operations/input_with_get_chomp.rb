# get input from user with gets.chomp
# the output is in string
print "Enter your age (years)? "

user_age = gets.chomp

# convert string to integer with .to_i
user_age_integer = user_age.to_i

# check if user age is more than 150 years
if user_age_integer > 150
  print "Your input is invalid, the input should be in years format"
end

puts "Your age is #{user_age_integer} years old."
puts "Your age is #{user_age_integer * 365} days old."