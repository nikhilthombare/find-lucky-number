require 'pry'

class FindLuckyNumber
  
  def initialize(range_start, range_end)
    @lucky_numbers = []
    @range_start =  range_start
    @range_end =  range_end
  end

  def checkValitation
    @range_start < @range_end ? true : false
  end

  def findLuckyNumber
    if checkValitation
      (@range_start..@range_end).each do |number|
        if calculateNumber(number) == 7
          @lucky_numbers.push(number)
        end
      end
      return @lucky_numbers
    else
      return "Error: First Number should be less than Second Number"  
    end  
  end

  def calculateNumber(number)
    total = number.to_s.chars.map(&:to_i).sum
    if total > 15
      calculateNumber(total) 
    elsif total == 7 
      return total
    end     
  end

end

lucky = FindLuckyNumber.new(100, 200)
puts lucky.findLuckyNumber

