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
    puts "Here we go! We'll play three rounds. Try to guess the country from the clues. We'll give you four clues for each country. \n\nHere is the first round. Which country uses this calling code?"
    answer = random_country_generator(COUNTRIES)
    puts answer["callingCodes"]
    #random_country_calling_code = country_calling_codes(answer)
    #puts random_country_calling_code
    answer1 = gets.chomp()

    #I need a function with two arguments - answer and answer1

    if answer1 == answer["name"]#get_country_from_calling_code(answer, random_country_calling_code).downcase()
      round1_points = 10
      puts "Well done! You have #{round1_points} points!"
    else
      puts "Wrong answer. Here is your second clue. \n\nThis is the country's sub region. What is the country?"
      #random_country_sub_region = country_sub_regions(answer)
      #puts random_country_sub_region
      puts answer["subregion"]

    answer2 = gets.chomp()

    if answer2 == answer["name"]#get_country_from_calling_code(answer, random_country_calling_code).downcase()
    round1_points = 5
    puts "Well done! You have #{round1_points} points!"
    else puts "Wrong answer. Here is your third clue. \n\nThese are the border countries. What is the country?"
      #random_country_border_countries = country_border_country(answer)
      #puts random_country_border_countries
      puts answer["borders"]

        answer3 = gets.chomp()

          if answer3 == answer["name"]#get_country_from_calling_code(answer, random_country_calling_code).downcase()
            round1_points = 3
            puts "Well done! You have #{round1_points} points!"
          else puts "Wrong answer. Here is your last clue. \n\nThis is the capital city. What is the country?"
            puts answer["capital"]
            answer4 = gets.chomp()

            if answer4 == answer["name"]
              round1_points = 1
              puts "Well done! You have #{round1_points} points!"
            else puts "Wrong answer. The country is:"
              puts answer["name"]
              round1_points = 0
              puts "You have #{round1_points} points"
            end

          end

      end

  end
  puts "Round 2! Here is your first clue. Which country uses this calling code?"
  answer = random_country_generator(COUNTRIES)
  puts answer["callingCodes"]
  #random_country_calling_code = country_calling_codes(answer)
  #puts random_country_calling_code
  answer1 = gets.chomp()

  if answer1 == answer["name"]#get_country_from_calling_code(answer, random_country_calling_code).downcase()
  round2_points = round1_points + 10
  puts "Well done! You have #{round2_points} points!"
  else
  puts "Wrong answer. Here is your second clue. \n\nThis is the country's sub region. What is the country?"
  #random_country_sub_region = country_sub_regions(answer)
  #puts random_country_sub_region
  puts answer["subregion"]
  answer2 = gets.chomp()

    if answer2 == answer["name"]#get_country_from_calling_code(answer, random_country_calling_code).downcase()
    round2_points = round1_points + 5
    puts "Well done! You have #{round1_points} points!"
    else puts "Wrong answer. Here is your third clue. \n\nThese are the border countries. What is the country?"
      #random_country_border_countries = country_border_country(answer)
      #puts random_country_border_countries
      puts answer["borders"]

      answer3 = gets.chomp()
        if answer3 == answer["name"]#get_country_from_calling_code(answer, random_country_calling_code).downcase()
          round2_points = round1_points + 3
          puts "Well done! You have #{round2_points} points!"
        else puts "Wrong answer. Here is your last clue. \n\nThis is the capital city. What is the country?"
          puts answer["capital"]
          answer4 = gets.chomp()

          if answer4 == answer["name"]
            round2_points = round1_points + 1
            puts "Well done! You have #{round2_points} points!"
          else puts "Wrong answer. The country is:"
            puts answer["name"]
            round2_points = round1_points + 0
            puts "You have #{round2_points} points"
          end

        end

    end

  puts "Round 3! Here is your first clue. Which country uses this calling code?"
  answer = random_country_generator(COUNTRIES)
  puts answer["callingCodes"]
  #random_country_calling_code = country_calling_codes(answer)
  #puts random_country_calling_code
  answer1 = gets.chomp()

  if answer1 == answer["name"]#get_country_from_calling_code(answer, random_country_calling_code).downcase()
  round3_points = round2_points + 10
  puts "Well done! You have #{round3_points} points!"
  else
  puts "Wrong answer. Here is your second clue. \n\nThis is the country's sub region. What is the country?"
  #random_country_sub_region = country_sub_regions(answer)
  #puts random_country_sub_region
  puts answer["subregion"]
  answer2 = gets.chomp()

    if answer2 == answer["name"]#get_country_from_calling_code(answer, random_country_calling_code).downcase()
    round3_points = round2_points + 5
    puts "Well done! You have #{round3_points} points!"
    else puts "Wrong answer. Here is your third clue. \n\nThese are the border countries. What is the country?"
      #random_country_border_countries = country_border_country(answer)
      #puts random_country_border_countries
      puts answer["borders"]
      answer3 = gets.chomp()

        if answer3 == answer["name"]#get_country_from_calling_code(answer, random_country_calling_code).downcase()
          round3_points = round2_points + 3
          puts "Well done! You have #{round3_points} points!"
        else puts "Wrong answer. Here is your last clue. \n\nThis is the capital city. What is the country?"
          puts answer["capital"]
          answer4 = gets.chomp()

          if answer4 == answer["name"]
            round3_points = round2_points + 1
            puts "Well done! You have #{round3_points} points!"
          else puts "Wrong answer. The country is:"
            puts answer["name"]
            round3_points = round2_points + 0
            puts "Your final score is #{round3_points}."
          end

        end

    end

  end

puts "\n\n" #line break


#Move majority of this instruction into functions - but lots of if statements wrapped together. Will this matter?
#How to change case for answers - .downcase?
#How to save score and show leaderboard?
#How to show an island ie no border countries. Tried with empty array but got errors.

end
end
end
