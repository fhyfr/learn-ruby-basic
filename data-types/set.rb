
require 'rspec'
# set data types
# set is data types which contains unique values without any duplicated

class Set
  def initialize()
    @array = Array.new
  end

  def add(value)
    if contains(value)
      return false
    end

    @array.push(value)

    return true
  end

  def contains(value)
    if @array.include? value
      return true
    end

    return false
  end

  def size()
    return @array.size
  end

  def remove(value)
    if contains(value)
      @array.delete(value)
      return true
    end

    return false
  end
end


RSpec.describe "set data structure" do
  set = Set.new

  it "should return true when add new unique value" do
    expect(set.add("Firman")).to be true
    expect(set.add("Sah")).to be true
  end

  it "should return false when add duplicate value" do
    expect(set.add("Firman")).to be false
  end

  it "should return true when contain inserted value" do
    expect(set.contains("Firman")).to be true
    expect(set.contains("Sah")).to be true
  end

  it "should return false when not contain inserted value" do
    expect(set.contains("Bambang")).to be false
    expect(set.contains("Gentolet")).to be false
  end

  it "should return correct set size" do
    expect(set.size).to eql(2)

    set.add("Riski")

    expect(set.size).to eql(3)
  end

  it "should return correct values when delete array element" do
    expect(set.remove("Riski")).to be true
    expect(set.size).to eql(2)
    expect(set.remove("Nothing")).to be false
  end
end