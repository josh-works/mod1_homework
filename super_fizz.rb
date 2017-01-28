class SuperFizz
  def initialize
    repeat
  end
  def self.evaluate(number)
    if number % 3 == 0 && number % 5 == 0 && number % 7 == 0
      "SuperFizzBuzz"
    elsif number % 3 == 0 && number % 7 == 0
      "SuperFizz"
    elsif number % 5 == 0 && number % 7 == 0
      "FizzBuzz"
    elsif number % 3 == 0
      "Fizz"
    elsif number % 5 == 0
      "Buzz"
    elsif number % 7 == 0
      "Super"
    else
      number
    end
  end

  def repeat
    1000.times do |number|
      puts SuperFizz.evaluate(number)
    end
  end

end

SuperFizz.new
