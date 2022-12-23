require 'rspec'

# palindrome game
# A palindrome is a word, number, phrase, or other sequence of symbols that reads the same backwards as forwards, 
# such as the words madam or racecar, the date and time 11/11/22 11:11, and the sentence: "A man, a plan, a canal – Panama".

# solution 1
def is_palindrome_1(value)
  temp = ""
  counter = value.length - 1

  while counter >= 0
    temp += value[counter]

    counter -= 1
  end

  # puts temp
  return temp == value  
end

# create unit tests for check if function working correctly
RSpec.describe "palindrome solution 1" do
  it 'should return true if the input is palindrome' do
    expect(is_palindrome_1("KODOK")).to be true
    expect(is_palindrome_1("ABA")).to be true
  end

  it 'should return false if the input is not palindrome' do
    expect(is_palindrome_1("FIRMAN")).to be false
    expect(is_palindrome_1("NAMRIF")).to be false
  end
end

# solution 2
# without create temporary variable
def is_palindrome_2(value)
  counter = 0

  while counter < value.length
    first_index = counter
    last_index = value.length - counter - 1

    counter += 1

    if value[first_index] != value[last_index] 
      return false
    end
  end
  return true
end
puts "------------------------"

# create unit tests for check if function working correctly
RSpec.describe "palindrome solution 2" do
  it 'should return true if the input is palindrome' do
    expect(is_palindrome_2("KODOK")).to be true
    expect(is_palindrome_2("ABA")).to be true
  end

  it 'should return false if the input is not palindrome' do
    expect(is_palindrome_2("FIRMAN")).to be false
    expect(is_palindrome_2("NAMRIF")).to be false
    expect(is_palindrome_2("NAMRIF")).to equal(false)
  end
end