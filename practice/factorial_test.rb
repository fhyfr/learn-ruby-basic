require 'rspec'
require_relative 'factorial'

RSpec.describe "factorial solution 1" do
  it "should return error invalid input when input is less than zero (negative)" do
    expect(factorial_1(-10)).to eq("invalid: input cannot be negative")
  end
  
  it "should return 1 when the input is equal to zero or one" do
    expect(factorial_1(0)).to eq(1)
    expect(factorial_1(1)).to eq(1)
  end

  it "should return the correct result when given non zero input" do
    expect(factorial_1(2)).to eq(2)
    expect(factorial_1(3)).to eq(6)
    expect(factorial_1(4)).to eq(4*3*2*1)
    expect(factorial_1(10)).to eq(10*9*8*7*6*5*4*3*2*1)
    expect(factorial_1(20)).to eq(2432902008176640000)
  end
end

RSpec.describe "factorial solution 2" do
  it "should return error invalid input when input is less than zero (negative)" do
    expect(factorial_2(-10)).to eq("invalid: input cannot be negative")
  end
  
  it "should return 1 when the input is equal to zero or one" do
    expect(factorial_2(0)).to eq(1)
    expect(factorial_2(1)).to eq(1)
  end

  it "should return the correct result when given non zero input" do
    expect(factorial_2(2)).to eq(2)
    expect(factorial_2(3)).to eq(6)
    expect(factorial_2(4)).to eq(4*3*2*1)
    expect(factorial_2(10)).to eq(10*9*8*7*6*5*4*3*2*1)
    expect(factorial_2(20)).to eq(2432902008176640000)
  end
end

RSpec.describe "factorial solution 3" do
  # initialize tail recursion result
  test_result = 1

  it "should return error invalid input when input is less than zero (negative)" do
    expect(factorial_3(-10, test_result)).to eq("invalid: input cannot be negative")
  end
  
  it "should return 1 when the input is equal to zero or one" do
    expect(factorial_3(0, test_result)).to eq(1)
    expect(factorial_3(1, test_result)).to eq(1)
  end

  it "should return the correct result when given non zero input" do
    expect(factorial_3(2, test_result)).to eq(2)
    expect(factorial_3(3, test_result)).to eq(6)
    expect(factorial_3(4, test_result)).to eq(4*3*2*1)
    expect(factorial_3(10, test_result)).to eq(10*9*8*7*6*5*4*3*2*1)
    expect(factorial_3(20, test_result)).to eq(2432902008176640000)
  end
end