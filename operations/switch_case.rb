# switch case in ruby

# example of empty case
def check_score(score)
  case
  when score == 1
    puts "true"
  when score <= 100 && score > 80
    puts "Your score is 'A'"
  when score >= 70
    puts "Your score is 'B'"
  when score >= 60
    puts "Your score is 'C'"
  else
    puts "Your score is 'D'"
  end
end

# the result is A
check_score(85)
# the result is B
check_score(76)
# the result is C
check_score(69)
# the result is C
check_score(60)
# the result is D
check_score(59)

# example of non empty case
# the output is true
number = 1
case number
when 1
  print "true"
else
  print false
end




  