require 'rspec'

# check if element is exist in array
# using linear search
# linear search will evaluate the index one by one
# from 0 to N
def linear_search(search_value, array)
  found = false

  for i in 0..array.size
    if array[i] == search_value
      found = true
      break
    end
  end

  # it's same with 'return found'
  found 
end

# using binary search
# lower bound = the first index of array
# upper bound = the last index of array
# midpoint = (lower bound + upper bound) / 2
# if search value == midpoint then return midpoint
# if search value > midpoint then lower bound = midpoint + 1
# if search value < midpoint then upper bound = midpoint - 1
def binary_search(search_value, array)
  lower_bound = 0
  upper_bound = array.size - 1

  while lower_bound <= upper_bound do
    # by default in ruby integer division will be floor
    midpoint = (lower_bound + upper_bound) / 2

    if search_value == array[midpoint]
      return true
    elsif search_value > array[midpoint]
      lower_bound = midpoint + 1
    elsif search_value < array[midpoint]
      upper_bound = midpoint - 1
    end
  end

  return false
end


# using recursive function
# the concept is same with binary search
# but using recursive
def recursive_search(search_value, array, lower_bound, upper_bound)
  if (lower_bound > upper_bound)
    return false
  end

  # different midpoint formula for recursive
  midpoint = lower_bound + (upper_bound - lower_bound) / 2

  if search_value == array[midpoint]
    return true
  elsif search_value < array[midpoint]
    return recursive_search(search_value, array, lower_bound, midpoint - 1)
  else
    return recursive_search(search_value, array, midpoint + 1, upper_bound)
  end
end

