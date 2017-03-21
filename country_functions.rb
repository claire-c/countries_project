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

def country_calling_codes(countries)
return random_country_generator(countries)["callingCodes"]
#This is the calling code from the random country
end



def get_country_from_calling_code(countries, country_calling_codes)
  match = nil
  for country in countries
    match = country if country["callingCodes"] == country_calling_codes
  end
  return match["name"]
#  I need a loop to run through the array and find the calling code and then return the country name
end
