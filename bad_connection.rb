ask_input = "What would you like to say? > "
reply_not_upcase = "I AM HAVING A HARD TIME HEARING YOU."
reply_all_upcase = "NO, THIS IS NOT A PET STORE"
reply_goodbye = "ANYTHING ELSE I CAN HELP WITH?"
exit_phrase = "GOODBYE!"
exit_phrase_count = 0

while exit_phrase_count < 2
  puts ask_input
  input = gets.chomp
  if input.upcase != input
    puts reply_not_upcase
  elsif input.upcase == input && input != exit_phrase
    puts reply_all_upcase
  elsif input == exit_phrase
    puts reply_goodbye
    exit_phrase_count += 1
  end
end
