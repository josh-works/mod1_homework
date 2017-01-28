class CreditCheck
  def initialize(account_id)
    @account_id = account_id.to_s.slice(0..-2).to_i
    @checksum_digit = account_id.to_s[-1].to_i
    @evaluated_checksum_digit = nil
    @valid = nil
    format_account_number
  end

  def format_account_number(account_number = @account_id)
    formatted = account_number.to_s.split('')
    integers = formatted.map { |number| number.to_i }
    double_every_other(integers)
  end

  def double_every_other(array)
    doubled = array.map.with_index do |number, index|
      index.even? ? number : number * 2
    end
    sum_digits_over_10(doubled)
  end

  def sum_digits_over_10(array)
    summed = array.map do |number|
      if number >= 10
        item = number.to_s.split('')
        (item[0].to_i) + (item[1].to_i) # <--fix this?
      else
        number
      end
    end
    make_checksum_digit(summed)
  end

  def make_checksum_digit(array)
    total = array.inject(:+)
    results = total.to_s.split('').map { |number| number.to_i }
    checksum_digit = 10 - results[-1]
    @evaluated_checksum_digit = checksum_digit
    valid_number?
  end

  def valid_number?
    if @evaluated_checksum_digit == @checksum_digit
      @valid = true
      p "this IS a valid number"
    elsif @evaluated_checksum_digit != @checksum_digit
      @valid = false
      p "this is not a valid number"
    end
  end
end
