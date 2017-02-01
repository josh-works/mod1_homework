require_relative 'rpm'

class Calculator
  attr_accessor :total
  def initialize
    @total = 0
  end

  def add(*numbers)
    @total += numbers.reduce(:+)
  end

  def subtract(*numbers)
    @total -= numbers.reduce(:+)
  end

  def clear
    @total = 0
  end

end
