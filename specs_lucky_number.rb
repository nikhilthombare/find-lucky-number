require 'rspec'
require 'pry'
require './find_lucky_number'

describe "Find Lucky Number" do
  it "Error when first argument is greater than second argument" do
    number_obj = FindLuckyNumber.new(10,1)
    isValid = number_obj.findLuckyNumber
    expect(isValid).to eq("Error: First Number should be less than Second Number" )
  end

  it "check Lucky number between 1 to 10" do
    number_obj = FindLuckyNumber.new(1,10)
    number = number_obj.findLuckyNumber
    expect(number).to eq([7])
  end

  it "check Lucky number between 10 to 20" do
    number_obj = FindLuckyNumber.new(10,20)
    number = number_obj.findLuckyNumber
    expect(number).to eq([16])
  end

  it "check Lucky number between 100 to 200" do
    number_obj = FindLuckyNumber.new(100,200)
    numbers = number_obj.findLuckyNumber
    expect(numbers).to eq([106, 115, 124, 133, 142, 151, 160, 169, 178, 187, 196])
  end

  it "check Lucky number between 62,400 to 62,500" do
    number_obj = FindLuckyNumber.new(62400,62500)
    numbers = number_obj.findLuckyNumber
    expect(numbers).to eq([62404, 62413, 62422, 62431, 62440, 62449, 62458, 62467, 62476, 62485, 62494])
  end
  
  it "check Lucky number between 999,999,999,900 to 1,000,000,000,000" do
    number_obj = FindLuckyNumber.new(999999999900, 1000000000000)
    numbers = number_obj.findLuckyNumber
    expect(numbers).to eq([999999999907, 999999999916, 999999999925, 999999999934, 999999999943, 999999999952, 999999999961, 999999999970, 999999999979, 999999999988, 999999999997])
  end
end