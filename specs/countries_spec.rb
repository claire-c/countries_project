require_relative('../country_functions')
require_relative('../countries_data')
require('minitest/autorun')

class CountriesTest < MiniTest::Test

  def setup
    @countries = COUNTRIES
  end

  def test_gives_an_array_of_all_country_names
    names = country_names(@countries)
    assert_equal(247, names.length)
  end

def test_random_country_generator
  random_country = random_country_generator(@countries)
  assert_equal("capital", random_country.keys[1])
end

# def test_country_calling_codes
#   calling_codes = country_calling_codes(@countries)
#   assert_equal("93", calling_codes)
# end
end
