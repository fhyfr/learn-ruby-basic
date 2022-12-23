require 'rspec'
require_relative 'palindrome'

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

# create unit tests for check if function working correctly
RSpec.describe "palindrome solution 3" do
  it 'should return true if the input is palindrome' do
    expect(is_palindrome_3("KODOK")).to be true
    expect(is_palindrome_3("ABA")).to be true
  end

  it 'should return false if the input is not palindrome' do
    expect(is_palindrome_3("FIRMAN")).to be false
    expect(is_palindrome_3("NAMRIF")).to be false
    expect(is_palindrome_3("NAMRIF")).to equal(false)
  end
end

# create unit tests for check if function working correctly
RSpec.describe "palindrome solution 4" do
  it 'should return true if the input is palindrome' do
    expect(is_palindrome_4("KODOK")).to be true
    expect(is_palindrome_4("ABA")).to be true
  end

  it 'should return false if the input is not palindrome' do
    expect(is_palindrome_4("FIRMAN")).to be false
    expect(is_palindrome_4("NAMRIF")).to be false
    expect(is_palindrome_4("NAMRIF")).to equal(false)
  end
end