# practice factorial
# the formula of factorial is
# n! = (n-1) x (n-1) x (n-3) x ... x 3 x 2 x 1
# n! = n x (n-1)!

# solution 1
# create new temporary variable for collect
def factorial_1(value)
  if value < 0 
    return "invalid: input cannot be negative"
  end

  if value == 0
    return 1
  end

  result = 1
  while value > 1
    result *= value

    value -= 1
  end

  result
end

# solution 2
# without any looping, so we use recursive
def factorial_2(value)
  if value < 0 
    return "invalid: input cannot be negative"
  end

  if value == 0
    return 1
  else
    # example
    # 5 * factorial(4)
    # 5 * 4 * factorial(3)
    # 5 * 4 * 3 * factorial(2)
    return value * factorial_2(value - 1)
  end
end

# solution 3
# with tail recursive
# tail recursion is defined as a recursive function in which the recursive call is the last statement that is executed by the function
# so basically nothing is left to execute after the recursion call
# tail recursive can be use for avoid stack overflow
def factorial_3(value, result)
  if value < 0 
    return "invalid: input cannot be negative"
  end

  if value == 0
    return result
  else
    # example
    # factorial(4,1)
    # factorial(3,12)
    # factorial(2,24)
    # factorial(1,24)
    return factorial_3(value - 1, result * value)
  end
end
