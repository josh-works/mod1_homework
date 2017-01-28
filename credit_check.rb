class CreditCheck
  attr_accessor :results
  def initialize(number)
    @number = number
    @account_id = number.to_s.slice(0..-2).to_i
    @checksum_digit = number.to_s[-1].to_i
    @evaluated_checksum_digit = nil
    @valid = false
    format_account_number
  end

  def format_account_number(account_number = @number)
    formatted = @number.to_s.split('')
    integers = formatted.map { |number| number.to_i }
    double_every_other(integers)
  end

  def double_every_other(array)
    doubled = array.reverse.map.with_index do |number, index|
      index.odd? ? number * 2 : number
    end
    sum_digits_over_10(doubled)
  end

  def sum_digits_over_10(array)
    summed = array.map do |number|
      if number >= 10
        item = number.to_s.split('')
        (item[0].to_i) + (item[1].to_i)
      else
        number
      end
    end
    make_checksum_digit(summed)
    valid_number?(summed)
  end

  def make_checksum_digit(array)
    total = array.inject(:+)
    results = total.to_s.split('').map { |number| number.to_i }
    verification_digit = results[-1]
    @evaluated_checksum_digit = 10 - verification_digit
  end

  def valid_number?(array_of_sums)
    if array_of_sums.inject(:+) % 10 == 0
      @valid = true
    end
    p "it's valid" if @valid == true
    p "it's not valid" if @valid != true
  end
end

CreditCheck.new(5541808923795240) # valid, passes
CreditCheck.new(4024007136512380) # valid, passes
CreditCheck.new(6011797668867828) # valid, passes
CreditCheck.new(79927398713) # valid, passes
CreditCheck.new(5541801923795240) # invalid and fails
CreditCheck.new(4024007106512380) # invalid and fails
CreditCheck.new(342804633855673) # amex, valid, passes
CreditCheck.new(342801633855673) # amex, invalid and fails
