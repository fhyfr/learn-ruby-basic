# unless and times in ruby

# unless is opposite of if statement
# the statement will be evaluate if the
# result of statement is false
def check_number(number)
    unless number == 9
        puts "inside unless"
    else
        puts "outside unless"
    end
end

# the result will be "inside unless"
check_number(10) 
# the result will be "outside unless"
check_number(9)

# times will execute the code N times
# times is simple loop in ruby
3.times do
    print "check the number: "
    number = gets.chomp.to_i
    check_number(number)
end
