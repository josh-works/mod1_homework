class CreditCheck

  def initialize(number)
    @number = number
    @valid = nil
    validate(number)
  end

  def validate(number)
    formatted = number.to_s.split('').map { |x| x.to_i }
    doubled = formatted.reverse.map.with_index do |integer, index|
      if index.odd?
        integer * 2
      else
        integer
      end
    end

    combined = doubled.map do |integer|
      if integer >= 10
        item = integer.to_s.split('')
        (item[0].to_i) + (item[1].to_i) # <--fix this?
      else
        integer
      end
    end
    sum = combined.inject(:+)
    @valid = true if sum % 10 == 0
    @valid = false if sum % 10 != 0
    valid_number?
  end

  def valid_number?
    p "#{@number} is valid" if @valid == true
    p "#{@number} is not valid" if @valid == false
  end

end

# Testing output
CreditCheck.new(5541808923795240) # valid, passes
CreditCheck.new(4024007136512380) # valid, passes
CreditCheck.new(6011797668867828) # valid, passes
CreditCheck.new(79927398713) # valid, passes
CreditCheck.new(5541801923795240) # invalid and fails
CreditCheck.new(4024007106512380) # invalid and fails
CreditCheck.new(342804633855673) # amex, valid, passes
CreditCheck.new(342801633855673) # amex, invalid and fails
