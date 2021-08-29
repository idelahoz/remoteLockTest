require 'date'

class Person

  CITY_MAPPING = {
    "LA" => "Los Angeles",
    "NYC" => "New York City"
  }

  def initialize(attributes)
    @first_name = attributes["first_name"]
    @city = attributes["city"]
    @birth_date = Date.parse(attributes["birthdate"])
  end

  def to_s
    "#{first_name}, #{map_city(city)}, #{birth_date.strftime('%-m/%-d/%Y')}"
  end
  
  attr_reader :first_name, :city, :birth_date

  private

  def map_city(city)
    CITY_MAPPING[city] || city
  end
end
