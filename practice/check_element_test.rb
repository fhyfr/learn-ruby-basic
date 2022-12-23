require_relative 'check_element'

# create unit tests for linear search with ordered array
RSpec.describe 'linear search' do
  input_array = [1, 2, 3, 4, 5, 6, 7, 8, 9]

  it 'should return true if contains the value' do
    search_value = 7

    expect(linear_search(search_value, input_array)).to be true
  end

  it 'should return false if not contains the value' do
    search_value = 10

    expect(linear_search(search_value, input_array)).to be false
  end

  it 'should return false if input is empty array' do
    input_array = []
    search_value = 10

    expect(linear_search(search_value, input_array)).to be_falsy
  end
end

# create unit tests for binary search with ordered array
RSpec.describe 'binary search' do
  input_array = [1, 2, 3, 4, 5, 6, 7, 8, 9]

  it 'should return true if contains the value' do
    search_value = 7

    expect(binary_search(search_value, input_array)).to be true
  end

  it 'should return false if not contains the value' do
    search_value = 10

    expect(binary_search(search_value, input_array)).to be false
  end

  it 'should return false if input is empty array' do
    input_array = []
    search_value = 10

    expect(binary_search(search_value, input_array)).to be_falsy
  end
end

# create unit tests for recursive search with ordered array
RSpec.describe 'recursive search' do
  input_array = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  lower_bound = 0
  upper_bound = input_array.size - 1

  it 'should return true if contains the value' do
    search_value = 7

    expect(recursive_search(search_value, input_array, lower_bound, upper_bound)).to be true
  end

  it 'should return false if not contains the value' do
    search_value = 10

    expect(recursive_search(search_value, input_array, lower_bound, upper_bound)).to be false
  end

  it 'should return false if input is empty array' do
    input_array = []
    search_value = 10
    upper_bound = input_array.size - 1

    expect(recursive_search(search_value, input_array, lower_bound, upper_bound)).to be_falsy
  end
end