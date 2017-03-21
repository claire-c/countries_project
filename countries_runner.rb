require_relative("countries_data")
require_relative("country_functions")


puts "Welcome to the countries quiz appliction"
while true
  puts "What would you like to do?"

  puts "Options:"
  puts "  q: exit"
  puts "  1: play quiz"

  choice = gets.chomp
  case choice
  when "q"
    puts "See you later"
    break
  when "1"
    puts "Here is your first question. Which country uses this calling code?"
    random_country_calling_code = country_calling_codes(COUNTRIES)
    puts random_country_calling_code
    answer1 = gets.chomp().downcase()
  if answer1 == get_country_from_calling_code(COUNTRIES, random_country_calling_code).downcase()
    puts 10
    
  else
    puts "Wrong answer. Here is your second question. This is the country's sub region. What is the country?"
  end

  puts "\n\n" #line break

end

#User lands on site - first question: This is the area code what is the country?
#User inputs - if correct provide points and loop onto next question. If incorrect go to next question
#Next question - This is the sub region. What is the country?
#User inputs. If correct provide points and loop onto next question. If incorrect go to next question
#Next question - These are the border countries. What is the country?
#User input. If correct provide points and loop onto next question. If incorrect go to next question.
#Next question. This is the capital. What is the country?
#User input. If correct provide points and loop onto next question. If incorrect = 0
#Present score.

#Loop again three more times.
#Then present score.
#Can we save a leaderboard?
end
