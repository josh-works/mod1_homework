# # How will you know when the problem is solved? (Identify the big-picture goal)
# # How do you want to use the software? (Identify the “interface”)
# # What’s the (next-)most trivial possible case? (Identify the next small-picture goal)
# # How do we achieve this goal? (Sketch an algorithm using pseudocode)
#
# # 1. get user input.
# If you don’t input anything (just hit enter) they respond with HELLO?!
# If you ask a question with any lower-case letters, they respond with I AM HAVING A HARD TIME HEARING YOU.
# If you ask a question in all upper-case letters, they respond with NO, THIS IS NOT A PET STORE
# The first time you say GOODBYE! they say ANYTHING ELSE I CAN HELP WITH?
# The second time you say GOODBYE! they say THANK YOU FOR CALLING! and the program exits.
# To run the program, you would enter in your command line: ruby bad_connection.rb
#
# 1. Problem is solved when requirements are met
# 2. Interface = input passed to "gets" via command line, running the program
# 3. Most trivial case would be "a progam that accepts input, and then returns that same input"
# 4. pseudocode sketch:

# get and store user input
#   if it's empty, reply w/ "HELLO?!"
#
#   if user-input has any lower-case letters, reply ("puts") with "I AM HAVING A HARD TIME HEARING YOU."
#   if user-input is all upper-case, reply with "NO, THIS IS NOT A PET STORE"
#
#   if user-input is "GOODBYE!" once, reply with "ANYTHING ELSE I CAN HELP WITH?"
#   if user-input is "GOODBYE!" twice, reply with "THANK YOU FOR CALLING"
# end


# From http://backend.turing.io/module1/student_homework/bad_connection

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
