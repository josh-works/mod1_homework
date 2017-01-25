# require 'prime'
#
# class Prime
#   def initialize
#   end
#   def self.prime?(number)
#     if number.prime?
#       puts "#{number} is a prime number"
#     else
#       puts "#{number} is NOT a prime number"
#     end
#
#   end
# end


require 'prime'

def prime?(number)
  number.prime? ? "#{number} is a prime number" : "#{number} is not a prime number"
end

puts prime?(5)
puts prime?(10)

if input != ''
  puts "what else do you want to test? > "
  input = gets.chomp.to_i
  prime?(input)
end
