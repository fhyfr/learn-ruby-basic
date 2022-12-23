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

# solution 3
# no need to check all of element
# we only need to check half of total element
def is_palindrome_3(value)
  counter = 0

  while counter < (value.length / 2)
    first_index = counter
    last_index = value.length - counter - 1

    counter += 1

    if value[first_index] != value[last_index] 
      return false
    end
  end
  return true
end

# solution 4
# with recursive concept
def is_palindrome_recursive(value, counter)
  if counter < (value.length / 2)
    first_index = counter
    last_index = value.length - counter - 1

    if value[first_index] != value[last_index] 
      return false
    else
      return is_palindrome_recursive(value, counter + 1)
    end
  else
    return true
  end
end

def is_palindrome_4(value)
  return is_palindrome_recursive(value, 0)
end