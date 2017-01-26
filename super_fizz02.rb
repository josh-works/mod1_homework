puts "what's your number? > "
number = gets.chomp.to_i
message = ""
message += "Super" if number % 7 == 0
message += "Fizz" if number % 3 == 0
message += "Buzz" if number % 5 == 0

p message == "" ? number : message
