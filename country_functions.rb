def country_names(countries)
  names = []
  for country in countries
    names << country["name"]
  end
  return names
end

def random_country_generator(countries)
  subject_country = countries.sample()
  #Subject country has one country with all associated hashes
  #This is one array with one country in it
return subject_country
end

def round1_clue1(answer, answer1)
  if answer1 == answer["name"]#get_country_from_calling_code(answer, random_country_calling_code).downcase()
    round1_points = 10
    puts "Well done! You have #{round1_points} points!"
  else
    puts "Wrong answer. Here is your second clue. \n\nThis is the country's sub region. What is the country?"
    #random_country_sub_region = country_sub_regions(answer)
    #puts random_country_sub_region
    puts answer["subregion"]
end
end

def round1_clue2(answer, answer2)
  if answer2 == answer["name"]#get_country_from_calling_code(answer, random_country_calling_code).downcase()
  round1_points = 5
  puts "Well done! You have #{round1_points} points!"
  else puts "Wrong answer. Here is your third clue. \n\nThese are the border countries. What is the country?"
    #random_country_border_countries = country_border_country(answer)
    #puts random_country_border_countries
    puts answer["borders"]
  end
end
# def country_calling_codes(countries)
# return countries["callingCodes"]#random_country_generator(countries)["callingCodes"]
# #This is the calling code from the random country
# end


# def get_country_from_calling_code(countries, country_calling_codes)
#   match = nil
#   for country in countries
#     match = country if country["callingCodes"] == country_calling_codes
#   end
#   return match["name"]
# #  I need a loop to run through the array and find the calling code and then return the country name
# end
#
# def country_sub_regions(countries)
#   return random_country_generator(countries)["subregion"]
# end
#
# def country_border_country(countries)
# return random_country_generator(countries)["borders"]
# end
