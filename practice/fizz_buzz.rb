# fizz buzz game
# if the number is divisible by 3 then print fizz 
# if the number is divisible by 5 then print buzz 
# if the number is divisible by 3 and 5 then print fizz buzz

# solution
def fizz_buzz_1()
  (1..100).each do |number|
    if number % 3 == 0 && number % 5 == 0
      print "fizz_buzz "
    elsif number % 3 == 0
      print "fizz "
    elsif number % 5 == 0
      print "buzz "
    else
      print "#{number} "
    end
  end
end

fizz_buzz_1()