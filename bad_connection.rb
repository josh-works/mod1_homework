ask_input = "What would you like to say? > "
reply_not_upcase = "I AM HAVING A HARD TIME HEARING YOU."
reply_all_upcase = "NO, THIS IS NOT A PET STORE"
reply_goodbye = "ANYTHING ELSE I CAN HELP WITH?"

goodbyes = 0
puts ask_input
input = gets.chomp

until goodbyes == 1
  if input != input.upcase
    puts reply_not_upcase
    puts ask_input
    input = gets.chomp
  elsif input == input.upcase && input != "GOODBYE!"
    puts reply_all_upcase
    puts ask_input
    input = gets.chomp
  elsif input == "GOODBYE!"
    puts reply_goodbye
    puts ask_input
    goodbyes += 1
    input = gets.chomp
  end
end
