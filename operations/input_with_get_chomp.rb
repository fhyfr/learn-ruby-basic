# get input from user with gets.chomp
# the output is in string
print "Enter your age (years)? "

userAge = gets.chomp

# convert string to integer with .to_i
userAgeInteger = userAge.to_i

# check if user age is more than 150 years
if userAgeInteger > 150
    print "Your input is invalid, the input should be in years format"
end

puts "Your age is #{userAgeInteger} years old."
puts "Your age is #{userAgeInteger * 365} days old."