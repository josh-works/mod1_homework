gem 'minitest'
require 'minitest/autorun'
require_relative '../lib/calculator'

class CalculatorTest < Minitest::Test
  def test_create_new_calculator
    calculator = Calculator.new
    assert_instance_of Calculator, calculator
  end

  def test_total_starts_empty
    skip
    calculator = Calculator.new
    assert_equal 0, calculator.total

  end

  def test_can_add_one_number
    calculator = Calculator.new
    calculator.add(1)
    assert_equal 1, calculator.total
  end

  def test_can_add_many_numbers
    calculator = Calculator.new
    calculator.add(10, 20, 30)
    assert_equal 60, calculator.total
  end

  def test_can_subtract
    calculator = Calculator.new
    calculator.subtract(5)
    assert_equal (-5), calculator.total
  end

  def test_can_subtract_many_numbers
    calculator = Calculator.new
    calculator.subtract(5, 5, 50)
    assert_equal (-60), calculator.total
  end

  def test_can_reset_total
    calculator = Calculator.new
    calculator.add(10, 20, 30)
    calculator.clear
    assert_equal 0, calculator.total
  end
end
