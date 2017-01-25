ask_input = "What would you like to say? > "
reply_not_upcase = "I AM HAVING A HARD TIME HEARING YOU."
reply_all_upcase = "NO, THIS IS NOT A PET STORE"
reply_goodbye = "ANYTHING ELSE I CAN HELP WITH?"

goodbyes = 0

until goodbyes == 2
  puts ask_input
  input = gets.chomp
  if input != input.upcase
    puts reply_not_upcase
  elsif input == input.upcase && input != "GOODBYE!"
    puts reply_all_upcase
  elsif input == "GOODBYE!"
    goodbyes += 1
    puts reply_goodbye
  end
end
