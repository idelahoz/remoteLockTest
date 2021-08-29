class Person

  def initialize(attributes)
    puts attributes.inspect
    @first_name = attributes["first_name"]
    @city = attributes["city"]
    @birth_date = attributes["birthdate"]
  end

  def to_s
    "#{first_name}, #{city}, #{birth_date}"
  end

  attr_reader :first_name, :city, :birth_date
end