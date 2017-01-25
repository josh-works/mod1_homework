# If it’s evenly divisible by 3, 5, and 7 print SuperFizzBuzz
# If it’s evenly divisible by 3 and 7 print SuperFizz
# If it’s evenly divisible by 5 and 7 print SuperBuzz
# If it’s evenly divisible by 3 and 5 print FizzBuzz

# If it’s evenly divisible by 3, print Fizz
# If it’s evenly divisible by 5, print Buzz
# If it’s evenly divisible by 7, print Super
# Otherwise print just the number
exit = false

while exit == false
  puts "\nWhat number do you want to test? ('exit' to exit) > "
  input = gets.chomp

  if input == "exit"
    exit = true
  elsif input.to_i % 3 == 0 && input.to_i % 5 == 0 && input.to_i % 7 == 0
    puts "SuperFizzBuzz"
  elsif input.to_i % 3 == 0 && input.to_i % 7 == 0
    puts "SuperFizz"
  elsif input.to_i % 5 == 0 && input.to_i % 7 == 0
    puts "FizzBuzz"
  elsif input.to_i % 3 == 0
    puts "Fizz"
  elsif input.to_i % 5 == 0
    puts "Buzz"
  elsif input.to_i % 7 == 0
    puts "Super"
  else
    puts "your number was #{input}"
  end
end
