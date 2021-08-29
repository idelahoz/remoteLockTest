require './app/lib/person'

class PeopleParser
  SEPARATOR = ','

  def initialize(input)
      @input = input
  end

  def people
    get_people_objects(CSV.parse(input, col_sep: separator, headers: true, strip: true).map(&:to_hash))
  end

  def separator
    raise NotImplementedError
  end

  protected

  attr_reader :input

  def get_people_objects(people_info)
    people_info.map { |person_info| Person.new(person_info) }
  end
end