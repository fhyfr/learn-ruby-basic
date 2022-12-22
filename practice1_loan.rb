# we will create program for loan

puts "insert number of money (IDR): "
number = gets.chomp.to_i
loan = 2000

if number < loan
    puts "too few"
    loan += number 
elsif number > loan
    puts "wow, so much bro!"
    loan = number - loan
else
    puts "pass"
    loan = 0
end

puts "Your balance is IDR #{loan}"

