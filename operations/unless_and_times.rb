# unless and times in ruby

# unless is opposite of if statement
# the statement will be evaluate if the
# result of statement is false
def checkNumber(number)
    unless number == 9
        puts "inside unless"
    else
        puts "outside unless"
    end
end

# the result will be "inside unless"
checkNumber(10) 
# the result will be "outside unless"
checkNumber(9)

# times will execute the code N times
# times is simple loop in ruby
3.times do
    print "check the number: "
    number = gets.chomp.to_i
    checkNumber(number)
end
