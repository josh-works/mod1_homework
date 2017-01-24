goodbyes = 0
puts "What would you like to say? > "
phrase = gets.chomp

until goodbyes == 1
  if phrase != phrase.upcase
    puts "I AM HAVING A HARD TIME HEARING YOU."
    puts "What would you like to say? > "
    phrase = gets.chomp
  elsif phrase == phrase.upcase && phrase != "GOODBYE!"
    puts "NO, THIS IS NOT A PET STORE"
    puts "What would you like to say? > "
    phrase = gets.chomp
  elsif phrase == "GOODBYE!"
    puts "ANYTHING ELSE I CAN HELP WITH?"
    puts "What would you like to say? > "
    goodbyes += 1
    puts "we're at #{goodbyes}"
    phrase = gets.chomp
  end
end
